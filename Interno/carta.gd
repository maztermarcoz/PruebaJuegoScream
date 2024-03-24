extends Node
class_name Carta
var tipo: Type
var valor: valuecard

func _init(tipo: Type, valor: valuecard):
	self.tipo = tipo
	self.valor = valor
	
func getTipo() -> String:
	var typeCharacter = "🤷‍♂️"
	match tipo:
		Carta.Type.heart:
			typeCharacter = "♥"
		Carta.Type.dimond:
			typeCharacter = "♦"
		Carta.Type.club:
			typeCharacter = "♣"
		Carta.Type.spade:
			typeCharacter = "♠"
	return typeCharacter
	
func getCartaValue() -> String:
	var strValue = str(valor)
	match valor:
		Carta.valuecard.jack:
			strValue = "J"
		Carta.valuecard.queen:
			strValue = "Q"
		Carta.valuecard.king:
			strValue = "K"
		Carta.valuecard.ace:
			strValue = "A"
	return strValue

enum Type {
	none,
	spade = 1,
	club,
	heart,
	dimond
}

enum valuecard {
	none = 0,
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
