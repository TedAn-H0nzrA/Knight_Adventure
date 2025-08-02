extends Node2D

@onready var bg_sound: AudioStreamPlayer = $BG_Sound


func _ready() -> void:
	bg_sound.play()