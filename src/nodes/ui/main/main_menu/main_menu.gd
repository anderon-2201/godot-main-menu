extends MainControl

@export var play_button: Button
@export var settings_button: Button
@export var exit_button: Button

@export var ap_main_menu: AnimationPlayer

var current_op

signal press_play_button
signal press_settings_button
signal press_exit_button

func _ready() -> void:
	ap_main_menu.play("appear")
	current_op = play_button

func _on_play_button_pressed() -> void:
	ap_main_menu.play("hide")
	emit_signal("press_play_button")
	current_op = play_button

func _on_exit_button_pressed() -> void:
	ap_main_menu.play("hide")
	emit_signal("press_exit_button")
	current_op = exit_button

func _on_settings_button_pressed() -> void:
	ap_main_menu.play("hide")
	emit_signal("press_settings_button")
	current_op = settings_button

func _on_ap_main_menu_animation_finished(_anim_name: String) -> void:
	if _anim_name == "appear":
		current_op.grab_focus()

func _on_exit_menu_press_cancel_button() -> void:
	ap_main_menu.play("appear")

func _on_settings_menu_press_back_button():
	ap_main_menu.play("appear")
