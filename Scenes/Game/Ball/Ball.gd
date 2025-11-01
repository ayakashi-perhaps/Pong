extends Area2D

class_name Ball
signal PastMiddle

var Vx = 300
var Vy:int = -1 * Vx

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
		



func _on_area_entered(_area: MiddleLine) -> void:
	if Vx > 0:
		print("Past Middle")
		PastMiddle.emit(position,Vx,Vy)
