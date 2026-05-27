extends Node

@onready var label: Label = $"../player/Camera2D/Label"


var score=0
func add_point():
	score+=1
	print(score)
	label.text="score is"+str(score)
