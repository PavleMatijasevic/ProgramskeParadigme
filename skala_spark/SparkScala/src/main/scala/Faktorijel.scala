import org.apache.spark.{SparkConf, SparkContext}

import java.util.Scanner

object Faktorijel {

  def main(args: Array[String]): Unit = {

    val conf = new SparkConf()
      .setAppName("Faktorijel")
      .setMaster("local[4]")
    val sk = new SparkContext(config = conf)

    val sc = new Scanner(System.in)

    val n = sc.nextInt()
    var doSada = 1
    for(i <- 1 to n by 1){
      println(i * doSada)
      doSada = doSada * i
    }



  sk.stop()

  }


}
