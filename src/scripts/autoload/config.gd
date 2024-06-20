extends Node

var config: String

enum display_mode {WIN, MIN, MAX, FULL, EXC}

func _ready() -> void:
	load_config()

func load_config():
	config = "My config"

func save_config():
	pass

func default_config():
	pass

func set_display_mode(_mode: int):	
	match _mode:
			display_mode.WIN:
				DisplayServer.call_deferred("window_set_mode", display_mode.WIN)
			display_mode.MIN:
				DisplayServer.call_deferred("window_set_mode", display_mode.MIN)
			display_mode.MAX:
				DisplayServer.call_deferred("window_set_mode", display_mode.MAX)
			display_mode.FULL:
				DisplayServer.call_deferred("window_set_mode", display_mode.FULL)
			display_mode.EXC:
				DisplayServer.call_deferred("window_set_mode", display_mode.EXC)
			_:
				pass

func set_borderless(_mode: bool):
	DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_BORDERLESS, _mode)
