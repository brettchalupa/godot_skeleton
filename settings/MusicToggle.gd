extends CheckButton

func _ready():
	set_pressed_no_signal(Global.play_music)

func _on_toggled(bpressed):
	Global.play_music = bpressed
