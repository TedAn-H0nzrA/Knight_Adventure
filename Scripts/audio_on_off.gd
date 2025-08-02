extends CheckButton

@onready var audio_on_off: CheckButton = $'.'
@onready var background_stream_player: AudioStreamPlayer = $'../../AudioStreamPlayer'

func _ready() -> void:
	if audio_on_off.button_pressed:
		background_stream_player.play()

func _on_toggled(toggled_on:bool) -> void:
	if toggled_on:
		if not background_stream_player.playing:
			background_stream_player.play()

	else:
		background_stream_player.stream_paused = true
