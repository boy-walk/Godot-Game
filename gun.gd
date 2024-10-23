extends CharacterBody2D

const PLAYER = preload("res://player.tscn")
const BULLET = preload("res://bullet.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	look_at(PLAYER.global_position)
	if(Input.is_action_just_pressed("shoot")):
		BULLET.instantiate()
	pass
