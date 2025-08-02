extends CheckButton

@onready var audio_on_off: CheckButton = $'.'
@onready var intro_bg_sound: AudioStreamPlayer = $'../../Intro_Bg_Sound'


func _ready() -> void:
	if audio_on_off.button_pressed:
		intro_bg_sound.play()

func _on_toggled(toggled_on:bool) -> void:
	if toggled_on:
		if not intro_bg_sound.playing:
			intro_bg_sound.play()

	else:
		intro_bg_sound.stream_paused = true
