  def capitalizeAll(args: String *) = {
    args.map{
      arg => arg.capitalize
    }
  }

  capitalizeAll("pruse", "bob")


  class Calculator{
    val brand = "HP"
    def add (a: Int, b: Int) = a + b
  }

  val a = new Calculator

  a.brand
  a.add(1,2)


  class Calculator2(brand: String){
    val brand2 = brand
    val color = if(brand == "TI"){
      "blue"
    }
    else if(brand == "HP"){
      "black"
    }else{
      "white"
    }

    def add(a:Int, b: Int) = a + b
  }

  val calc = new Calculator2("PO")

  calc.color
  calc.brand2
  