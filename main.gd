extends Node2D

func _input(event):
	if event.is_action_pressed("press"):
		$Label.text = "love you mother"
		$Label.modulate = Color.RED
	if event.is_action_released("press"):
		$Label.text = "my heart"
		$Label.modulate = Color.YELLOW_GREEN
