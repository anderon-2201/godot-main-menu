extends Button

func _on_mouse_entered() -> void:
	if not self.disabled and self.focus_mode == 2:
		self.grab_focus()

func _on_gui_input(_event: InputEvent):
	if _event is InputEventJoypadButton:
		if _event.button_index == 0 and _event.pressed == false and self.disabled == false:
			self.emit_signal("pressed")

