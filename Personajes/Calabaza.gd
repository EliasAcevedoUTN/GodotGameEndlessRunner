extends KinematicBody2D

signal golpe

#########mismos comentarios que en el script de Caballero###########

export var velocidad_salto = 380
export var gravedad = 500


var distancia = Vector2()
var veloc_vec = Vector2()



# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(true) 
	$Imagen.play("run")
	pass 

func _physics_process(delta):
	_mover(delta)



func _mover(delta):
	
	veloc_vec.y += gravedad*delta 
	
	if is_on_floor():
		 
		veloc_vec.y = 0
		if (Global.player_1 == Global.calabaza_string):
			if Input.is_action_just_pressed("saltar_p1"):
				veloc_vec.y = -velocidad_salto 
				$Imagen.animation = "jump"
			else:
				$Imagen.animation = "run"
		else:
			if Input.is_action_just_pressed("ui_up"):
				veloc_vec.y = -velocidad_salto 
				$Imagen.animation = "jump"
			else:
				$Imagen.animation = "run"
	move_and_slide(veloc_vec, Vector2(0,-1))

