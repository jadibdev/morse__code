def decode_char(morse_char)
  morse_dic = {
    'a' => '.-', 'b' => '-...', 'c' => '-.-.', 'd' => '-..', 'e' => '.', 'f' => '..-.',
    'g' => '--.', 'h' => '....', 'i' => '..', 'j' => '.---', 'k' => '-.-', 'l' => '.-..', 'm' => '--',
    'n' => '-.', 'o' => '---', 'p' => '.--.', 'q' => '--.-', 'r' => '.-.', 's' => '...',
    't' => '-', 'u' => '..-', 'v' => '...-', 'w' => '.--', 'x' => '-..-', 'y' => '-.--', 'z' => '--..',
    ' ' => ' ', '1' => '.----', '2' => '..---', '3' => '...--', '4' => '....-', '5' => '.....', '6' => '-....',
    '7' => '--...', '8' => '---..', '9' => '----.', '0' => '-----'
  }
  morse_dic.map do |k, v|
    return k.upcase if v == morse_char
  end
end

def decode_word(morse_word)
  morse_word__arr = morse_word.split
  decoded_word__arr = []
  morse_word__arr.each do |char|
    decoded_word__arr.push(decode_char(char))
  end
  decoded_word__arr.join
end



