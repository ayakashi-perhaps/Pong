extends Area2D

class_name HorizontalBorder

var sig: int;

func _on_area_entered(Object:Ball):
	Object.ReverseVel(1)
