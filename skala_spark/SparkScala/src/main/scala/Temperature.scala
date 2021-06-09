import org.apache.spark.{SparkConf, SparkContext}

object Temperature {


  def main(args: Array[String]): Unit = {

    val conf = new SparkConf()
      .setAppName("Temperature")
      .setMaster("local[4]")
    val sk = new SparkContext(config = conf)


    val temperatureRDD = sk.textFile("temperature.txt")
      .map(linija =>{
        val niz = linija.split(" ")
        (niz(3),(niz(1),niz(2),niz(4).toFloat))
      })
      .aggregateByKey((0.0, 0))((ak, vr) => (ak._1 + vr._3, ak._2 + 1),
        (a1, a2)=> (a1._1 + a2._1, a1._2 + a2._2))
      .map(st => (st._1, st._2._1/st._2._2))
      .sortByKey()
      .collect()
      .foreach(st =>println("Godina: "+st._1 + " prosecna temp je bila: "+ "%.2f".format(((st._2-32)/1.8))+" celzijusa"))


    sk.stop()


  }

}
