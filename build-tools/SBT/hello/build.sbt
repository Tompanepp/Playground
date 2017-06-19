//Implied imports
import sbt._
import Process._
import Keys._

/*
	SBT generates
		key-value map
			describing a project

	Summary: A build definition defines
	  Projects
	    with a list of Setting[T], where a Setting[T] is a
	      transformation affecting
	        sbt’s map of key-value pairs
	          and T is the type of each value.
 */

 /*
  Defines Projects
    Project has list of Settings
      Settings are Scala expressions


  Keys are an instance of SettingKey[T], TaskKey[T] or InputKey[T]
  := is a method on these types
    returns Setting[T]
    e.g.
    lazy val root = (project in file(".")).
      settings(
        name.:=("hello")
      )

 */

/*
	Key values can be different on Scope
		on the following axis
			Project
			Configurations
			Task
*/
lazy val root = (project in file(".")).
	settings(
		name := "hello",
		version := "1.0",
		scalaVersion := "2.11.7")

lazy val bar = (project in file("./hello/bar")).
	settings(
		name := "hello",
		version := "3.0",
		scalaVersion := "2.11.7")


/*
  % is a method that builds ModuleId objects from strings
  revision does not have to be a static number, it can be latest.integration, 2.9.+, [1.0.
  groupID %% artifactID : %% will get the dependency for your scala version (assuming it exists)
 */
/*
	libraryDependencies += "groupID" % "artifactID" % "revision"
	libraryDependencies += "groupID" % "artifactID" % "revision" % "test"/ Test : Available only for Test Configuration
		Mostly used for test dependencies such as ScalaTest, ScalaCheck


 */

