extends Area2D


func _on_body_entered(body):
	if body.get_name() == "Player":
		print(" Ganaste saliendo de esta : ")
		get_tree().paused = true
		
