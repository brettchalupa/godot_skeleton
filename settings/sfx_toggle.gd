extends CheckButton

func _ready() -> void:
	set_pressed_no_signal(Global.play_sfx)

func _on_toggled(bpressed: bool) -> void:
	Global.set_setting("play_sfx", bpressed)
