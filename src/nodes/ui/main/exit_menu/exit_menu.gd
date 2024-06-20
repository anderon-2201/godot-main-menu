extends MainControl

@export var cancel_button: Button
@export var quit_button: Button

@export var ap_exit_menu: AnimationPlayer

signal press_cancel_button

func _on_cancel_button_pressed():
	ap_exit_menu.play("hide")
	emit_signal("press_cancel_button")

func _on_quit_button_pressed() -> void:
	Global.quit()

func _on_ap_exit_menu_animation_finished(_anim_name: String) -> void:
	if _anim_name == "appear":
		cancel_button.grab_focus()

func _on_main_menu_press_exit_button():
	ap_exit_menu.play("appear")
