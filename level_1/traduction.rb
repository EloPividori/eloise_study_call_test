# Ce fichier devra contenir votre système de traduction en langue PiouPiou.
# Veuillez vous assurer de tirer le meilleur profit de la programmation objet
# d'assurer une qualité de production
#
# Il sera exécuté de la façon suivante :
# ruby piou.rb encode '...'
# ruby piou.rb decode '...'

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

class Traduction
  def initialize
    @o = OISEAU
  end

  def encode(string)
    return "" if string.nil?

    string.upcase.split('').map{|c| @o[c]}.join(' ')
  end

  def decode(string)
    return "" if string.nil?

    string.split(' ').map{|c| @o.key(c)}.join('')
  end
end

trad = Traduction.new
puts trad.encode("Hello World !")
puts trad.decode("poup uiui piop poup uiui piop iupo  ipip ioui  ipou uiui piop iiou iupi piou ppou piuu  iiou ioui ipou ioui piui ppou iupi  piou piuu piup iupi piou piop piui piou piop piup ioui iipu  poup uiui piiu piiu ioui piui piup  pipp piou ppou iupi ioui  ppip")
