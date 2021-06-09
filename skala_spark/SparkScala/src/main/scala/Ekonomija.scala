import org.apache.spark.{SparkConf, SparkContext}

import java.util.Scanner
import scala.compat.Platform

class Ekonomija {
  def main(args: Array[String]): Unit = {

    val conf = new SparkConf()
      .setAppName("Ekonomija")
      .setMaster("local[4]")
    val sk = new SparkContext(config = conf)

    val sc = new Scanner(System.in)
    val ime = sc.nextLine()
    val datRDD = sk.textFile("uredjaji.txt")
      .filter(linija =>
        (linija.contains(ime)))
      .map(linija =>{
        val niz = linija.split(" ")
        (niz(0), niz(2))
      })
      .takeSample(false, 5,Platform.currentTime)

   // println("Odabrana je marka: "+ime)

    println("A ovo je 5 random uredjaja: ")
    datRDD.foreach(t => t._2)

    sk.stop()



  }


}
