extends Area2D



func _on_body_entered(body):
	if body.get_name() == "Player":
		print(" la pared coliciono con : ",  body)
		get_tree().reload_current_scene()
