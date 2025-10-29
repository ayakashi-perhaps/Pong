extends Node2D

class_name DifficultySelect

signal menu_handler

func _on_back_pressed() -> void:
	queue_free()
	menu_handler.emit(0) 

func _on_easy_pressed() -> void:
	queue_free()
	menu_handler.emit(1)

func _on_medium_pressed() -> void:
	queue_free()
	menu_handler.emit(2)

func _on_hard_pressed() -> void:
	queue_free()
	menu_handler.emit(3)

func _ready() -> void:
	print("ready")
