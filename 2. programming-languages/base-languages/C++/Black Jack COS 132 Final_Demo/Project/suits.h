#ifndef SUITS_H
#define SUITS_H

#include <iostream>
#include <string>

using namespace std;

/**
 * Gets a string for the corresponding card.
 *
 * @param cardValue The value of the card in a 52-card deck, ranging from 0 to 51
 *
 * @return The string of the card suite
 */
string getCard(int cardValue)
{
	int type = cardValue / 13.0;
	cardValue = (cardValue % 13) + 2;
	if(type < 1)
	{
		switch (cardValue)
		{
			case 2 : return "Two_of_Spades";
			case 3 : return "Three_of_Spades";
			case 4 : return "Four_of_Spades";
			case 5 : return "Five_of_Spades";
			case 6 : return "Six_of_Spades";
			case 7 : return "Seven_of_Spades";
			case 8 : return "Eight_of_Spades";
			case 9 : return "Nine_of_Spades";
			case 10 : return "Ten_of_Spades";
			case 11 : return "Jack_of_Spades";
			case 12 : return "Queen_of_Spades";
			case 13 : return "King_of_Spades";
			case 14 : return "Ace_of_Spades";
		}
	}
	else if(type < 2)
	{
		switch (cardValue)
		{
			case 2 : return "Two_of_Hearts";
			case 3 : return "Three_of_Hearts";
			case 4 : return "Four_of_Hearts";
			case 5 : return "Five_of_Hearts";
			case 6 : return "Six_of_Hearts";
			case 7 : return "Seven_of_Hearts";
			case 8 : return "Eight_of_Hearts";
			case 9 : return "Nine_of_Hearts";
			case 10 : return "Ten_of_Hearts";
			case 11 : return "Jack_of_Hearts";
			case 12 : return "Queen_of_Hearts";
			case 13 : return "King_of_Hearts";
			case 14 : return "Ace_of_Hearts";
		}
	}
	else if(type < 3)
	{
		switch (cardValue)
		{
			case 2 : return "Two_of_Diamonds";
			case 3 : return "Three_of_Diamonds";
			case 4 : return "Four_of_Diamonds";
			case 5 : return "Five_of_Diamonds";
			case 6 : return "Six_of_Diamonds";
			case 7 : return "Seven_of_Diamonds";
			case 8 : return "Eight_of_Diamonds";
			case 9 : return "Nine_of_Diamonds";
			case 10 : return "Ten_of_Diamonds";
			case 11 : return "Jack_of_Diamonds";
			case 12 : return "Queen_of_Diamonds";
			case 13 : return "King_of_Diamonds";
			case 14 : return "Ace_of_Diamonds";
		}
	}
	else if(type < 4)
	{
		switch (cardValue)
		{
			case 2 : return "Two_of_Clubs";
			case 3 : return "Three_of_Clubs";
			case 4 : return "Four_of_Clubs";
			case 5 : return "Five_of_Clubs";
			case 6 : return "Six_of_Clubs";
			case 7 : return "Seven_of_Clubs";
			case 8 : return "Eight_of_Clubs";
			case 9 : return "Nine_of_Clubs";
			case 10 : return "Ten_of_Clubs";
			case 11 : return "Jack_of_Clubs";
			case 12 : return "Queen_of_Clubs";
			case 13 : return "King_of_Clubs";
			case 14 : return "Ace_of_Clubs";
		}
	}
	return "";
}


/**
 * Prints a corresponding card to the screen.
 *
 * @param cardValue The value of the card in a 52-card deck, ranging from 0 to 51
 */
void displayCard(int cardValue)
{
	cout << getCard(cardValue);
}

#endif
