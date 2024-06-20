extends MainControl

@export var resume_button: Button
@export var settings_button: Button
@export var exit_button: Button

@export var ap_game_menu: AnimationPlayer

signal press_resume_button
signal press_settings_button
signal press_exit_button

func _on_resume_button_pressed():
	ap_game_menu.play("hide")

func _on_settings_button_pressed():
	ap_game_menu.play("hide")

func _on_exit_button_pressed():
	ap_game_menu.play("hide")

func _on_ap_exit_menu_animation_finished(_anim_name) -> void:
	if _anim_name == "appear":
		resume_button.grab_focus()
