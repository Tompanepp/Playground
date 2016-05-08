#include "CardTools.cpp"
#include "suits.h"
#include <iostream>
#include <string>
#include <iomanip>
#include <cstring>
#include <fstream>


using namespace std;

const short FILE_NAME_LENGTH = 32;
const short DECK_SIZE = 52;
const short CARDS_TO_DEAL = 2;
const short ALTERNATE_SIZE = 4;

//Prototypes
void deal(short deck[], short &card, short &aces, short &score);
void beginGame(char []);
void readFile(short);
void writeToDeck(short [],short,char [],short );


int main()
{
    char userChoice;
    char name[20],response;



    cout << string(51, '*') << endl << "**" << setw(33) << "COS 132 - Blackjack" << setw(16) << "**" << endl << string(51, '*') << endl << endl;

    cout <<"Please enter your name: ";
    cin >>name;

    if(strlen(name) > 19)
    {
        do
        {
              cout <<"Please enter a shorter name: ";
              cin >>name;
        }
        while(true);

    }

    cout << "Welcome " << name<<endl;
    cout <<"----------------\n";
    do
    {
        cout << "Please press adjacent number to make a choice\n";

        cout << "1. Play a game\n"
             << "2. Read rules\n"
             << "3. View readme\n"
             << "4. Quit\n";

        cin >> userChoice;

        if(userChoice == '1')
        {
            beginGame(name);
        }
        else if(userChoice == '2')
        {
            readFile(2);
            cout << "Press enter to return to the main menu";
            cin.ignore();
            cin.get(userChoice);
        }
        else if(userChoice == '3')
        {
            readFile(3);
            cout << "Press enter to return to the main menu";
            cin.ignore();
            cin.get(userChoice);
        }
        else if(userChoice == '4')
        {
            cout << "Goodbye\n";
            exit(0);
        }
    }while(userChoice < 1 || userChoice > 4);


}
void writeToDeck(short deck[],short size,char fileName [] ,short dealtCards)
{
	ofstream outputFile(fileName);
	short i = 0;
	while(i < dealtCards)
	{
		
		outputFile << getCard(deck[i]) << " " ;
		++i;
	}
	outputFile << "\n";
	while(i < size -dealtCards )
	{
		outputFile <<getCard(deck[i]) << " ";
		++i;
	}
	
}
void readFile(short selection)
{
    string fileContent = "";
    ifstream inputFile;
    if(selection == 2)
    {
         inputFile.open("rules.txt");
    }
    else
    {
         inputFile.open("readme.txt");
    }


    while(getline(inputFile,fileContent))
    {
        cout << fileContent << "\n";
    }

}
void beginGame(char playerName[] )
{
    short deck[DECK_SIZE];
	short card = 0, winner = 0,cardsDealt = 0;
	short playerAces = 0, playerScore = 0, playerBest = 0, playerStatus;
	short dealerAces = 0, dealerScore = 0, dealerBest = 0, dealerStatus;
	bool validResponse = false;
	char response;

     while(!validResponse)
	 {
		cout << "Read deck from (f)ile or create a (r)andom deck: ";
		cin >> response;
		cin.ignore();
		if(response == 'f' || response == 'F')
		{
			bool success = false;
			while(!success)
			{
				char fileName[FILE_NAME_LENGTH];
				cout << "Please enter a file name for the input: ";
				cin.getline(fileName, FILE_NAME_LENGTH);
				success = readDeck(fileName, deck, DECK_SIZE);
				if(!success)
				{
					cout << "Could not open the specified file." << endl;
				}
			}
			validResponse = true;
		}
		else if(response == 'r' || response == 'R')
		{
			shuffleCards(deck, DECK_SIZE);
			validResponse = true;
		}
		else
		{
			cout << "Invalid response!." << endl;
		}
	}

	cout << string(27, '-') << endl << "Player" << endl << string(27, '-') << endl;
	deal(deck, card, playerAces, playerScore);
	++cardsDealt;
	deal(deck, card, playerAces, playerScore);
	++cardsDealt;
	/*playerBest = getBestScore(playerAces, playerScore);
	playerStatus = getStatus(playerAces, playerScore);*/

       cout << "(H)it or (S)tand? : ";
       cin >> response;

      while(response == 'H' || response == 'h')
      {


        deal(deck, card, playerAces, playerScore);
        ++cardsDealt;
        playerBest = getBestScore(playerAces, playerScore);
        playerStatus = getStatus(playerAces, playerScore);

        cout << "(H)it or (S)tand? : ";
        cin >> response;
	

        if(playerScore > 21)
        {
            cout << "Dealer wins!";

        }
        else if(playerScore == 21)
	{
	    cout <<playerName<<" wins!";
 	}

      }



    if(response == 'S' || response == 's')
    {
        cout << endl << endl << string(27, '-') << endl << "Dealer" << endl << string(27, '-') << endl;
        deal(deck, card, dealerAces, dealerScore);
        deal(deck, card, dealerAces, dealerScore);
        cardsDealt +=2;

        while(dealerScore <= 17)
        {
            deal(deck, card, dealerAces, dealerScore);
            ++cardsDealt;
        }
        dealerBest = getBestScore(dealerAces, dealerScore);
        dealerStatus = getStatus(dealerAces, dealerScore);

        if(dealerScore > 21)
        {
            cout <<playerName<<" wins!\n";

        }
        else if(dealerScore == 21)
	{
	  cout << "Dealer wins!\n" << endl;
	}
        else
        {

			winner = findWinner(playerBest, playerStatus, dealerBest, dealerStatus);
			if(winner < 0)
			{
				cout << "Dealer wins!\n" << endl;
			}
			else if(winner == 0)
			{
				cout << "It's a draw!\n" << endl;
			}
			else
			{
				cout <<playerName<<"wins!\n" << endl;
			}
        }

    }
    else
    {
        cout << "Invalid option!";
    }
    cout << "Press any key to return to main menu or(P) to print deck)";
    cin.ignore();
    cin.get(response);
    

    if(response == 'P' || response == 'p')
    {
	  
        char fName[FILE_NAME_LENGTH];
        sortDeck(deck,DECK_SIZE - cardsDealt,cardsDealt);
        do
        {
            cout <<"Please enter the file to print the deck to: ";
            cin >> fName;
            if(strlen(fName) > 32)
            {
                cout << "File name too long!";
            }
        }while(strlen(fName ) > 32);

	writeToDeck(deck,DECK_SIZE,fName,cardsDealt);
        exit(0);
    }

}

void deal(short deck[], short &card, short &aces, short &score)
{
	short currentCard, cardValue;
	short alternates[ALTERNATE_SIZE];
	currentCard = deck[card];
	cout << getCard(currentCard) << endl;
	cardValue = getCardValue(currentCard);
	cout << "Card value: " << cardValue << endl;
	if(cardValue == 11)
	{
		++aces;
	}
	score += cardValue;
	cout << "Total score: " << score << endl;
	if(aces > 1)
	{
	    calculateAlternateTotals(aces, score, alternates, ALTERNATE_SIZE);
        for(short i = 0; i < aces; ++i)
        {
            cout << "Alternate score: " << alternates[i] << endl;
        }
	}

	//deck[card++] = -1;
	cout << string(27, '-') << endl;
}

