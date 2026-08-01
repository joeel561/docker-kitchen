extends NodeState

@export var player: Player
@export var animated_sprite_2d: AnimatedSprite2D


func on_process(delta: float):
	pass
	
func _on_physics_process(delta: float):
	if player.player_direction == Vector2.UP:
		animated_sprite_2d.play("sit_back")
	elif player.player_direction == Vector2.RIGHT:
		animated_sprite_2d.play("sit_right")
	elif player.player_direction == Vector2.LEFT:
		animated_sprite_2d.play("sit_left")
	elif player.player_direction == Vector2.DOWN:
		animated_sprite_2d.play("sit_right")
		

func _on_next_transition() -> void:
	if !GameInputEvents.is_movement_input():
		transition.emit("Idle")
		
func _on_enter() -> void:
	pass

func _on_exit() -> void:
	animated_sprite_2d.stop()
