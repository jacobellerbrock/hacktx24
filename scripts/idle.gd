class_name PlayerIdleState
extends PlayerState

func enter() -> void:
	player.animation.play(idle_anim, -1, 0.1)

func exit(new_state: State = null) -> void:
	super(new_state)

func process_input(event: InputEvent) -> State:
	super(event)
	if event.is_action_pressed(movement_key):
		determine_sprite_flipped(event.as_text()) 
		return walk_state
	elif event.is_action_pressed(jump_key): return jump_state
	return null
