extends MainControl

func _ready() -> void:
	if Global.get_os() != "Android":
		self.scale = Vector2(0.985, 0.985)
		self.position = Vector2(5, 5)
	self.add_child(Global.current_level().instantiate())

func set_scene(instance: PackedScene) -> void:
	self.remove_child(get_child(0))
	self.call_deferred("add_child", instance.instantiate())
