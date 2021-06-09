import org.apache.spark.{SparkConf, SparkContext}
import org.apache.spark.rdd.RDD._

import scala.compat.Platform

object Poklon {

  def main(args: Array[String]): Unit = {

    val conf = new SparkConf()
      .setAppName("Poklon")
      .setMaster("local[4]")
    val sk = new SparkContext(config = conf)

   val trojePr = sk.textFile("zaposleni.txt")
     .filter(_.contains("IT_PROG"))
     .map(linija =>{
       val niz = linija.split(" ")
       (niz(0), niz(1), niz(3))
     })
     .takeSample(false ,3, Platform.currentTime)


    sk.stop()

    println("Troje odabranih su: ")
    trojePr
      .foreach(programer => {
        println("Ime i prezime:" + programer._1 + " " + programer._2 + '\n'+"Mejl:"+programer._3.toLowerCase()+"@firma.com")


      })

  }

}
