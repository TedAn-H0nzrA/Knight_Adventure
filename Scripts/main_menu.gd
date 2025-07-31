extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.



# Button function
func _on_start_game_pressed() -> void:
	print("Start Game")
	get_tree().change_scene_to_file("res://Scenes/game.tscn")


func _on_options_pressed() -> void:
	print("Options")


func _on_exit_pressed() -> void:
	print("Exit")
	get_tree().quit()
