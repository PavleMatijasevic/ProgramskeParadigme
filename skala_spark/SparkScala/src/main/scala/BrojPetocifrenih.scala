import org.apache.spark.{SparkConf, SparkContext}

object BrojPetocifrenih {

  def main(args: Array[String]): Unit = {

    val conf = new SparkConf()
      .setAppName("BrojPetocifrenih")
      .setMaster("local[4]")
    val sk = new SparkContext(config = conf)

    val datotekaRDD  = sk.textFile("/home/pavle/Desktop/fax/SparkScala/src/main/scala/brojevi.txt")

    val brojPetocifrenih = datotekaRDD.filter(_.length() == 5).count()

  sk.stop()
  println("Broj petocifrenih je: ")
  println(brojPetocifrenih)

  }



}
