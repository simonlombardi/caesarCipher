def caesarCipher(str, shift)
    letters = ("a".."z").to_a()
    newWord = ""

    str.each_char do |character|
        if letters.include? character.downcase()
            index = letters.index(character.downcase())
            if index > shift
                newIndex = index - shift 
            else
                newIndex = letters.length - (shift - index)
            end
            if newIndex == 26 
                newIndex -= 1
            else
            end
            if character == character.upcase()
                newWord += letters[newIndex].upcase()
            else
                newWord += letters[newIndex]
            end
        else
            newWord += character
        end
    end
    return newWord
end
puts "Insert a string"
userString = gets
puts "Intert a shift number"
userShift = gets

encryptedWord = caesarCipher(userString.to_s(), userShift.to_i())
puts "--------------------------------"
puts "your string encrypted is: #{encryptedWord}"
