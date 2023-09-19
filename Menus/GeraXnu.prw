#include "protheus.ch"

//-------------------------------------------------------------------
/*/{Protheus.doc} GERA_MENU()
Função que Veriica transforma o Menu no banco do Protheus em um arquivo XNU
@Cliente GERUPD
@type  function
@author Roberta Soares
@site https://www.linkedin.com/in/roberta-soares-dos-santos-alves-73883035/
@since 18/09/2023
@version 1.0
/*/
//-------------------------------------------------------------------
User FuncTion GERA_MENU()
	Local aFuncoes    := {}
	Local aMenus      := {}
	Local cLocalMod   := tFileDialog("*.csv|*.CSV","Função x Menu ';' Modelo",0, ,.T.,GETF_LOCALHARD)

	If Len(LeArq(@aFuncoes,@aMenus,cLocalMod)) == 0
		Return
	EndIf

	GeraXNU(aFuncoes,aMenus,cLocalMod)

Return
