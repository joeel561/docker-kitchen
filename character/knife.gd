extends NodeState

@export var player: Player
@export var animated_sprite_2d: AnimatedSprite2D


func on_process(delta: float):
	pass
	
func _on_physics_process(delta: float):
	pass


func _on_next_transition() -> void:
	if Input.is_action_just_pressed("knife"):
		transition.emit("Idle")
		
func _on_enter() -> void:
	if player.player_direction == Vector2.UP:
		animated_sprite_2d.play("knife_back")
	else:
		animated_sprite_2d.play("knife")

func _on_exit() -> void:
	animated_sprite_2d.stop()
