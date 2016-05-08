#ifndef CARDTOOLS_H
#define CARDTOOLS_H


/**
 * Sorts the array in asceding order.
 * This function can be implemented either with Bubble or Selection sort.
 *
 * @param deck The deck array to be sorted
 * @param deckSize The size of the deck array
 * @param startIndex The index to start the search at
 */
void sortDeck(short deck[], short deckSize, short startIndex);


/**
 * Inserts ards randomly into the deck.
 * The shuffled deck will be stored in deck.
 *
 * @param deck The array to store the cards in
 * @param deckSize The size of the deck array
 */
void shuffleCards(short deck[], short deckSize);


/**
 * Reads the deck from a specific file into the array.
 * If the file doesn't exist, the deck should be randomly filled using the shuffleCards function.
 *
 * @param fileName The name of the file containing the deck
 * @param deck The array to store the cards in
 * @param deckSize The size of the deck array
 *
 * @return False if the file could not be read, else true
 */
bool readDeck(char fileName[], short deck[], short deckSize);


/**
 * Calculates all alternative scores with a given aceCount.
 * Eg: A score of 27 will store 17 and 7 in alternateTotals and return 2.
 *
 * @param aceCount The number of Aces on the hand
 * @param score The total score of all cards on the hand
 * @param alternateTotals The array to store the alternate scores in
 * @param alternateSize The size of alternateTotals
 */
void calculateAlternateTotals(short aceCount, short score, short alternateTotals[], short alternateSize);


/**
 * Calculates the best possible score from your hand with a given number of Aces lower or equal to 21.
 * Eg: A score of 27 with an Ace count of 2 will return 17 (Ace 1 = 11, Ace 2 = 1, 5 = 5).
 *
 * @param aceCount The number of Aces on the hand
 * @param score The total score of all cards on the hand
 *
 * @return The best possible score
 */
short getBestScore(short aceCount, short score);


/**
 * Calculates the value of a card (0 - 51) as used in Blackjack.
 * Eg: Card 12 (Ace of Spades) will return 11.
 * Eg: Card 22 (Jack of Hearts) will return 10.
 *
 * @param card The value (0 - 51) of the card
 *
 * @return The Blackjack score of the card
 */
short getCardValue(short card);


/**
 * Gets the current status based on the number of aces and the score.
 *
 * @param aceCount The number of Aces on the hand
 * @param score The total score of all cards on the hand
 *
 * @return The status for the given hand. -1 on bust, 1 on Blackjack, otherwise 0.
 */
short getStatus(short aceCount, short score);


/**
 * Determines the winner for the current game with the status determined by getStatus
 * Return 1 if the player wins, -1 if the dealer wins and 0 for a draw
 *
 * @param playerScore The total score of th players hand
 * @param playerStatus The status (-1, 0 or 1) of the player
 * @param dealerScore The total score of th dealers hand
 * @param dealerStatus The status (-1, 0 or 1) of the dealer
 *
 * @return The winner. 1 if the player wins, -1 if the dealer wins and 0 for a draw
 */
short findWinner(short playerScore, short playerStatus, short dealerScore, short dealerStatus);

#endif
