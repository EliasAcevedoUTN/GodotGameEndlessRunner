extends Node

#señales propias
signal golpe


#creamos las variables donde van nuestros obstaculos
var obs : Area2D = null
var bomb : Area2D = null

#personajes
var personaje1
var personaje2
var obstaculo
var bomba
#arreglo aleatorio para que vayan apareciendo los obstaculos
#estas son las coordenadas del vector en y
var posiciones_y = [426,298,160]

# Called when the node enters the scene tree for the first time.
func _ready():
	#Arrancamos el nodo timer
	$Obstaculos.start()
	
	randomize()#para que todo los obstaculos sean aleatorios
	
	#instaciamos el nivel1
	var Nivel : StaticBody2D = load("res://Niveles/Nivel1.tscn").instance()
	add_child(Nivel)#agregamos el nivel a la escena de Game1
	
	#creamos los personajes
	if (Global.multijugador): #preguntamos si son dos jugadores
		Global.Jugador1 = load(Global.player_1).instance()
		Global.Jugador2 = load(Global.player_2).instance()
		add_child(Global.Jugador1)
		add_child(Global.Jugador2)
		Global.Jugador1.position = Vector2(300,300)
		Global.Jugador2.position = Vector2(500,300)
		#asignamos los jugadores a las variables de los personajes 
		personaje1 = Global.Jugador1
		personaje2 = Global.Jugador2
		personaje1.connect("golpe", self, "_player_golpe")
		
	else: #si es un jugador
		Global.Jugador1 = load(Global.player_1).instance() #instanciamos el jugador
		add_child(Global.Jugador1)#lo agregamos a la escena
		Global.Jugador1.position = Vector2(300,300)#indicamos la posicion del jugador
		
	
	#cuando oprimimos pausa este nodo se muestra en pantalla
	$Control.hide()
	
	
	
	pass 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#controlamos el tema de las vidas
	
	
	if Input.is_action_pressed("pausar"):#si apretamos pausa
		$Control.show()
		emit_signal("pressed", _on_Pausa_pressed())#emitimos la señal de pressed para que se ejecute el evento asociado
	pass


#cuando el timer termina cada 3 segundos se ejecuta esta funcion
func _on_Obstaculos_timeout():
	obs = load("res://Obstaculos/Obstaculo.tscn").instance()#instanciamos los obstaculos
	obs.position = Vector2(704,416)#posicion de los obstaculos
	obstaculo = obs
	add_child_below_node(self, obs)#agregamos a la escena
	bomb = load("res://Obstaculos/Bomba.tscn").instance()
	bomb.position = Vector2(704, posiciones_y[randi() % posiciones_y.size() - 1])#posicion de las bolas de fuego
	bomba = bomb
	
	add_child_below_node(self, bomb)#agregamos a la escena
	pass # Replace with function body.

#si oprimimos pausa
func _on_Pausa_pressed():
	$Control.show()
	$Control/Label.text = "desea continuar"
	if get_tree().paused == true:#si esta oprimida se sale
		get_tree().paused = false
	else:#si no esta oprimida se activa
		get_tree().paused = true
	pass # Replace with function body.

#si apretamos si en continuar
func _on_si_pressed():
	$Control/Label.text = "continuamos!!" #cambiamos el texto
	yield(get_tree().create_timer(0.5), "timeout") #
	$Control.hide()#escondemos los botones de salir o quedarse
	_on_Pausa_pressed() #llamamos al metodo para que saque la pausa
	$Control.hide()
	pass # Replace with function body.


func _on_no_pressed():#si oprimimos no para salir se ejecuta esta funcion
	$Control/Label.text = "adios!!"#mensaje mostrado por unos segundos
	yield(get_tree().create_timer(0.5), "timeout")
	_on_Pausa_pressed()
	#hacemos el multijugador false de nuevo
	Global.multijugador = false
	Global.jugador1_elegido = false
	$Control.hide()
	get_tree().change_scene("res://Inicio.tscn")#cambiamos la escena al inicio	
	pass # Replace with function body.
