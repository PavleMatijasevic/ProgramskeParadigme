import org.apache.spark.{SparkConf, SparkContext}

object Osiguranje {

  def main(args: Array[String]): Unit = {

    val conf = new SparkConf()
      .setAppName("Osiguranje")
      .setMaster("local[4]")
    val sk = new SparkContext(config = conf)





    sk.stop()


  }

}
