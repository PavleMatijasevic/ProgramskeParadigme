import org.apache.spark.{SparkConf, SparkContext}

object BrojPojavljivanjaReci {


  def main(args: Array[String]): Unit = {
  val conf = new SparkConf()
    .setAppName("PojavljivanjeReci")
    .setMaster("local[4]")
  val sk = new SparkContext(config = conf)


    val datRDD = sk.textFile("knjiga.txt")

    val reciBrojac = datRDD
      .flatMap(_.split(" "))
      .map(rec => (rec, 1))
      .reduceByKey((_+_))
      .saveAsTextFile("brojac.txt")


    sk.stop()



  }

}
