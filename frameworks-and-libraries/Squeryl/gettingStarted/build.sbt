lazy val root = (project in file(".")).
  settings(
    name := "gettingStarted",
    version := "1.0",
    scalaVersion := "2.11.8"
  )
  libraryDependencies ++= Seq(
    "org.squeryl" %% "squeryl" % "0.9.5-6",
    mysqlDriver
  )

  val mysqlDriver = "mysql" % "mysql-connector-java" % "5.1.10"
