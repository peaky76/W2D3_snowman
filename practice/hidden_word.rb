class HiddenWord

    def initialize(word)
        @word = word
    end

    def display(guessed_letters)
        word_to_display = ""
        for letter in @word.each_char
            if guessed_letters.include?(letter) || letter == " "
                word_to_display += letter
            else
                word_to_display += "*"
            end
        end
        return word_to_display
    end


end
