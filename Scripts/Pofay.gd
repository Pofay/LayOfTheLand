extends KinematicBody


export var playerSpeed = 5
export var rotationSpeed= 8
var velocity = Vector3(0,0,0)

func _ready():
	print("Im ready")
	pass


func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		velocity.x = -playerSpeed
		$MeshInstance.rotate_z(deg2rad(rotationSpeed))
	elif Input.is_action_pressed("ui_right"):
		velocity.x = playerSpeed
		$MeshInstance.rotate_z(deg2rad(-rotationSpeed))
	elif Input.is_action_pressed("ui_up"):
		velocity.z = -playerSpeed
		$MeshInstance.rotate_x(deg2rad(-rotationSpeed))
	elif Input.is_action_pressed("ui_down"):
		velocity.z = playerSpeed
		$MeshInstance.rotate_x(deg2rad(rotationSpeed))

	else :
		velocity.x = lerp(velocity.x, 0, 0.1)
		velocity.z = lerp(velocity.z, 0, 0.1)
	move_and_slide(velocity)


