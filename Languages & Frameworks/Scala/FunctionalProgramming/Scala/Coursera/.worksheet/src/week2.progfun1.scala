package week2

object progfun1 {;import org.scalaide.worksheet.runtime.library.WorksheetSupport._; def main(args: Array[String])=$execute{;$skip(98); 
  def gcd(a: Int, b: Int): Int =
  	if (b == 0) a else gcd(b,a%b);System.out.println("""gcd: (a: Int, b: Int)Int""");$skip(10); val res$0 = 

	gcd(1,);System.out.println("""res0: <error> = """ + $show(res$0))}
}
