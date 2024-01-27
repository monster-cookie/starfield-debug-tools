ScriptName VPDT_FastTravelMenuFragmentScript extends TerminalMenu Const

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Global Variables
;;;
GlobalVariable Property Venpi_DebugEnabled Auto Const Mandatory
String Property Venpi_ModName="VenworksDebugTools" Auto Const Mandatory

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Events
;;;
Event OnTerminalMenuEnter(TerminalMenu akTerminalBase, ObjectReference akTerminalRef)
  VPI_Debug.DebugMessage(Venpi_ModName, "VPDT_FastTravelMenuFragmentScript", "OnTerminalMenuEnter", "OnTerminalMenuEnter triggered.", 0, Venpi_DebugEnabled.GetValueInt())
EndEvent

Event OnTerminalMenuItemRun(Int auiMenuItemID, TerminalMenu akTerminalBase, ObjectReference akTerminalRef)
  VPI_Debug.DebugMessage(Venpi_ModName, "VPDT_FastTravelMenuFragmentScript", "OnTerminalMenuItemRun", "OnTerminalMenuItemRun triggered and menu item " + auiMenuItemID +" was clicked.", 0, Venpi_DebugEnabled.GetValueInt())
EndEvent


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Fragments
;;;
Function Fragment_TerminalMenu_00()
  VPI_Debug.DebugMessage(Venpi_ModName, "VPDT_FastTravelMenuFragmentScript", "Fragment_TerminalMenu_00", "Terminal menu item 0 was clicked.", 0, Venpi_DebugEnabled.GetValueInt())
EndFunction

Function Fragment_TerminalMenu_01()
  VPI_Debug.DebugMessage(Venpi_ModName, "VPDT_FastTravelMenuFragmentScript", "Fragment_TerminalMenu_01", "Terminal menu item 1 was clicked.", 0, Venpi_DebugEnabled.GetValueInt())
EndFunction

Function Fragment_TerminalMenu_02()
  VPI_Debug.DebugMessage(Venpi_ModName, "VPDT_FastTravelMenuFragmentScript", "Fragment_TerminalMenu_02", "Terminal menu item 2 was clicked.", 0, Venpi_DebugEnabled.GetValueInt())
EndFunction

Function Fragment_TerminalMenu_03()
  VPI_Debug.DebugMessage(Venpi_ModName, "VPDT_FastTravelMenuFragmentScript", "Fragment_TerminalMenu_03", "Terminal menu item 3 was clicked.", 0, Venpi_DebugEnabled.GetValueInt())
EndFunction

Function Fragment_TerminalMenu_04()
  VPI_Debug.DebugMessage(Venpi_ModName, "VPDT_FastTravelMenuFragmentScript", "Fragment_TerminalMenu_04", "Terminal menu item 4 was clicked.", 0, Venpi_DebugEnabled.GetValueInt())
EndFunction

Function Fragment_TerminalMenu_05()
  VPI_Debug.DebugMessage(Venpi_ModName, "VPDT_FastTravelMenuFragmentScript", "Fragment_TerminalMenu_05", "Terminal menu item 5 was clicked.", 0, Venpi_DebugEnabled.GetValueInt())
EndFunction
