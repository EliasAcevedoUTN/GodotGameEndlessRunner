extends Node


var puntaje : int
#direcciones de las escenas de los personajes y las nodos de las escenas donde se guardan los personajes
var caballero_string : String = "res://Personajes/Caballero.tscn"
var calabaza_string: String = "res://Personajes/Calabaza.tscn"
var ninja_string : String = "res://Personajes/Ninja.tscn"
var robot_string : String = "res://Personajes/Robot.tscn"

#direcciones de los diferentes niveles
var game1_string : String = "res://Game1.tscn"
var game2_string : String = "res://Game2.tscn"
var game3_string : String = "res://Game3.tscn"

var nivel_seleccionado : String

#direcciones de las escenas de los obstaculos
var pinches_string : String = "res://Obstaculos/Obstaculo.tscn"
var bomba_string : String = "res://Obstaculos/Bomba.tscn"


#variales de puntaje
var puntaje_p1 : int  = 0
var puntaje_p2 : int = 0

#variables de mejores puntaje por nivel
var puntaje_max_nivel1 : int = 0
var puntaje_max_nivel2 : int = 0
var puntaje_max_nivel3 : int = 0

#variables para saber cuantos jugadores van a jugar al juego
var multijugador : bool = false
var jugador1_elegido : bool = false

#variables en donde se almacenaran los personajes con los cuales se jugaran
var player_1 : String
var player_2 : String
var Jugador1 : KinematicBody2D
var Jugador2 : KinematicBody2D

#Variables con las vidas
var vidas_j1 = 3
var vidas_j2 = 3
var puntaje_j1 = 0
var puntaje_j2 = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


