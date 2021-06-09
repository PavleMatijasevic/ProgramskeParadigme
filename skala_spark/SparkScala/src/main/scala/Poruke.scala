import org.apache.spark.{SparkConf, SparkContext}

object Poruke {

  def main(args: Array[String]): Unit = {

    val conf = new SparkConf()
      .setAppName("Poruke")
      .setMaster("local[4]")
    val sk = new SparkContext(config = conf)

    val porukeRDD = sk.textFile("log.txt")
      .filter(linija =>
        (linija.contains("[warn]") || linija.contains("[info]") || linija.contains("[error]")) && (linija.contains("java")))
      .map(linija =>{
        val niz = linija.split(" ")
        (niz(0), niz.drop(1).mkString(" "))
      })
      .groupByKey()
      .collect()

  println("Broj poruka: ")
    porukeRDD.foreach(poruka =>println(" "+poruka._1 +": "+poruka._2.size))

    sk.stop()


  }


}
