//Imperative Version
var i = 0
while (i < args.length) {
  if (i != 0) {
    print(" ")
  }
  print(args(i))
  i += 1
}

println()
//Functional
//Passing function literal with one parameter "args"
//The body of the function calls println(args) with args as the parameter
args.foreach(args => print(args + " ")) //Datatype for arg inferred by the compiler
println()
args.foreach((args: String) => print(args + " ")) //Datatype for "arg" is explicit here

/*If a function literal consists of one statement that takes a single argument, you need not explicitly
name and specify the argument.11 Thus, the following code also works:*/
//This is called: partially applied function
args.foreach(print)


for (arg <- args)
  print(arg + " ")
//arg is a val(The default scala option)
//A new arg val is created on each iteration
//<- : in
//For arg in args
//args is an array

//Nested "looping"
val filesHere = (new java.io.File(".")).listFiles

def fileLines(file: java.io.File) =
  scala.io.Source.fromFile(file).getLines().toList

def grep(pattern: String) =
for (
    //First iteration
    file <- filesHere
    if file.getName.endsWith(".scala");
    //Second inner iteration
    line <- fileLines(file)
    if line.trim.matches(pattern)
  ) println(file + ": " + line.trim)

grep(".*scala.*")
