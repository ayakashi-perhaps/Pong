extends Paddle

var Vy:float;
var x: float;
var y: float;
var move: bool = false;

func _on_ball_past_middle(pos: Vector2, BVx:int , BVy: int) -> void:
	move = true
	Vy = 0
	x = 0
	y = 0
	if BVy < 0:
		x = (float(BVx)/float(BVy)) * (150.00 - pos.y) + pos.x
		y = -1 * (float(BVy)/float(BVx)) * (1789.00 - x) + 150
		var t: float = (sqrt((x-pos.x)**2 + (150-pos.y)**2) + sqrt((1800-x)**2 + (y)**2))/(sqrt(BVx**2 + BVy**2))
		
		Vy = (y - position.y) / (t - 0.5)
	else:
		x = (float(BVx)/float(BVy)) * (1050 - pos.y) + pos.x
		y = -1 * (float(BVy)/float(BVx)) * (1789 - x) + 1050

func _process(delta: float) -> void:
	if move:
		position.y = clampf(position.y + Vy*delta, min(position.y, y), max(position.y, y))
	elif y == position.y:
		move = false
