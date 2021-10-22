class Model {
    var numberToGuess = 0
    var countOfTries = 1
    
    func compare(guess guessedNumber: Int!) -> Int! {
        //TODO: check input for not nil
        var result = 0;
        
        if guessedNumber < self.numberToGuess {
            result = -1;
        }
        else if guessedNumber > self.numberToGuess {
            result = 1;
        }
        return result;
    }
    
    func compare(guessedString: String!) -> Int! {
        let guess = Int(guessedString)
        return self.compare(guess: guess)
    }
}
