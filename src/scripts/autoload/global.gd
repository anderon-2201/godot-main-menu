extends Node

@onready var scene: PackedScene

var in_game: bool = false

func _ready() -> void:
	load_save()

func load_save():
	scene = preload("res://src/scenes/levels/test.tscn")

func save():
	pass

func fun():
	randomize()
	return randi_range(0, 100)

func get_os() -> String:
	return OS.get_name()

func current_level() -> PackedScene:
	return scene

func quit():
	Config.save_config()
	get_tree().quit()
