extends Paddle

func _process(delta: float) -> void:
	if Input.is_action_pressed("move_down") && Input.is_action_pressed("move_up"):
		pass
	elif Input.is_action_pressed("move_up"):
		position.y = max(position.y - MAX_SPEED * delta * Input.get_action_strength("move_up"), MIN_Y)
	elif Input.is_action_pressed("move_down"):
		position.y = min(position.y + MAX_SPEED * delta * Input.get_action_strength("move_down"), MAX_Y)
	else:
		pass
