extends PanelContainer

var following: bool = false
var mouse_start: Vector2i

func _on_gui_input(_event) -> void:
	if _event is InputEventMouseButton:
		if _event.button_index == 1:
			following = !following
			mouse_start = get_viewport().get_mouse_position()

func _process(_delta) -> void:
	if following:
		var mouse := Vector2i(get_viewport().get_mouse_position())
		get_window().position += mouse - mouse_start
