extends CharacterBody2D


const SPEED = 130.0
const JUMP_VELOCITY = -300.0
const MAX_JUMP = 2
var jump_count := 0

# Sound
@onready var jump_sound: AudioStreamPlayer = $JumpSound

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	else:
		jump_count = 0

	# Handle jump with double jump
	if Input.is_action_just_pressed("ui_accept") and jump_count < MAX_JUMP:
		velocity.y = JUMP_VELOCITY
		jump_count += 1
		jump_sound.play()

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
