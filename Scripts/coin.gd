extends Area2D

@onready var ap: AnimationPlayer = $AnimationPlayer

@onready var level_manager: Node = %LevelManager

func _on_body_entered(body: Node2D) -> void:
	level_manager.add_point()
	ap.play("pickup")
