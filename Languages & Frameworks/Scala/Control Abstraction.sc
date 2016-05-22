
object FileMatcher {

  //Should be private def =.... but the worksheet fails(not sure why)
  def filesHere = new java.io.File(".").listFiles

  def filesEnding(query: String) =
    for (file <- filesHere; if file.getName.endsWith(query))
      yield file

  def fileContaining(query: String) =
    for (file <- filesHere; if file.getName.contains(query))
      yield file

  def filesReqex(query: String) =
    for (file <- filesHere; if file.getName.matches(query))
      yield file

  //Lots of repetition up here. The only thing changing is the method after "file.getName"

}

object FileMathcherImproved {

  def filesHere = new java.io.File(".").listFiles()

  def filesMatching(query: String, matcher:(String, String) => Boolean) =
    for(file <- filesHere; if matcher(file.getName, query))
      yield file

  def filesEnding(query: String)  =
    filesMatching(query, _.endsWith(_))
  // _.endsWith(_) AND
  // (fileName: String, query: String) => fileName.endsWith(query)
  //filesMatching(query, (fileName, query) => fileName.endsWith(query))
  // This doesn't work, why?: filesMatching(query, (_, _) => _.endsWith(_))
  //filesMatching(query,_.endsWith(_))
  // are equivalent

  def fileContaining(query: String) =
    filesMatching(query, _.contains(_))

  def filesReqex(query: String) =
    filesMatching(query, _.matches(_))
}
