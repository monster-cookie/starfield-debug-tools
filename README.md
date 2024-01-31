# Venworks Debug Tools

## Setup custom fast travel points

**Do not remove the 3 fast travel targets that are already in the list.**

You need to fast travel to world space cells from the interior debug cell. If you try from a world space cell it will start the fast travel then goto a endless loading screen and sometimes crashing your video card. 

Please note, when adding you markers to the overridden VPDT_FT_Destinations list you may have to add the master first. xedit/sf1edit are a bit weird in their automatic add master call. 

1. Open xedit/sf1edit
1. Create a new patch ESM. I used the name VenpiDebugTools-MyTargetPoints-Patch.esm
1. In VenpiDebugTools override FormID List VPDT_FT_Destinations and Message VPDT_FT_Titles into the new file in step 1
1. Add the XMarkerHeading or COCMarkers for your cells (Normal Interior and World Space) to the VPDT_FT_Destinations
1. Add new menu items for the destination to VPDT_FT_Titles make sure the menu button IDs match the FormID List indexes.
1. Exit xedit/sf1edit saving your new file and place it where ever your need to for your installation. 
1. Start Starfield
1. Load your save 
1. Open the console usually ~
1. Type and execute: CGF "VPDT_Debug.FastTravelLocations"
1. Close the console usually ~
1. Choose your poison and fast travel

### Example settings for VPDT_FT_Destinations
[Example settings for VPDT_FT_Destinations](./Documentation/images/VPDT_FT_Destinations.png)


### Example settings for VPDT_FT_Titles
[Example Settings for VPDT_FT_Titles](./Documentation/images/VPDT_FT_Titles.png)

### Updated Fast Travel menu
[Screenshot of the rendered in game menu](./Documentation/images/InGameFastTravelMenu.png)
