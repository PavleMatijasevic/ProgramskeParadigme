import org.apache.spark.{SparkConf, SparkContext}

import java.util.Scanner

object MainParni {

  def main(args: Array[String]): Unit = {
    val conf = new SparkConf()
      .setAppName("ParniKvadrati")
      .setMaster("local[4]")
    val sk = new SparkContext(config = conf)

    val sc = new Scanner(System.in)
    val n = sc.nextInt()
    val niz = (2 to n by 2).toArray
    val nizRDD = sk.parallelize(niz)
    val nizOut = nizRDD.map(t => t*t).collect()

  sk.stop()
    for(elem <- nizOut)
      print(elem + " ")

  }



}
