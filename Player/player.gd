extends CharacterBody2D
var sprite : Sprite2D
func _ready():
	sprite = $SpriteImagen2D

func _process(delta):
	var movementVector = getMovementVector()
	var direction = movementVector.normalized()
	var targerVelocity = direction * 500
	var lerpWeight = 1 - exp(-delta * 50)
	
	var is_right_pressed = Input.is_action_pressed("MoveRight")
	var is_left_pressed = Input.is_action_pressed("MoveLeft")
	var is_up_pressed = Input.is_action_pressed("MoveUp")
	var is_down_pressed = Input.is_action_pressed("MoveDown")	
	velocity = velocity.lerp(targerVelocity, lerpWeight)
	
	move_and_slide()
	
	if is_right_pressed:
		sprite.rotation_degrees = 0
		sprite.flip_v = false
		sprite.flip_h = false
		
	elif is_left_pressed:
		sprite.rotation_degrees = 180
		sprite.flip_v = true
		sprite.flip_h = false
		
	elif is_up_pressed:
		sprite.rotation_degrees = -90
		sprite.flip_v = false
		sprite.flip_h = false
		
		
	elif is_down_pressed:
		sprite.rotation_degrees = 90
		sprite.flip_v = true
		sprite.flip_h = false
		
	if is_down_pressed and is_right_pressed:
		sprite.rotation_degrees = 45
		sprite.flip_v = false
		sprite.flip_h = false
		
	if is_down_pressed and is_left_pressed:
		sprite.rotation_degrees = 135
		sprite.flip_v = true
		sprite.flip_h = false
	
	if is_up_pressed and is_right_pressed:
		sprite.rotation_degrees = -45
		sprite.flip_v = false
		sprite.flip_h = false
	
	if is_up_pressed and is_left_pressed:
		sprite.rotation_degrees = -135
		sprite.flip_v = true
		sprite.flip_h = false
	
func getMovementVector() -> Vector2:
	var xMovement = Input.get_action_strength("MoveRight") - Input.get_action_strength("MoveLeft")
	var yMovement = Input.get_action_strength("MoveDown") - Input.get_action_strength("MoveUp")
	return Vector2(xMovement, yMovement)
	
