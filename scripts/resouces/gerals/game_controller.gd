extends Node

var paths: Array[String] = [
	"res://scenes/systems/systems/intro.tscn",
	"res://scenes/systems/systems/menu.tscn",
	"res://scenes/systems/systems/credits.tscn",
	"res://scenes/systems/systems/settings.tscn",
	"res://scenes/game_scenes/playground.tscn",
]

func _ready() -> void:
	for button in get_tree().get_nodes_in_group("buttons"):
		button.pressed.connect(_on_button_pressed.bind(button))


func _on_button_pressed(button: Button) -> void:
	match button.name:
		"button_play":
			TransitionScreen.target_path = paths[4]
			TransitionScreen.transition_screen()
		"button_credits":
			TransitionScreen.target_path = paths[2]
			TransitionScreen.transition_screen()
		"button_settings":
			TransitionScreen.target_path = paths[3]
			TransitionScreen.transition_screen()
		"button_exit":
			TransitionScreen.exit_game()
		"button_back_to_menu":
			TransitionScreen.transition_screen()
			TransitionScreen.target_path = paths[1]
		"left_button":
			pass
		"right_button":
			pass
		"full_screen_check_button":
			print("FULL SCREEN MODE")
