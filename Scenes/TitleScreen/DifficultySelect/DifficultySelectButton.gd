extends Button

func die() -> void:
	queue_free()


func _on_pressed() -> void:
	print("Button Pressed")
