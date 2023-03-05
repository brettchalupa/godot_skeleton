extends Node2D

func _process(_delta):
	if Input.is_action_pressed("ui_accept"):
		get_tree().change_scene_to_file(Global.SCENE_MAIN_MENU)

	$Icon.rotate(_delta)

func _input(event):
	if event.is_action_released("pause"):
		call_deferred("_pause")
		
func _pause():
	$Paused.pause()
	get_tree().paused = true
