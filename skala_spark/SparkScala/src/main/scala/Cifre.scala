import org.apache.spark.{SparkConf, SparkContext}

object Cifre {


  def main(args: Array[String]): Unit = {
    val conf = new SparkConf()
      .setAppName("Cifre")
      .setMaster("local[4]")
    val sk = new SparkContext(config = conf)

    val datRDD = sk.textFile("cifre.txt")
      .flatMap(_.split(" "))
      .map(broj => (broj, 1))
      .reduceByKey((_+_))
      .sortByKey()
      .saveAsTextFile("brojac_cifara.txt")


    sk.stop()


  }

}
