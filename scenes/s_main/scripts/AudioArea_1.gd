extends Spatial
var audio = preload("res://scenes/audioplayerscontainer.tscn").instance()
var n
func _on_Area_1_body_entered(body):
	self.add_child(audio)
	print("if you dont hear anything, you in very big trouble")

func _on_Area_1_body_exited(body):
	print("exit moment")
