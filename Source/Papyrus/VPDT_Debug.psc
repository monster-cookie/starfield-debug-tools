ScriptName VPDT_Debug

;;
;; MAJOR NOTE: ALL FUNCTIONS MUST BE GLOBAL WITHOUT CREATION KIT
;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions
;;;

;; Call using: CGF "VPDT_Debug.FeatureFlags" 
Function FeatureFlags() Global
  GlobalVariable Venpi_DebugEnabled = Game.GetFormFromFile(0x00000800, "VenpiCore.esm") as GlobalVariable

  String message = "Current Feature Flag Settings (1-On, 0=Off)\n\n"
  message += "     Debug Mode = " + Venpi_DebugEnabled.GetValueInt() + "\n"

  Debug.MessageBox(message)
  Debug.Trace(message, 2)
EndFunction

;; Call using: CGF "VPDT_Debug.ToggleDebugMode" 
Function ToggleDebugMode() Global
  GlobalVariable Venpi_DebugEnabled = Game.GetFormFromFile(0x00000800, "VenpiCore.esm") as GlobalVariable
  If (Venpi_DebugEnabled == None)
    Debug.MessageBox("Failed to find Venpi_DebugEnabled global variable in VenpiCore.esm. Please contact Venpi for help.")
    Return
  Else
    If (Venpi_DebugEnabled.GetValueInt() == 0)
      Venpi_DebugEnabled.SetValueInt(1)
    Else
      Venpi_DebugEnabled.SetValueInt(0)
    EndIf
  EndIf
EndFunction

;; Call using: CGF "VPDT_Debug.FastTravelLocations"
Function FastTravelLocations() Global
  FormList VPDT_FT_Destinations = Game.GetFormFromFile(0x00000856, "VenpiDebugTools.esm") as FormList
  If (VPDT_FT_Destinations == None)
    Debug.MessageBox("Failed to find VPDT_FT_Destinations FormList in VenpiDebugTools.esm. Please contact Venpi for help.")
    Return
  EndIf

  Message VPDT_FT_Titles = Game.GetFormFromFile(0x00000858, "VenpiDebugTools.esm") as Message
  If (VPDT_FT_Titles == None)
    Debug.MessageBox("Failed to find VPDT_FT_Titles Message in VenpiDebugTools.esm. Please contact Venpi for help.")
    Return
  EndIf

  Int ftTarget = VPDT_FT_Titles.Show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
  Form targetForm = VPDT_FT_Destinations.GetAt(ftTarget)
  Game.FastTravel(targetForm as ObjectReference)
EndFunction
