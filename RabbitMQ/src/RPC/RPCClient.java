package RPC;

import com.rabbitmq.client.*;

import java.lang.String;

import java.io.IOException;
import java.util.concurrent.TimeoutException;

import com.rabbitmq.client.AMQP.BasicProperties;

/**
 * Created by Praise on 2016/08/18.
 */
public class RPCClient {

    private Connection connection;
    private Channel channel;
    private String requestQueue = "rpc_queue";
    private java.lang.String replyQueue;
    private QueueingConsumer consumer;

    public RPCClient() throws Exception {
        ConnectionFactory factory = new ConnectionFactory();
        factory.setHost("localhost");
        try {
            connection = factory.newConnection();
            channel = connection.createChannel();

            replyQueue = channel.queueDeclare().getQueue(); //
            consumer = new QueueingConsumer(channel);
            channel.basicConsume(replyQueue, true, consumer); //What my consumer listens to
        } catch (IOException | TimeoutException e) {
            System.out.println(e.getMessage());
        }
    }

    public String call(String message) throws Exception {
        String response = null;
        String corrId = java.util.UUID.randomUUID().toString();

        BasicProperties props = new BasicProperties
                .Builder()
                .correlationId(corrId)
                .replyTo(replyQueue)
                .build();

        channel.basicPublish("", requestQueue, props, message.getBytes());

        while (true) {
            QueueingConsumer.Delivery delivery = consumer.nextDelivery();
            if (delivery.getProperties().getCorrelationId().equals(corrId)) {
                response = new String(delivery.getBody());
                break;
            }
        }

        return response;
    }

    public void close() throws Exception{
        connection.close();
    }

    public static void main(String[] args) {
        RPCClient fibonacciRpc = null;
        String response = null;

        try {
            fibonacciRpc = new RPCClient();
            System.out.println("[x] Requesting fib(" + args[0] + ")" );
            response = fibonacciRpc.call(args[0]);
            System.out.println("[.] Got '" + response + "'");
        }catch (Exception e){
           e.printStackTrace();
        }
        finally {
            if(fibonacciRpc != null){
                try {
                    fibonacciRpc.close();
                }
                catch (Exception ignore){

                }
            }
        }
    }
}
