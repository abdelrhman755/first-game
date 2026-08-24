extends CharacterBody2D

# the variables i will use for the movement of the character
@export var speed = 300
@export var gravity = 1200
@export var jump_force = 255

func _physics_process(delta):
	
	var direction = Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * speed
		$AnimatedSprite2D.play("run")
	else:
		velocity.x = 0
		$AnimatedSprite2D.play("idle")

	#gravity of the hero it will be seen when i build the map
	if not is_on_floor():
		velocity.y += gravity * delta
	else:
		velocity.y = 0
		
		
	move_and_slide()
