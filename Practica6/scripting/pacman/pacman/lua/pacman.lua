width = 300
--Variables para configurar un poco el juego
coin_score = 20
coin_bronce = 60
PowerUp = {}
PowerUp.Score_Eat = 100
PowerUp.Time = 20
PowerUp.Pacman_Velocity = 2
PowerUp.R_Color_Pacman = 255
PowerUp.G_Color_Pacman = 100
PowerUp.B_Color_Pacman = 255
--Definir la funcion para cambiar el color del pacman con respecto al numero de vidas
function changeColorPacman (number_lifes) -- Para los colores https://htmlcolorcodes.com/es/
	if number_lifes == 1.5 then
		return 255,0,0
	elseif number_lifes == 1 then
	    return 255,90,5
	elseif number_lifes == 0.5 then
	    return 0,255,0
	elseif number_lifes == 0 then
	    return 0,0,255
	end
end

changeColorPacman (num_lifes_pacman)

function getWidth()
	return 200
end