extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == 1:
			set_linear_velocity(Vector2(0, -200))
			set_angular_velocity(-1.5)
			$AnimatedSprite2D.play("Fly")


func _on_area_2d_body_entered(body):
	if (body.name == ("Floor")):
		self.queue_free()
		get_tree().reload_current_scene()
	if "wall" in body:
		self.queue_free()
		get_tree().reload_current_scene()
	
		
		
