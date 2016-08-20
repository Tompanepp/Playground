package RPC;

import com.rabbitmq.client.*;
import com.rabbitmq.client.AMQP.BasicProperties;

import java.io.IOException;
import java.util.concurrent.TimeoutException;

/**
 * Created by t2p on 2016/08/17.
 */
public class RPCServer {

    private static final String RPC_QUEUE_NAME = "rpc_queue";

    private static int fib(Integer n) {
        if (n == 0) return n;
        if (n == 1) return n;
        else return fib(n - 1) + fib(n - 2);
    }

    public static void main(String[] args) {
        ConnectionFactory connectionFactory = new ConnectionFactory();
        connectionFactory.setHost("localhost");

        Connection connection = null;
        Channel channel = null;

        try {
            connection = connectionFactory.newConnection();
            channel = connection.createChannel();
            channel.queueDeclare(RPC_QUEUE_NAME, false, false, false, null);
            channel.basicQos(1);
            QueueingConsumer queueingConsumer = new QueueingConsumer(channel);
            channel.basicConsume(RPC_QUEUE_NAME,false, queueingConsumer);
            System.out.println(" [X] Awaiting RPC requests");

            while (true) {
                try {
                    QueueingConsumer.Delivery delivery = queueingConsumer.nextDelivery();
                    BasicProperties props = delivery.getProperties();
                    BasicProperties replyProps = new BasicProperties
                            .Builder()
                            .correlationId(props.getCorrelationId())
                            .build();

                    String message = new String(delivery.getBody());
                    int n = Integer.parseInt(message);
                    System.out.println("[.] fib ( " + message + ")");
                    String response = "" + fib(n);
                    channel.basicPublish("", props.getReplyTo(), replyProps, response.getBytes());
                    channel.basicAck(delivery.getEnvelope().getDeliveryTag(), false);
                    System.out.println("Response of "  + response + " sent with correlationId of " + replyProps.getCorrelationId());
                } catch (InterruptedException e) {
                    System.out.println(e.getMessage());
                }
            }
        } catch (IOException|TimeoutException e) {
            System.out.println(e.getMessage());
        }
    }
}
