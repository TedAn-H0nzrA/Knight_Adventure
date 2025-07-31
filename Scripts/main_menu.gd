extends Control
@onready var main_buttons: VBoxContainer = $Main_buttons
@onready var options: Panel = $Options

func _ready() -> void:
	main_buttons.visible = true
	options.visible = false

# Button function
func _on_start_game_pressed() -> void:
	print("Start Game")
	get_tree().change_scene_to_file("res://Scenes/Core/game.tscn")


func _on_options_pressed() -> void:
	print("Settings")

	main_buttons.visible = false
	options.visible = true


func _on_exit_pressed() -> void:
	print("Exit")
	get_tree().quit()


func _on_back_pressed() -> void:
	print("Back")
	_ready()
