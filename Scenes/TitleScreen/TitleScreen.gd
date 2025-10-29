extends Node2D

const START_BUTTON = preload("uid://dy6eabq4n5j1m")
const DIFFICULTY_SELECT = preload("uid://bnt4ah0agpbus")
const GAME = preload("uid://cvnotmeax6iuf")

func spawn_start() -> void:
	print("Start Spawning begun")
	var start_button = START_BUTTON.instantiate()
	start_button.button_pressed.connect(_on_start_pressed)
	add_child(start_button)
	
func spawn_diff() -> void:
	var difficulty_buttons: DifficultySelect = DIFFICULTY_SELECT.instantiate()
	difficulty_buttons.menu_handler.connect(_menu_handler)
	add_child(difficulty_buttons)

func move_to_game(diff: int) -> void:
	var game: Game = GAME.instantiate()
	game.difficulty = diff
	get_tree().root.add_child(game)
	get_tree().current_scene.queue_free()
	get_tree().current_scene = game
	

func _menu_handler(arg:int) -> void:
	if arg == 0:
		spawn_start()
	else:
		move_to_game(arg)

func _ready() -> void:
	spawn_start()

func _on_start_pressed() -> void:
	print("singal recieved!")
	spawn_diff()
	
