extends Area2D

@onready var coin_sound: AudioStreamPlayer = $CoinSound


func _ready() -> void:
	print("I'm a coin")

func _on_body_entered(body:Node2D) -> void:
	print("+1 coin")
	coin_sound.play()
	await coin_sound.finished
	queue_free()
