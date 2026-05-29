extends Area2D


@onready var label: Label = $Label
@export_multiline var sign:String = "Default"
@onready var player: CharacterBody2D = $"../player"


var player_inside = false

func _ready() -> void:
	label.hide()
	
func _on_body_entered(body: CharacterBody2D) -> void:
	if body.is_in_group("PlayerG"):
		player_inside = true

func _on_body_exited(body: CharacterBody2D) -> void:
	if body.is_in_group("PlayerG"):
		player_inside = false
		

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Interact") and player_inside:
		label.text = sign
		label.visible = !label.visible
