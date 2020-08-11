extends KinematicBody2D

signal golpe
signal muerto

#variables para agregar a los vectores para que se mueva el personaje
export var velocidad_salto = 380
export var gravedad = 500

#vectores para mover el personaje
var distancia = Vector2()
var veloc_vec = Vector2()



# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(true) #activiamos el proceso fisico
	$Imagen.play("run")#activamos el animated sprite para que se mueva el personaje
	
	pass # Replace with function body.

#funcion que se ejecuta al menos 60 por segundo
func _physics_process(delta):
	_mover(delta)#llamamos a la funcion de mover
	




func _mover(delta):
	#aplicamos la gravedad, la cual se aplica constantemente
	veloc_vec.y += gravedad*delta 
	
	#preguntamos si estamos en el piso
	if is_on_floor():
		#cuando esta en tierra cancelamos la gravedad 
		veloc_vec.y = 0 #la gravedad la anulamos
		if (Global.player_1 == Global.caballero_string):
			if Input.is_action_just_pressed("saltar_p1"):#si toca el boton de saltar entonces aplicamos el salto
				veloc_vec.y = -velocidad_salto #negativo porque para subir necesitamos restar en y, 
				#agregamos el valor a la coordenada y del vector de dezplazamiento
				
				
				$Imagen.animation = "jump"#mostramos animacion de saltar cuando salta
			else:
				$Imagen.animation = "run"#mostramos la animacion de correr
		else:
			if Input.is_action_just_pressed("ui_up"):#si toca el boton de saltar entonces aplicamos el salto
				veloc_vec.y = -velocidad_salto #negativo porque para subir necesitamos restar en y
				$Imagen.animation = "jump"
			else:
				$Imagen.animation = "run"
	#aplicamos el metodo para mover en la direccion del vector de movimiento definido veloc_vec con las coordenadas aplicadas anteriormente
	move_and_slide(veloc_vec, Vector2(0,-1))
	#move_and_collide(veloc_vec)

# Called every frame. 'delta' is the elapsed time since the previous frame.






func _on_Area2D_body_entered(body):
	if (body is StaticBody2D):
		print("choco algo duro")
	pass # Replace with function body.
