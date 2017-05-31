require "pry"

def collect_letters(arr, index)
  letter_array = []
  arr.each { |phrase|
    letter_array << phrase[index]
  }
  letter_array
end

def alphabetize(arr)
  es_alph = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

  #Find first letter that all phrases differ on
  index = 0
  while true
    if collect_letters(arr, index).uniq.length == 1
      index += 1
    elsif collect_letters(arr, index).uniq.length > 1
      new_arr = arr.sort_by { |sentence|
        es_alph.index(sentence[index])
      }
      return new_arr
    else
      puts "something is off"
      break
    end
  end

end

arr = ["mi amas vin", "bonan matenon", "pacon", "ĉu vi parolas esperanton"]

# puts alphabetize(arr)
