extends RigidBody3D

var mouse_click: Vector3
var mouse_release: Vector3
var mouse_direction: Vector3

func _input(event) -> void:
	if event  is InputEventMouseButton:
		if event .pressed == true:
			mouse_click = event.position
		else:
			mouse_release = event.position
		mouse_direction = mouse_click - mouse_release
