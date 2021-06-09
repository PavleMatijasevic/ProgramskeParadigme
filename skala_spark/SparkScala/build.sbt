name := "SparkScala"

version := "0.1"

scalaVersion := "2.12.13"

libraryDependencies ++={
  val sparkVer = "2.4.0"
  Seq(
    "org.apache.spark" %% "spark-core" % sparkVer
  )
}
