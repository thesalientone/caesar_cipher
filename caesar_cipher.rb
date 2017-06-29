def caesar_cipher(text, num)
  
  text.split(" ").each do |word|
    print  shiftword(word, num % 26) + " "
  end
  
end

def shiftword(word, num)
  
  shifted = []
  word.split("").each do |l|
   
   
    new_num = l.ord
    if l.ord >= 65 && l.ord <= 90
      new_num = l.ord + num
      if new_num > 90
        new_num -= 26
      end
    elsif l.ord >= 97 && l.ord <= 122
        new_num = l.ord + num
        if new_num > 122
          new_num -= 26
        end
    
    end
  shifted.push((new_num).chr)
  end
  return shifted.join
end

caesar_cipher("What a string!", 5)


