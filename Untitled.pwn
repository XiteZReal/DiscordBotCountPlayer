/*
| Telegram : @XiteZReal - Github : XiteZReal
*/     
main() {}
#include <a_samp>
#include <discord-connector>
public OnGameModeInit() {
   SetTimer("DiscordBotSetPlayer", 1000, true);
   return 1;
}
forward DiscordBotSetPlayer(playerid);
public DiscordBotSetPlayer(playerid) {
    new koshad[256];
    format(koshad,sizeof(koshad), "%d/%d Players", GetPlayers(), GetMaxPlayers());
    DCC_SetBotActivity(koshad);
    return 1;
}
stock GetPlayers() {
    new players, nmd = GetPlayerPoolSize();
    while(0 <= nmd)
    {
        if(IsPlayerConnected(nmd)) players++;
        nmd--;
    }
    return players;
}
