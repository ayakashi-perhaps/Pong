extends Node2D

class_name StartButton

signal button_pressed

func die() -> void:
	queue_free()

func _ready() -> void:
	print("initiated")

func _on_start_button_pressed() -> void:
	button_pressed.emit()
	queue_free()
