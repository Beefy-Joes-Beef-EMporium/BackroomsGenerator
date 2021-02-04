extends Spatial
var PPosition = 0
export var NoiseChange = 11.5
var calcPPosition = 0
var xup = 0
var zup = 0
func _physics_process(delta):
	calcPPosition = PPosition.x - (10 * xup)
	print("calcPPosition = ",calcPPosition," :: xup = ",xup," :: zup = ",zup)
	if calcPPosition >= 10:
		$poscontroller.translate(Vector3(NoiseChange, 0, 0))
		xup += 1
	if calcPPosition < 0:
		$poscontroller.translate(Vector3(-NoiseChange, 0, 0))
		xup -= 1
	calcPPosition = PPosition.z - (10 * zup)
#	while calcPPosition != 0:
#		if calcPPosition > 10:
#			$poscontroller.translate(Vector3(0, 0, NoiseChange))
#		if calcPPosition < 10:
#			$poscontroller.translate(Vector3(0, 0, -NoiseChange))
		
func _on_S_Main_PlayerPosition(pos):
	PPosition = pos
	

