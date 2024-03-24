extends Node2D


class_name CardState

enum Type {
	spade = 1,
	club,
	heart,
	diamond
}

enum valuecard {
	two = 2,
	three,
	four,
	five,
	six,
	seven,
	eight,
	nine,
	ten,
	jack,
	queen,
	king,
	ace

}



var tipoCarta: Type = Type.diamond
var deck: Array[Carta] = []

func armarDeck():
	for tipoCarta in Type.values():
		for valorCarta in valuecard.values():
			var carta = Carta.new(tipoCarta, valorCarta)
			print("El simbolo es ", tipoCarta , " y el valor es " , valorCarta)
			deck.append(carta)
	print("Numero de cartas en el deck ", deck.size())
	
	

# func drawCard() -> Card
	#if deck.is_empty();
		#return Card.new(Card.Type.none. Card.value.none)
func _ready():
	armarDeck()

