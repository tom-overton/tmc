@ Hyrule Town Kinstone cutscene Kid 2
SCRIPT_START script_KidKinstone2
	BeginBlock
	_0807E9D4
	_0807EB44 0x0002
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x0008
	SetEntitySpeed 0x0080
	DoPostScriptAction 0x000b
	EndBlock
	Call sub_0807F348
	WaitForSyncFlagAndClear 0x00000008
	DoPostScriptAction 0x0007
	_0807EDD4 0x01d8, 0x0328
	_0807EDD4 0x01f8, 0x0348
	_0807EB44 0x0000
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
	SetSyncFlag 0x00000100
script_0800F478:
	EndBlock
	BeginBlock
	CheckEntityInteractType
	JumpIfNot script_0800F490
	EndBlock 
	_0807E864 
	_0807EB74 
	MessageNoOverlap 0x1238
	WaitUntilTextboxCloses
	_0807E878 
script_0800F490:
	CheckSyncFlagAndClear 0x00000008
	JumpIfNot script_0800F478
	EndBlock
	DoPostScriptAction 0x000b
	Wait 0x0018
	SetEntitySpeed 0x0100
	_0807EC94 0x0010
	_0807EC64 0x0020
	_0807EDD4 0x0288, 0x0328
	SetSyncFlag 0x00000100
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000