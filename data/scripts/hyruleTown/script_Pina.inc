@ Hyrule Town Pina
SCRIPT_START script_Pina
	BeginBlock
	_0807EB44 0x0004
	_0807E930 0x0000
	Call sub_08063CAC
	DoPostScriptAction 0x000a
	Call sub_0807F348
	EndBlock
script_080104BC:
	CheckEntityInteractType
	JumpIfNot script_080104BC
	_0807E864
	_0807EB74
	CallWithArg sub_0807F3D8, 0x00000004
	Call sub_08063C90
	WaitUntilTextboxCloses
	Wait 0x000f
	_0807E878
	CallWithArg sub_0807F3D8, 0x00000000
	Jump script_080104BC