import org.apache.spark.{SparkConf, SparkContext}

object Greske {

  def main(args: Array[String]): Unit = {
    val conf = new SparkConf()
      .setAppName("Greske")
      .setMaster("local[4]")
    val sk = new SparkContext(config = conf)

    val datRDD = sk.textFile("log.txt")
      .filter(linija =>
        (linija.contains("[error]")) && (linija.contains("spark")))
      .count()
    println("Broj linija u kojima se javlja greska i spark: "+ datRDD)


    sk.stop()

  }

}
