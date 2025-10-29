extends Area2D

class_name Ball

var Vx = 300
var Vy:int = Vx

func reset():
	position.x = 960
	position.y = 600

func _ready() -> void:
	reset()

func _process(delta: float) -> void:
	position.x += Vx * delta
	position.y += Vy * delta


func ReverseVel(option:int) -> void:
	if option == 1:
		Vy = -Vy
	else:
		Vx = -Vx
