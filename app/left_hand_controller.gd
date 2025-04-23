extends XRController3D



func _physics_process(delta: float) -> void:
	# button function
	if get_is_active() and is_button_pressed("ax_button"):
		get_parent().global_position = Vector3(0,5,0)
		
	
	# keybord functions
	if Input.is_action_pressed("teleport"):
		get_parent().global_position = Vector3(0,5,0)
	if Input.is_action_pressed("close_game"):
		get_tree().quit()
