import org.apache.spark.{SparkConf, SparkContext}

object SkalarniProizvod {


  def main(args: Array[String]): Unit = {

  val conf = new SparkConf()
    .setAppName("SkalarniProizvod")
    .setMaster("local[4]")
  val sk = new SparkContext(config = conf)

    val dat1RDD = sk.textFile("/home/pavle/Desktop/fax/SparkScala/src/main/scala/dat1.txt")
      .flatMap(_.split(","))
      .map(_.toInt)

    val dat2RDD = sk.textFile("/home/pavle/Desktop/fax/SparkScala/src/main/scala/dat2.txt")
      .flatMap(_.split(","))
      .map(_.toInt)

    val skalarniProizvod = dat1RDD.zip(dat2RDD)
      .map(par => par._1 * par._2)
      .reduce((a, b) => a+b)



    sk.stop()
    println("Skalarni Proizvod je: ")
    println(skalarniProizvod)
  }


  }


