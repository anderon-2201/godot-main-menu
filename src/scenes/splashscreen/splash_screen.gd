extends Control

@export var ap_splashboot: AnimationPlayer
@export_file("*.tscn") var main_screen_scene: String = "res://src/scenes/main/main_control.tscn"

signal my_signal
signal other_signal

func _ready() -> void:
	ap_splashboot.play("splashboot")

func  load_scene(_scene) -> void:
	if _scene:
		get_tree().call_deferred("change_scene_to_file", _scene)

func _on_ap_splash_boot_animation_finished(_anim_name) -> void:
	if _anim_name == "splashboot":
		load_scene(main_screen_scene)
