class PigLatinizer

    def initialize
        
    end

    def piglatinize(word)
        word.split(" ").map do |w|
        if ["a", "e", "i", "o", "u"].include?(w.chars.first.downcase)
            w + "way"
        else 
            split_consonants = w.split(/[aeiou]/)[0]
            w[split_consonants.length .. -1] + split_consonants + "ay"
        end  
        end.join(" ")
    end


end