extends Node
class_name Carta
var tipo: CardState.Type
var valor: CardState.valuecard

func _init(tipo: CardState.Type, valor: CardState.valuecard):
	self.tipo = tipo
	self.valor = valor
