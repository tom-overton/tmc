@ Player in Sanctuary move towards picture
SCRIPT_START script_PlayerMoveToPicture
	BeginBlock
	SetEntitySpeed 0x0080
	EndBlock
	DoPostScriptAction 0x0001
	_0807EC64 0x0020
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000002
	Call sub_080791BC
SCRIPT_END
	.2byte 0x0000