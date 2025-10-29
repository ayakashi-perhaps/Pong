extends Area2D

class_name VertBorders


func _on_area_entered(area: Ball) -> void:
	#area.reset()
	area.ReverseVel(0)
