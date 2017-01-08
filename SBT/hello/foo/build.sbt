lazy val foo = (project in file("./hello/foo")).
  settings(
    name := "hello",
    version := "2.0",
    scalaVersion := "2.11.7")