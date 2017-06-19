lazy val bar = (project in file("/hello/bar")).
  settings(
    name := "hello",
    version := "3.0",
    scalaVersion := "2.11.7")