extends XRController3D

@onready var timer_teleport: Timer = $TimerTeleport
var teleportation_possible: bool = true

func _physics_process(_delta: float) -> void:
	# buttons on trigger functions
	if get_is_active() and is_button_pressed("ax_button") and teleportation_possible:
		get_parent().global_position = Vector3(0,5,0)
		timer_teleport.start(10)
		teleportation_possible = false
	
	# keybord functions
	if Input.is_action_pressed("teleport") and teleportation_possible:
		get_parent().global_position = Vector3(0,5,0)
		timer_teleport.start(10)
		teleportation_possible = false
	if Input.is_action_pressed("close_game"):
		get_tree().quit()


func _on_timer_teleport_timeout() -> void:
	teleportation_possible = true
