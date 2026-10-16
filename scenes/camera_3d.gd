extends Camera3D

@export var ball : RigidBody3D
@export var offset: Vector3


func _process(delta: float) -> void:
	position = ball.position + offset
	look_at(ball.position)
