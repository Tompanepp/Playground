#include "CardTools.h"
#include <cstdlib>
#include <fstream>
#include <time.h>
#include <iostream>
using namespace std;


/*
    Calculates the value of a card (0 - 51) as used in Blackjack.
    @param card The value (0 - 51) of the card
*/

short getCardValue(short card)
{
  if((card % 13) < 9 && (card % 13 ) >= 0)
  {
    return ((card % 13) + 2);
  }
  else if((card % 13) >= 9 && (card % 13) <=11 )
  {
    return 10;
  }
  else if((card) % 13 == 12 );
  {
    return 11;
  }


}

/*
    Sorts the array in asceding order.
    sortDeck function
*/
void sortDeck(short deck[], short deckSize, short startIndex)
{
	for(startIndex; startIndex < deckSize; startIndex++)
	{

		short minIndex = startIndex;

		for(short j = startIndex + 1; j < deckSize; j++)
		{

			if(deck[minIndex] > deck[j])
			{

				minIndex = j;

			}

		}

		short temp = deck[startIndex];

		deck[startIndex] = deck[minIndex];

		deck[minIndex] = temp;

	}
	
	
}
/*
    Inserts ards randomly into the deck.
*/
void shuffleCards(short deck[], short deckSize)	
{
    time_t seconds;
    time(&seconds);
    srand(seconds);
    
   
    for( short i = 0;i < deckSize - 1;++i)
    {
         deck[i] = 0 + rand() % 51;
    }
    for(short j = 0;j < deckSize - 1;++j)
    {
       short r = 0 + rand() % 51;;
       short temp = deck[j];
       deck[j] = deck[r];
       deck[r] = temp;
    }
 
}
/*
    Reads the deck from a specific file into the array.
*/
bool readDeck(char fileName[], short deck[], short deckSize)
{

    ifstream inputFile;
    inputFile.open(fileName);

    if(!inputFile)
    {
        shuffleCards(deck, deckSize);

        return false;
    }
    else
    {
         int i = 0;

        while(i < deckSize)
        {
            inputFile >> deck[i];
            i++;
        }

        return true;
    }

}
/*

    Calculates the best possible score from your hand with a given number of Aces lower or equal to 21.
*/
void calculateAlternateTotals(short aceCount, short score, short alternateTotals[], short alternateSize)
{

     for(short i = 0; i < aceCount;i++)
     {
        if(score > 21)
        {
            score = (score - 11) + 1;
            alternateTotals[i] = score;
        }

     }


}


/*
    Determines the winner for the current game with the status determined by getStatus
    The function returns -1 if the dealer wins, 0 on a draw and 1 if the player wins.
*/
short findWinner(short playerScore, short playerStatus, short dealerScore, short dealerStatus)
{
   if(playerStatus != -1 && dealerStatus != -1)
   {
       if(playerScore > dealerScore)
       {
           return 1;
       }
       else
       {
           return -1;
       }

       if(playerScore == dealerScore)
       {
           return 0;
       }
   }
   else if(playerStatus == -1 && dealerStatus == -1)
   {
       return 0;
   }

   if(playerStatus == -1)
   {
       return -1;
   }
   else if(dealerStatus == -1)
   {
       return 1;
   }
}
/*
     Calculates the best possible score from your hand with a given number of Aces lower or equal to 21.
*/
short getBestScore(short aceCount, short score)
{
   short largest = 0;
   bool swap = false;
   short alternateScores [aceCount];

   calculateAlternateTotals(aceCount,score,alternateScores,aceCount);

   for(short i = 0;i < aceCount;++i)
   {
       if(alternateScores[i] > largest  && alternateScores[i] <= 21)
       {
           largest = alternateScores[i];
           swap = true;
       }

   }

   if(swap = true)
   {
       return largest;
   }
   else
   {
       return score;
   }
}

/*
    Gets the current status based on the number of aces and the score.
    -1 = bust,1 = blacjeck,0 normal hand
*/
short getStatus(short aceCount, short score)
{
    short bestScore = getBestScore(aceCount,score);

    if(bestScore > 21)
    {
        return -1;
    }
    else if(bestScore <= 20)
    {
        return 0;
    }
    else
    {
        return 1;
    }
}

