extends RigidBody3D

var mouse_click: Vector2
var mouse_release: Vector2
var mouse_direction: Vector2

var max_drag: float =100.0
var max_force: float =4.0

var ball_force:Vector3

@export var camera: Camera3D

func _input(event) -> void:
	if event  is InputEventMouseButton:
		if event .pressed == true:
			mouse_click = event.position
		else:
			mouse_release = event.position
			mouse_direction = mouse_click - mouse_release
			
			
			
			
			var precentage = mouse_direction.length() / max_drag
			precentage = min(precentage , 1)
			
			var ball_direction = Vector3(camera.global_basis.x * mouse_direction.x + camera.global_basis.z * mouse_direction.y).normalized()
			
			
			ball_force =  ball_direction * (precentage * max_force)
			apply_central_impulse(ball_force)
			
