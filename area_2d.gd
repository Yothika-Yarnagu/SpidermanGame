extends Area2D

@export var scene_name: String

func _ready():
	body_entered.connect(_on_body_entered)

func _on_body_entered(body):
	if body.name == "Spidy":
		get_tree().change_scene_to_file(scene_name)
