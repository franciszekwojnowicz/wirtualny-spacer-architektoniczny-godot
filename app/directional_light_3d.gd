extends DirectionalLight3D

var change_position_possible : bool = true
@onready var change_position_timer: Timer = $ChangePositionTimer
var change_pos_time = 1

func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("set_morning") and change_position_possible:
		#rotate_x(deg_to_rad(-100))
		#rotation=Vector3(deg_to_rad(-100),deg_to_rad(-100),deg_to_rad(-100))
		rotation_degrees = Vector3(-10, 90, 0)
		light_energy = 0.5
		change_position_timer.start(change_pos_time)
		change_position_possible = false
	if Input.is_action_pressed("set_noon") and change_position_possible:
		#rotate_x(deg_to_rad(-100))
		rotation_degrees = Vector3(-46, 21, 0)
		#rotation=Vector3(deg_to_rad(-36.6),deg_to_rad(108.6),deg_to_rad(80.5))
		change_position_timer.start(change_pos_time)
		change_position_possible = false
	if Input.is_action_pressed("set_evening") and change_position_possible:
		#rotate_x(deg_to_rad(-100))
		#rotation=Vector3(deg_to_rad(-100),deg_to_rad(-100),deg_to_rad(-100))
		rotation_degrees = Vector3(-9, -83.8, -24.8)
		light_energy = 0.3
		change_position_timer.start(change_pos_time)
		change_position_possible = false


func _on_change_position_timer_timeout() -> void:
	change_position_possible = true
