/// scrNetworkingConstants()

// packet types from server
globalvar NF_OBJ_CREATE, NF_OBJ_UPDATE, NF_OBJ_DESTROY, NF_SOUND_PLAY, NF_EFFECT_CREATE, NF_KICK, NF_HUD;
NF_OBJ_CREATE = 0
NF_OBJ_UPDATE = 1
NF_OBJ_DESTROY = 2
NF_SOUND_PLAY = 3
NF_EFFECT_CREATE = 4
NF_KICK = 6
NF_HUD = 6

// packet types to server
globalvar NF_INPUT;
NF_INPUT = 0

// broadcast types from server
globalvar NF_SERVER_ANNOUNCE, NF_CLIENT_ANNOUNCE;
NF_SERVER_ANNOUNCE = 0
NF_CLIENT_ANNOUNCE = 1

