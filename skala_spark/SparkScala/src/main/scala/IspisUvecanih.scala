import org.apache.spark.{SparkConf, SparkContext}

import java.util.Scanner


object IspisUvecanih {
  def main(args: Array[String]): Unit = {

    val conf = new SparkConf()
      .setAppName("Uvecani")
      .setMaster("local[4]")

    val sk = new SparkContext(config = conf)

    val sc = new Scanner(System.in)
    val n = sc.nextInt()

    val niz = (1 to n by 1).toArray

    val nizRDD = sk.parallelize(niz)
    //val nizRDD1 = sk.parallelize(niz)
    val nizOut1 = nizRDD.map(t => t + 1).collect()
   // val nizOut2 = nizRDD1.filter(_ % 2 == 0)

    println("Originalan niz je: ")
  for(element <- niz)
    print(element + " ")


  sk.stop()
    println("Uvecan svaki za 1:")
  for(elem <- nizOut1)
    print(elem + " ")
  //println("Svi parni su: ")
  //for(e <- nizOut2)
  //  print(e + " ")

  }

}
