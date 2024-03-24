extends Node2D
class_name DeckManager


var deck: Array[Carta] = []

func armarDeck():
	for tipoCarta in Carta.Type.values():
		if tipoCarta == Carta.Type.none:
			continue
		for valorCarta in Carta.valuecard.values():
			if valorCarta == Carta.valuecard.none:
				continue
			var carta = Carta.new(tipoCarta, valorCarta)
			print("El simbolo es ", tipoCarta , " y el valor es " , valorCarta)
			deck.append(carta)
	print("Numero de cartas en el deck ", deck.size())
	
func _ready():
	armarDeck()

func drawCard() -> Carta:
	if deck.is_empty():
		return Carta.new(Carta.Type.none, Carta.valuecard.none)
	var card = deck.pick_random() as Carta
	deck.erase(card)
	return card

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		var card = drawCard()
		print("Cartas: ", card.getCartaValue(), " ", card.getTipo())
		print("Cartas en el deck", deck.size())
