package example

import scala.io.Source
import com.fasterxml.jackson.databind.ObjectMapper
import com.fasterxml.jackson.module.scala.DefaultScalaModule

object SimpleExampleWithJackson {
  def main(args: Array[String]): Unit = {
    val mapper =  new ObjectMapper();
    mapper.registerModule(DefaultScalaModule)

    val json = FileDownloader.downloadFileFromnternet("https://s3-eu-west-1.amazonaws.com/yoco-testing/tests.json").mkString
    val data = mapper.readValue(json, classOf[List[Deal]])

    println(data)
  }

  def playerAWins(deal: Deal): Boolean = ??? //apply the rules
}


object FileDownloader {
  def downloadFileFromnternet(url: String) = Source.fromURL(url)
}