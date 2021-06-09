import org.apache.spark.{SparkConf, SparkContext}

import java.util.Scanner

object SumaPrvih {

  def main(args: Array[String]): Unit = {

    val conf = new SparkConf()
      .setAppName("SumaPrvih")
      .setMaster("local[4]")
    val sk = new SparkContext(config = conf)

    val sc = new Scanner(System.in)
    val n = sc.nextInt()

    var doSada : Double = 0

    for(i <- 1 to n by 1){
      doSada = doSada + (1.0/i)
    }
    println("Suma harmonijskog reda je:" + doSada)


    sk.stop()


  }


}
