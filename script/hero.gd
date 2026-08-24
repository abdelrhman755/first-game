extends CharacterBody2D

# the variables i will use for the movement of the character
@export var speed = 300
@export var gravity = 900
@export var jump_force = 255

func _physics_process(delta):
	
	var direction = Input.get_axis("left", "right")
	
	if direction:
		velocity.x = direction * speed
	else:
		velocity.x = 0

	move_and_slide()
