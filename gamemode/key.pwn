#include <a_samp>

main() {}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if((newkeys & KEY_JUMP) && (newkeys & KEY_SPRINT) && !IsPlayerInAnyVehicle(playerid))
	{
		ApplyAnimation(playerid, "PED", "GETUP_FRONT", 4.0,0,0,0,0,0);
		SetTimerEx("ClearAnim",2000,0,"d",playerid);
	}
    return 1;
}