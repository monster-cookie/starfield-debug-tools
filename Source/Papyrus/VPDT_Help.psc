ScriptName VPDT_Help

;;
;; MAJOR NOTE: ALL FUNCTIONS MUST BE GLOBAL WITHOUT CREATION KIT
;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions
;;;

;; Call using: CGF "VPDT_Help.Show" 
Function Show() Global
  String message = "Cora is a completely stand alone companion based on the variant universe version of here combined with the hunter/emissary.\n" 
  message += "\n\nHow to use\n\n"
  message += "    To toggle debug mode and logging:\n\tCGF \"VPDT_Debug.ToggleDebugMode\"\n"
  message += "         Feature Flags Status Screen:\n\tCGF \"VPDT_Debug.FeatureFlags\"\n"

  ;; Fast Travel Helpers
  message += "           Fast Travel To Debug Cell:\n\tCGF \"VPDT_Debug.FastTravelToDebugCell\"\n"
  message += "    Fast Travel To Debug World Space:\n\tCGF \"VPDT_Debug.FastTravelToDebugWorldSpace\"\n"
  message += "            Fast Travel To The Lodge:\n\tCGF \"VPDT_Debug.FastTravelToLodge\"\n"

  ;; COC Helpers
  message += "Center On Cell To Debug World Space*:\n\tcoc VENPI_WORLD_DEBUG_PRI_CELL\n"

  ;; Footer notes
  message += "\n\nTo COC you must come from an interior cell like the Lodge or your ship."

  Debug.MessageBox(message)
EndFunction
