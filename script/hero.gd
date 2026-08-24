extends CharacterBody2D

# the variables i will use for the movement of the character
@export var speed = 300
@export var gravity = 9000
@export var jump_force = 2000

func _physics_process(delta):
	
	var direction = Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * speed
		if is_on_floor():
			$AnimatedSprite2D.play("run")
	else:
		velocity.x = 0
		if is_on_floor():
			$AnimatedSprite2D.play("idle")

	#gravity of the hero it will be seen when i build the map
	if not is_on_floor():
		velocity.y += gravity * delta
	else:
		velocity.y = 0
		
	
	# the direction of the moving character
	if direction == -1:
			$AnimatedSprite2D.flip_h = true
			
	elif direction == 1:
		$AnimatedSprite2D.flip_h = false
		
		
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y -= jump_force
		$AnimatedSprite2D.play("jump")
	move_and_slide()
