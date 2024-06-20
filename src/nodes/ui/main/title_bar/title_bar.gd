extends MainControl

@export var ap_title_bar: AnimationPlayer

func _ready() -> void:
	if Global.get_os() == "Android":
		self.position = Vector2(0, -40)
	ap_title_bar.play("appear")

func _on_close_tb_pressed() -> void:
	Global.quit()

func _on_hide_bar_tb_pressed():
	ap_title_bar.play("hide")

func _on_appear_bar_tb_pressed():
	ap_title_bar.play("appear")

func _on_hide_tb_pressed() -> void:
	Config.set_display_mode(1)
