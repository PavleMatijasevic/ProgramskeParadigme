import org.apache.spark.{SparkConf, SparkContext}

import java.io.{File, PrintWriter}

object Transakcije {


  def main(args: Array[String]): Unit = {

    val conf = new SparkConf()
      .setAppName("Transakcije")
      .setMaster("local[4]")

    val sk = new SparkContext(config = conf)

    val datRDD = sk.textFile("/home/pavle/Desktop/fax/SparkScala/src/main/scala/uredjaji.txt")
      .map(linija => {
        val niz = linija.split(" ")
        (niz(0), niz.drop(1).mkString(" "))
      })
      .groupByKey()
      .foreach(par =>{
        val izlazna = new PrintWriter(new File(par._1.toLowerCase()+".txt"))
        izlazna.write("-------" + par._1 + "------\n")
        par._2.foreach(poruka =>{
          izlazna.append(poruka + "\n")
        })
        izlazna.close()
      })


  sk.stop()
  }

}
