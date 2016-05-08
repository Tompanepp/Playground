using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ClassTest2
{
    class Program
    {
        static int CountWords(string Paragraph)
        {
            int L = Paragraph .Length;
            string[] Words = Paragraph.Split();
            int NumOfWords = Words.Count();
            return NumOfWords;
            
        }
        static int CountSentences(string Paragraph)
        {
            string[] S = Paragraph.Split('.');
            int NumOfFu = S.Count() - 1;
            
            return NumOfFu;

        }
        static void CountLetters(string Paragraph)
        {
            string[] A = new string[] { };
            A = Paragraph.Split(' ');
            
            for (int c = 0; c < A.Length; ++c)
            {
                int T;

            }
         }
        static void Main(string[] args)
        {
            Console.WriteLine("Sentences are ended only with fullstops");
            Console.WriteLine("If a new sentence follows a fullstop, there must be a space after the fullstop");


            string Input = "";

            while (Input != "End")
            {
                Console.WriteLine("Please type in a paragraph");
                string Para = Console.ReadLine();
                if (Para == "End")
                    Console.WriteLine("Goodbye");
                
                
                Console.WriteLine("Specify the count you desire.Letters,Words or Sentences");
                string Count = Console.ReadLine();
                if (Count == "Words")
                {
                    int W = CountWords(Para );
                    Console.WriteLine("The number of words are {0}",W);
                }
                if (Count == "Letters")
                {
                    CountLetters(Para );
                }
                if (Count == "Sentences")
                {
                    int NumOfSen = CountSentences(Para );
                    Console.WriteLine("The number of sentences is : {0}",NumOfSen );
                }
                
                

                 
                
                    
                
            }

            
        }
    }
}
