module MessageTranslator
  OISEAU = {
    "A"=>"piou",
    "B"=>"ioup",
    "C"=>"poup",
    "D"=>"iiou",
    "E"=>"ioui",
    "F"=>"pipp",
    "G"=>"ouip",
    "H"=>"poui",
    "I"=>"ppou",
    "J"=>"ipip",
    "K"=>"oupi",
    "L"=>"pouu",
    "M"=>"piiu",
    "N"=>"piui",
    "O"=>"uiui",
    "P"=>"opui",
    "Q"=>"pupu",
    "R"=>"iupi",
    "S"=>"piuu",
    "T"=>"piup",
    "U"=>"piop",
    "V"=>"ipou",
    "W"=>"oupu",
    "X"=>"uopu",
    "Y"=>"iupu",
    "Z"=>"iupp",
    "!"=>"iipu",
    ","=>"iupo",
    "."=>"ipuu",
    "?"=>"ppip"
  }

  def self.encode(string)
    return '' if string.nil?

    string.upcase.split('').map { |c| OISEAU[c] }.join(' ')
  end

  def self.decode(string)
    return '' if string.nil?

    string.split(' ').map { |c| OISEAU.key(c) }.join('')
  end
end

p MessageTranslator.encode("HELLO")    # Should output the encoded version of "HELLO"
p MessageTranslator.decode("piou ioup poup poup ioui")   # Should output the decoded version of the encoded message
