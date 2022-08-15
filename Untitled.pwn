/*
|                                                           |
|-----------------------------------------------------------|
|	             MAKED BY XITEZ                             |
|	  TELEGRAM : @XITEZReal - DISCORD : Arvin#3108          |
|     Email : Imxitez@gmail.com - Github XiteZReal          |
|-----------------------------------------------------------|
|                                                           |
*/
#include <a_samp>
#include <discord-connector>
main() {}
new kos;

public OnPlayerConnect(playerid)
{
    kos++;
	return 1;
}

public OnPlayerDisconnect(playerid)
{
    kos--;
	return 1;
}

public OnGameModeInit()
{
   SetTimer("DiscordBotSetPlayer", 1000, true);
   return 1;
}

forward DiscordBotSetPlayer(playerid);
public DiscordBotSetPlayer(playerid)
{
	new koshad[256];
    format(koshad,sizeof(koshad), "%d/%d Players", kos, GetMaxPlayers());
    DCC_SetBotActivity(koshad);
    DCC_SetBotPresenceStatus(DCC_BotPresenceStatus:3);
    return 1;
}
