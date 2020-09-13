def bubblesort[A <% Ordered[A]](list: List[A]): List[A] = {
  def sort(as: List[A], bs: List[A]): List[A] =
    if (as.isEmpty) bs
    else bubble(as, Nil, bs)

  def bubble(as: List[A], zs: List[A], bs: List[A]): List[A] = as match {
    case h1 :: h2 :: t =>
      if (h1 > h2) {
          println(s"as = $as :: zs = $zs :: bs = $bs")
          println(s"h1 = $h1 :: h2 = $h2 :: t = $t")
          println(s"bubble(${h1 :: t}, ${h2 :: zs}, ${bs})")
          println()
          bubble(h1 :: t, h2 :: zs, bs)

      }
      else {
          println(s"as = $as :: zs = $zs :: bs = $bs")
          println(s"h1 = $h1 :: h2 = $h2 :: t = $t")
          println(s"bubble(${h2 :: t}, ${h1 :: zs}, ${bs})")
          println()
          bubble(h2 :: t, h1 :: zs, bs)
      }
    case h1 :: Nil => {
        println(s"as = $as :: zs = $zs :: bs = $bs")
        println(s"sort(${zs}, ${h1 :: bs})")
        sort(zs, h1 :: bs)
    }
  }

  sort(list, Nil)
}

println(bubblesort(List(1,5,2,3)))