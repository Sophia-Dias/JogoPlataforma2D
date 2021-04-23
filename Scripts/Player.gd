extends KinematicBody2D

var velocity = Vector2.ZERO
var moveSpeed = 480
var gravity = 1200
var jumpForce = -720

func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta
	var moveDirection = int(Input.is_action_pressed("move_right")) - int(Input.is_action_pressed("move_left"))
	
	if Input.is_action_pressed("jump"):
		velocity.y = jumpForce / 2
	
	velocity.x = moveSpeed * moveDirection
	move_and_slide(velocity)
