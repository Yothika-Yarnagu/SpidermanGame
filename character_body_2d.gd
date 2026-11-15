extends CharacterBody2D

var direction: Vector2 = Vector2.ZERO
@export var speed: int = 150
@export var sprint_speed: int = 300

func _process(delta):
	direction = Input.get_vector("left", "right", "up", "down")

func _physics_process(delta):
	var current_speed = speed
	
	# Increase speed while holding Spacebar ("ui_accept" is Space by default)
	if Input.is_action_pressed("ui_accept"):
		current_speed = sprint_speed
		
	velocity = direction * current_speed
	move_and_slide()
