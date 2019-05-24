#include <pacman_include.hpp>
#include <stdio.h> 
#include "lua.h"
#include "lauxlib.h"
#include "lualib.h"

int num_coins = 0;
int value_coins = 0;
int point_bronce = 0;
const int platas_para_oro = 5;
const int bronces_para_plata = 100;
int score_eat_powerup = 0;
float color_pacman_r_powerup = 0.0f;
float color_pacman_g_powerup = 0.0f;
float color_pacman_b_powerup = 0.0f;
float speed_multiplier_powerup = 0.0f;
float time_powerup = 0.0f;
const float max_vida = 1.5f;
float vida = max_vida;


void main() {

	lua_State *L = luaL_newstate(); 
	/* creael entornode lua */ 
	luaL_openlibs(L);
	/* abrelas librerias*/ 
	int error = luaL_loadfile(L, "lua/pacman.lua"); 
	/* carga el codigo en la pila */ 
	error |= lua_pcall(L, 0, 0, 0); 
	/* ejecuta el codigo */
	if (error) 
	{ 
		fprintf(stderr, "%s", lua_tostring(L, -1));
		/* el mensajede error estaen la cima de la pila */ 
		lua_pop(L, 1); 
		/* quitarel mensajede error de la pila */
	}
	lua_getglobal(L, "coin_score");
	lua_getglobal(L, "coin_bronce");
	lua_getglobal(L, "PowerUp");
	lua_getfield(L, -1, "Score_Eat");
	lua_getfield(L, -2, "Time");
	lua_getfield(L, -3, "Pacman_Velocity");
	lua_getfield(L, -4, "R_Color_Pacman");
	lua_getfield(L, -5, "G_Color_Pacman");
	lua_getfield(L, -6, "B_Color_Pacman");
	lua_getglobal(L, "changeColorPacman");
	lua_pushnumber(L, vida);
	lua_pcall(L, 1, 3, 0);
	value_coins = lua_tonumber(L, -12);
	point_bronce = lua_tonumber(L, -11);
	score_eat_powerup = lua_tonumber(L, -9);
	time_powerup = lua_tonumber(L, -8);
	speed_multiplier_powerup = lua_tonumber(L, -7);
	color_pacman_r_powerup = lua_tonumber(L, -3);
	color_pacman_g_powerup = lua_tonumber(L, -2);
	color_pacman_b_powerup = lua_tonumber(L, -1);
	lua_close(L); /* cierra el entorno*/ 
}

bool pacmanEatenCallback(int& score, bool& muerto)
{ // Pacman ha sido comido por un fantasma
	vida -= 0.5f;
	muerto = vida < 0.0f;

	return true;
}

bool coinEatenCallback(int& score)
{ // Pacman se ha comido una moneda
	++num_coins;
	score = num_coins * value_coins;

	return true;
}

bool frameCallback(float time)
{ // Se llama periodicamente cada frame
	main();
	return false;
}

bool ghostEatenCallback(int& score)
{ // Pacman se ha comido un fantasma
	return false;
}

bool powerUpEatenCallback(int& score)
{ // Pacman se ha comido un powerUp
	setPacmanSpeedMultiplier(speed_multiplier_powerup);
	setPacmanColor(color_pacman_r_powerup, color_pacman_g_powerup, color_pacman_b_powerup);
	setPowerUpTime(time_powerup);

	score += score_eat_powerup;

	return true;
}

bool powerUpGone()
{ // El powerUp se ha acabado
	setPacmanColor(255, 0, 0);
	setPacmanSpeedMultiplier(1.0f);
	return true;
}

bool pacmanRestarted(int& score)
{
	score = 0;
	num_coins = 0;
	vida = max_vida;

	return true;
}

bool computeMedals(int& oro, int& plata, int& bronce, int score)
{
	plata = score / bronces_para_plata;
	bronce = (score % bronces_para_plata)/ point_bronce;
	
	oro = plata / platas_para_oro;
	plata = plata % platas_para_oro;

	return true;
}

bool getLives(float& vidas)
{
	vidas = vida;
	return true;
}

bool setImmuneCallback()
{
    return true;
}

bool removeImmuneCallback()
{
    return true;
}

bool InitGame()
{
	main();
    return true;
}

bool EndGame()
{
    return true;
}