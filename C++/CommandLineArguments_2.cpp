#include <stdio.h> 
#include <string.h> 

#include <iostream>
using namespace std;//For system("Pause")

int main(int argc, char *argv[])
{
  /*
   * Look for -a or -d in command line
   */
  int i;
  
  for (i = 1; i < argc; i++)
  {
    if (argv[i][0] == '-')
      if (argv[i][1] == 'a')
        puts ("Found -a");
      else if (argv[i][1] == 'd')
        puts ("Found -d");
      else printf ("Unknown switch %s\n", argv[i]);
    else if (strcmp(argv[i], "name") == 0)
      puts ("Found name");
  }
  system("Pause");
  return(0);
}

/*
 * Program output when run as
  myprog.exe -a -b -d name
  
  Found -a
  Unknown switch -b
  Found -d
  Found name
*/
