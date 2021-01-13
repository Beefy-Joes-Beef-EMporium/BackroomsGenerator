extends Spatial
var size = 0
func _ready():
	while size == 0:
		size = self.get_child_count()
		print("childcount: ",size)
