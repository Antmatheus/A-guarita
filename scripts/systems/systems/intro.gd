extends GameController

func _ready() -> void:
	await get_tree().create_timer(5).timeout
	TransitionScreen.target_path = paths[1]
	TransitionScreen.transition_screen()
