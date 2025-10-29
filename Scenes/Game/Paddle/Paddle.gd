extends Area2D

class_name Paddle

const MAX_SPEED = 500
const MAX_Y = 1050 - 55
const MIN_Y = 150 + 55
var Score: int = 0


func _on_area_entered(area: Ball) -> void:
	Score += 1
	print(Score)
	area.reset()
