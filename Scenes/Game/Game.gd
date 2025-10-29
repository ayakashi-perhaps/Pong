extends Node2D

class_name Game

@export var difficulty: int

func _ready() -> void:
	print("Recieved difficulty:",difficulty)
