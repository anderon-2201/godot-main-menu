extends MainControl

@export var back_button: Button
@export var ap_settings_menu: AnimationPlayer

var current_op

signal press_back_button

func _ready():
	current_op = back_button

func _on_back_button_pressed():
	ap_settings_menu.play("hide")
	emit_signal("press_back_button")
	current_op = back_button

func _on_ap_settings_menu_animation_finished(_anim_name):
	if _anim_name == "appear":
		current_op.grab_focus()

func _on_main_menu_press_settings_button():
	ap_settings_menu.play("appear")
