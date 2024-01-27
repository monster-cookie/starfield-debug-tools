ScriptName VPDT_FastTravelMenuScript extends ObjectReference Const

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
Event OnTerminalMenuItemRun(Int auiMenuItemID, TerminalMenu akTerminalBase, ObjectReference akTerminalRef)
  VPI_Debug.DebugMessage(Venpi_ModName, "VPDT_FastTravelMenuScript", "OnTerminalMenuItemRun", "OnTerminalMenuItemRun triggered and menu item " + auiMenuItemID +" was clicked.", 0, Venpi_DebugEnabled.GetValueInt())
EndEvent