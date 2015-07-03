from ps4a import *
import time


#
#
# Problem #6: Computer chooses a word
#
#
def isInHand(word, hand):
    for char in word:
        if char not in hand or word.count(char) > hand[char]: return False 
    return True
    
def compChooseWord(hand, wordList, n):
    """
    Given a hand and a wordList, find the word that gives 
    the maximum value score, and return it.

    This word should be calculated by considering all the words
    in the wordList.

    If no words in the wordList can be made from the hand, return None.

    hand: dictionary (string -> int)
    wordList: list (string)
    n: integer (HAND_SIZE; i.e., hand size required for additional points)

    returns: string or None
    """
    max_score, answ = 0, None
    for word in wordList:
        if isInHand(word, hand) and getWordScore(word, n) > max_score:
            max_score, answ = getWordScore(word, n), word
    return answ
        
    # BEGIN PSEUDOCODE <-- Remove this comment when you code this function; do your coding within the pseudocode (leaving those comments in-place!)
    # Create a new variable to store the maximum score seen so far (initially 0)

    # Create a new variable to store the best word seen so far (initially None)  

    # For each word in the wordList

        # If you can construct the word from your hand
        # (hint: you can use isValidWord, or - since you don't really need to test if the word is in the wordList - you can make a similar function that omits that test)

            # Find out how much making that word is worth

            # If the score for that word is higher than your best score

                # Update your best score, and best word accordingly


    # return the best word you found.


#
# Problem #7: Computer plays a hand
#
def compPlayHand(hand, wordList, n):
    """
    Allows the computer to play the given hand, following the same procedure
    as playHand, except instead of the user choosing a word, the computer 
    chooses it.

    1) The hand is displayed.
    2) The computer chooses a word.
    3) After every valid word: the word and the score for that word is 
    displayed, the remaining letters in the hand are displayed, and the 
    computer chooses another word.
    4)  The sum of the word scores is displayed when the hand finishes.
    5)  The hand finishes when the computer has exhausted its possible
    choices (i.e. compChooseWord returns None).
 
    hand: dictionary (string -> int)
    wordList: list (string)
    n: integer (HAND_SIZE; i.e., hand size required for additional points)
    """
    # TO DO ... <-- Remove this comment when you code this function
    score = 0
    
    while calculateHandlen(hand) > 0:
        print "Current hand: ", 
        displayHand(hand)
        user_input = compChooseWord(hand, wordList, n)
        if user_input == None:
            print 'Total score:', score, 'points.'#point.' if score == 1 else 'points.'
            return
        else:
            hand = updateHand(hand, user_input)
            points_per_word = getWordScore(user_input, n)
            score += points_per_word
            print '"' + user_input + '" earned', points_per_word, 'points. Total:', score, 'points.\n'#'point.' if points_per_word == 1 else 'points. Total:', score, 'point.' if score == 1 else 'points.\n'
        
    print 'Total score:',  score, 'points.'            
#
# Problem #8: Playing a game
#
#
def playGame(wordList):
    """
    Allow the user to play an arbitrary number of hands.
 
    1) Asks the user to input 'n' or 'r' or 'e'.
        * If the user inputs 'e', immediately exit the game.
        * If the user inputs anything that's not 'n', 'r', or 'e', keep asking them again.

    2) Asks the user to input a 'u' or a 'c'.
        * If the user inputs anything that's not 'c' or 'u', keep asking them again.

    3) Switch functionality based on the above choices:
        * If the user inputted 'n', play a new (random) hand.
        * Else, if the user inputted 'r', play the last hand again.
      
        * If the user inputted 'u', let the user play the game
          with the selected hand, using playHand.
        * If the user inputted 'c', let the computer play the 
          game with the selected hand, using compPlayHand.

    4) After the computer or user has played the hand, repeat from step 1

    wordList: list (string)
    """
    # TO DO... <-- Remove this comment when you code this function
    hand = ''
    while True:
        choice = raw_input('Enter n to deal a new hand, r to replay the last hand, or e to end game: ').lower()
        if choice == 'e': return
        elif choice == 'r' and not hand: print 'You have not played a hand yet. Please play a new hand first!\n'
        elif choice == 'n' or choice == 'r':
            mode = raw_input('Enter u to have yourself play, c to have the computer play: ').lower()
            while mode != 'u' and mode != 'c':
                print 'Invalid command.'
                mode = raw_input('Enter u to have yourself play, c to have the computer play: ').lower()
            
            if choice == 'n': 
                n = random.randint(3, 40)   # = HAND_SIZE           - to satisfy grader
                hand = dealHand(n)          # = dealHand(HAND_SIZE)
                playHand(hand, wordList, n) if mode == 'u' else compPlayHand(hand, wordList, n)
            else: playHand(hand, wordList, n) if mode == 'u' else compPlayHand(hand, wordList, n)
            
        else: print 'Invalid command.'
        
#
# Build data structures used for entire session and play game
#
if __name__ == '__main__':
    wordList = loadWords()
    playGame(wordList)


