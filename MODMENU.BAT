@echo off
:: Resize the CMD window
mode con: cols=100 lines=40

:: Set character encoding for proper text display
chcp 65001 >nul
setlocal EnableDelayedExpansion
title DSC.GG/143X's Script Tutorial


:MainMenu
cls
color 1F

:: Big bubbly header
echo ██████╗ ███████╗ ██████╗    ██████╗  ██████╗     ██╗ ██╗██╗  ██╗██████╗ ██╗  ██╗
echo ██╔══██╗██╔════╝██╔════╝   ██╔════╝ ██╔════╝    ██╔╝███║██║  ██║╚════██╗╚██╗██╔╝
echo ██║  ██║███████╗██║        ██║  ███╗██║  ███╗  ██╔╝ ╚██║███████║ █████╔╝ ╚███╔╝ 
echo ██║  ██║╚════██║██║        ██║   ██║██║   ██║ ██╔╝   ██║╚════██║ ╚═══██╗ ██╔██╗ 
echo ██████╔╝███████║╚██████╗██╗╚██████╔╝╚██████╔╝██╔╝    ██║     ██║██████╔╝██╔╝ ██╗
echo ╚═════╝ ╚══════╝ ╚═════╝╚═╝ ╚═════╝  ╚═════╝ ╚═╝     ╚═╝     ╚═╝╚═════╝ ╚═╝  ╚═╝
echo.

:: NOTE: DO NOT DOUBLE CLICK TO OPEN THIS FILE.
echo.
echo To run this script properly, you must open it through the Command Prompt (CMD).
echo.
echo Follow these steps to open the file via CMD:
echo 1. Press `Win + R`, type "cmd" and press Enter to open Command Prompt.
echo 2. Navigate to the directory where the script is located using the `cd` command.
echo    Example: cd C:\path\to\your\script
echo 3. Type the script's filename (e.g., `MODMENU.BAT`) and press Enter to run it.
echo.
echo This ensures the script runs as intended and prevents unexpected behavior.
echo.

:: Set menu color AFTER banner
color 0A

:: Menu header and options
echo =======================================
echo Welcome to the AHK COD Script Tutorial!
echo =======================================
echo.
echo 1. SCRIPT SETUP
echo 2. MAIN SETTINGS PAGE
echo 3. MAIN LOOP OVERVIEW
echo 4. HOTKEYS FOR SCRIPT CONTROL
echo 5. TUTORIAL FOR FEATURES/MODES
echo 6. SUMMARY OF FEATURES
echo 7. SUMMARY OF WEAPONS MENU
echo 8. WEAPON OFFSETS (COMING SOON)
echo 9. LINKS
echo 10. AHK2EXE (Convert AHK to EXE)
echo 11. EXIT
echo.

set /p option=Choose an option (1-11): 

if "%option%"=="1" goto ScriptSetup
if "%option%"=="2" goto MainSettings
if "%option%"=="3" goto MainLoop
if "%option%"=="4" goto Hotkeys
if "%option%"=="5" goto TutorialModes
if "%option%"=="6" goto FeaturesSummary
if "%option%"=="7" goto WeaponsMenu
if "%option%"=="8" goto WeaponOffsets
if "%option%"=="9" goto Links
if "%option%"=="10" goto AHK2EXE
if "%option%"=="11" exit /b

goto MainMenu


:: If an invalid input, inform the user and go back to the menu
echo Invalid option, please try again.
pause >nul
goto MainMenu

:: Links Section
:Links
cls
color 0A

:: Displaying the Links Section
echo ==============================================
echo                 LINKS TO RESOURCES
echo ==============================================

:: Discord link
echo.
echo ██████╗ ██╗███████╗ ██████╗ ██████╗ ██████╗ ██████╗ 
echo ██╔══██╗██║██╔════╝██╔════╝██╔═══██╗██╔══██╗██╔══██╗
echo ██║  ██║██║███████╗██║     ██║   ██║██████╔╝██║  ██║
echo ██║  ██║██║╚════██║██║     ██║   ██║██╔══██╗██║  ██║
echo ██████╔╝██║███████║╚██████╗╚██████╔╝██║  ██║██████╔╝
echo ╚═════╝ ╚═╝╚══════╝ ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚═════╝ 
echo.
echo DISCORD: https://dsc.gg/143X
echo.

:: GitHub link
echo ██████╗ ██╗████████╗██╗  ██╗██╗   ██╗██████╗ 
echo ██╔══██╗██║╚══██╔══╝██║  ██║██║   ██║██╔══██╗
echo ██║  ███╗██║   ██║   ███████║██║   ██║██████╔╝
echo ██║   ██║██║   ██║   ██╔══██║██║   ██║██╔══██╗
echo ╚██████╔╝██║   ██║   ██║  ██║╚██████╔╝██████╔╝
echo ╚═════╝ ╚═╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝ ╚═════╝ 
echo.
echo GITHUB: https://github.com/Dxxthly
echo.

:: YouTube link
echo ██╗   ██╗ ██████╗ ██╗   ██╗████████╗██╗   ██╗██████╗ ███████╗
echo ╚██╗ ██╔╝██╔═══██╗██║   ██║╚══██╔══╝██║   ██║██╔══██╗██╔════╝
echo  ╚████╔╝ ██║   ██║██║   ██║   ██║   ██║   ██║██████╔╝█████╗  
echo   ╚██╔╝  ██║   ██║██║   ██║   ██║   ██║   ██║██╔══██╗██╔══╝  
echo    ██║   ╚██████╔╝╚██████╔╝   ██║   ╚██████╔╝██████╔╝███████╗
echo    ╚═╝    ╚═════╝  ╚═════╝    ╚═╝    ╚═════╝ ╚═════╝ ╚══════╝
echo.
echo YOUTUBE: https://youtube.com/qwoah
echo.

:: Return to Main Menu
echo ================================
echo 1. Return to Main Menu
echo ================================
set /p option=Choose an option (1):

if "%option%"=="1" goto MainMenu




:ScriptSetup
cls
echo ============================
echo TUTORIAL FOR BEGINNERS
echo ============================
echo Step 1: Script Setup
echo ----------------------
echo This script needs to be saved with a specific filename (143X93482939df.exe).
echo This is if you choose for this feature to be in your script to run it.
echo If not, it can be any name.. This makes so someone can't change the name.
echo TIP: Random characters are easier to bypass ANTI-CHEAT detection.
echo 143X93482939df is just random generated name.
echo If you haven't converted your AHK to EXE using AHK2EXE then save as .ahk
echo Make sure to rename your script if it has a different name.
echo The script will ensure that only one instance is running at a time, so if it's already open,
echo it will close the old instance and start fresh.
echo.
echo Step 2: Adjusting the Settings
echo ------------------------------
echo The script allows you to set up key functions like controlling recoil, defining your aim/focus area, 
echo and setting up FOV (field of view).
echo.
echo You can adjust settings like:
echo - The color of the target dot (EMCol)
echo - The color variation tolerance (ColVn)
echo - The center of your aim area (ZeroX and ZeroY)
echo - Recoil control and lock-on strength
echo.
echo Step 3: Activating Features
echo ----------------------------
echo Several features are initially turned off and can be toggled on as needed, such as:
echo - Triggerbot: Automatically fires when an enemy is within your crosshair.
echo - ZombiesMode: A mode for zombie-themed gameplay.
echo - Anti-AFK: Keeps you from getting kicked for being inactive.
echo - And much more, including auto-pinging, semi-auto mode, and predictive aiming.
echo.
echo CODE EXPLANATION:
echo 1. Script Initialization and Settings:
echo ----------------------------
echo #NoEnv
echo #SingleInstance, Force
echo #Persistent
echo #NoEnv: Prevents checking for environment variables (for performance and security).
echo #SingleInstance, Force: Ensures only one instance of the script is running at a time. 
echo If the script is already running, it will forcefully close the old instance and start a new one.
echo #Persistent: Keeps the script running in the background (it won't exit automatically).
echo.
echo 2. Filename Check:
echo -------------------
echo requiredFilename := "143X93482939df.exe"
echo currentFilename := A_ScriptName
echo if (currentFilename != requiredFilename) {
echo     MsgBox, 48, Error, This script must be named "%requiredFilename%".`nPlease rename the file to continue.
echo     ExitApp
echo }
echo This checks if the script's filename matches a specific name (143X93482939df.exe). If it doesn't match, 
echo a message box will appear telling the user to rename the script, and then the script will exit.
echo.
echo 3. Hook and Key Settings:
echo -------------------------
echo #InstallKeybdHook
echo #UseHook
echo #HotKeyInterval 1
echo #MaxHotkeysPerInterval 127
echo SetKeyDelay, -1, 1
echo SetControlDelay, -1
echo SetMouseDelay, -1
echo SetWinDelay, -1
echo SendMode, InputThenPlay
echo SetBatchLines, -1
echo ListLines, Off
echo CoordMode, Pixel, Screen, RGB
echo CoordMode, Mouse, Screen
echo #InstallKeybdHook: Installs a keyboard hook, which lets the script listen for keyboard events.
echo #UseHook: Ensures the use of hooks to capture inputs.
echo SetKeyDelay, -1, 1: Sets no delay between key presses.
echo SetControlDelay, SetMouseDelay, SetWinDelay: Sets no delay for controls, mouse, and window operations.
echo SendMode, InputThenPlay: Changes the sending method for simulated input (faster and more reliable).
echo SetBatchLines, -1: Ensures the script runs without interruption (fast execution).
echo ListLines, Off: Hides the script's execution log for a cleaner experience.
echo CoordMode, Pixel, Screen, RGB: Sets the coordinate mode for pixel operations to the entire screen and RGB color format.
echo CoordMode, Mouse, Screen: Sets the mouse coordinates to be based on the screen.
echo.
echo 4. Process and Priority Settings:
echo -------------------------------
echo PID := DllCall("GetCurrentProcessId")
echo Process, Priority, %PID%, High
echo PID := DllCall("GetCurrentProcessId"): Retrieves the process ID of the current script.
echo Process, Priority, %PID%, High: Sets the script's process priority to "High" for better performance.
echo.
echo 5. Initial Settings (Variables):
echo -------------------------------
echo EMCol := 0xDF00FF     ; Target dot color (purple)
echo ColVn := 40           ; Color variation tolerance
echo ZeroX := 955          ; Center X coordinate of your aim/focus area
echo ZeroY := 500          ; Center Y coordinate of your aim/focus area
echo CFovX := 200          ; Default FOV width
echo CFovY := 200          ; Default FOV height
echo RecoilControl := 0.8  ; Default recoil control (0.0 - 1.0 scale)
echo DefaultOffset := 0    ; Default offset value
echo LockOnStrength := 1   ; Default lock-on strength (1.0 scale)
echo These are the initial settings for things like:
echo - EMCol: The color of the target dot (purple in this case).
echo - ColVn: A tolerance level for color variation when detecting the target dot.
echo - ZeroX and ZeroY: Coordinates for the center of the aim/focus area.
echo - CFovX and CFovY: The field of view (FOV) dimensions.
echo - RecoilControl: A value to control recoil (from 0 to 1).
echo - DefaultOffset: Default offset used for aiming.
echo - LockOnStrength: Strength of the automatic lock-on (default is 1).
echo.
echo 6. Toggleable Variables:
echo -------------------------
echo FOVEnabled := false   ; FOV enabled state
echo ScriptEnabled := false  ; Main script state
echo TriggerbotEnabled := false ; Triggerbot enabled state
echo ZombiesMode := false  ; Zombies mode state (default: off)
echo DropshotEnabled := false ; Dropshot mode state (default: off)
echo ShotgunModeEnabled := false ; Shotgun mode state (default: off)
echo WeaponOffset := DefaultOffset  ; Offset from the dot
echo PredictionEnabled := false ; Predictive aiming state
echo MenuVisible := true    ; Menu visibility state
echo AntiAFKEnabled := false  ; Anti-AFK state (default: off)
echo AutoPingEnabled := false  ; Auto-ping state (default: off)
echo PingInterval := 5000      ; Ping interval in milliseconds (default: 5 seconds)
echo SemiAutoEnabled := false  ; Semi-auto mode state (default: off)
echo SemiAutoToggle := false   ; Toggle state for semi-auto mode (default: off)
echo These are all toggleable variables that determine the state of different features in the script.
echo For example:
echo - FOVEnabled: Whether the FOV is enabled or not.
echo - ScriptEnabled: If the main script is running.
echo - TriggerbotEnabled: Whether the triggerbot feature is active (automatically fires when a target is in sight).
echo - ZombiesMode, DropshotEnabled, ShotgunModeEnabled: Various game modes that can be toggled on or off.
echo - WeaponOffset: Adjusts the aiming offset for different weapons.
echo - PredictionEnabled: Whether the script uses predictive aiming to compensate for movement.
echo - MenuVisible: Whether the in-game menu is visible.
echo - AntiAFKEnabled: If anti-AFK is enabled (prevents being kicked for inactivity).
echo - AutoPingEnabled: Periodically pings the server to maintain connection.
echo - PingInterval: Time between each auto-ping.
echo - SemiAutoEnabled and SemiAutoToggle: Toggle semi-auto mode on/off.
echo.
echo Press any key to go back to the main menu.
pause >nul
goto MainMenu



:MainSettings
cls
echo ============================
echo MAIN SETTINGS TUTORIAL
echo ============================
echo Step 1: Main Settings Page (Page 1)
echo -----------------------------------
echo This page allows users to adjust various settings for the mod menu:
echo - Dot Color: Change the color of the target dot (input in hex format).
echo - FOV Width and Height: Set the dimensions of the field of view for the aim area.
echo - Recoil Control: Adjust the recoil control from 0 (no recoil control) to 1 (full recoil control).
echo - Default Offset: Set the default offset value for targeting.
echo - Lock-On Strength: Controls the strength of the automatic lock-on feature.
echo This page also has buttons for navigation and updating values.
echo.
echo Step 2: Toggle Settings Page (Page 2)
echo ------------------------------------
echo This page offers toggleable features:
echo - Enable FOV Display: Turns on or off the field of view display.
echo - Anti-AFK: Keeps you from being kicked for inactivity.
echo - Triggerbot: Automatically fires when an enemy is in your crosshairs.
echo - Dropshot, Shotgun Mode, Semi-Auto Mode, Zombies Mode: Different gameplay modes that you can toggle on or off.
echo - Multiplayer Mode: Default multiplayer mode setting.
echo - Auto-Ping: Periodically sends a ping to the server to maintain the connection.
echo - Ping Interval: Set the time interval (in milliseconds) between auto-pings.
echo.
echo Step 3: Navigating Between Pages
echo --------------------------------
echo You can switch between pages using the "Next Page" and "Previous Page" buttons.
echo The "Show Weapons Menu" button can be used to show a separate weapons menu (not shown in this snippet).
echo.
echo CODE EXPLANATION:
echo 1. Offsets Initialization:
echo --------------------------
echo ; Offsets
echo OffsetX := 0
echo OffsetY := 0
echo These variables (OffsetX and OffsetY) are used to define the initial offset values for targeting adjustments, 
echo but they're set to 0 for now.
echo.
echo 2. Create Main Settings GUI (Page 1):
echo ------------------------------------
echo Gui, MainMenu: New, +AlwaysOnTop +ToolWindow, %A_UserName%'s Menu: (Page 1)
echo Gui, MainMenu: Color, 0xE6E6FA  ; Light lavender background color
echo Gui, MainMenu: Font, s10, Segoe UI
echo Gui, MainMenu: Add, Text,, Dot Color (Hex):
echo Gui, MainMenu: Add, Edit, vDotColor, %EMCol%
echo Gui, MainMenu: Add, Text,, FOV Width:
echo Gui, MainMenu: Add, Edit, vCFovX, %CFovX%
echo Gui, MainMenu: Add, Text,, FOV Height:
echo Gui, MainMenu: Add, Edit, vCFovY, %CFovY%
echo Gui, MainMenu: Add, Text,, Recoil Control (0.0 - 1.0):
echo Gui, MainMenu: Add, Edit, vRecoilControl, %RecoilControl%
echo Gui, MainMenu: Add, Text,, Default Offset:
echo Gui, MainMenu: Add, Edit, vDefaultOffset, %DefaultOffset%
echo Gui, MainMenu: Add, Text,, Lock-On Strength (1.0 - 5.0):
echo Gui, MainMenu: Add, Edit, vLockOnStrength, %LockOnStrength%
echo Gui, MainMenu: Add, Button, gShowNextPage, Next Page >>
echo Gui, MainMenu: Add, Button, gUpdateValues, Update Values
echo Gui, MainMenu: Add, Text, Section, 
echo Gui, MainMenu: Add, Text, ys, Made by: 
echo Gui, MainMenu: Add, Text, cBlue gOpenYouTube, Teedo
echo Gui, MainMenu: Add, Text, ys, Discord: 
echo Gui, MainMenu: Add, Text, cBlue gOpenDiscord, Discord
echo Gui, MainMenu: Show
echo This creates the main settings page (Page 1) with options for the user to edit the dot color, FOV, recoil control, 
echo offset, and lock-on strength, along with buttons for navigation and updating values.
echo.
echo 3. Create Toggle Settings GUI (Page 2):
echo -------------------------------------
echo Gui, ToggleMenu: New, +AlwaysOnTop +ToolWindow, %A_UserName%'s Menu: (Page 2)
echo Gui, ToggleMenu: Color, 0xF0FFF0  ; Honeydew background color
echo Gui, ToggleMenu: Font, s10, Segoe UI
echo Gui, ToggleMenu: Add, Checkbox, vFOVCheckbox gToggleFOV, Enable FOV Display
echo Gui, ToggleMenu: Add, Checkbox, vAntiAFKCheckbox gToggleAntiAFK, Enable Anti-AFK
echo Gui, ToggleMenu: Add, Checkbox, vTriggerbotCheckbox gToggleTriggerbot, Enable Triggerbot
echo Gui, ToggleMenu: Add, Checkbox, vDropshotCheckbox gToggleDropshot, Enable Dropshot Mode
echo Gui, ToggleMenu: Add, Checkbox, vShotgunModeCheckbox gToggleShotgunMode, Enable Shotgun Mode
echo Gui, ToggleMenu: Add, Checkbox, vSemiAutoCheckbox gToggleSemiAuto, Enable Semi-Auto Mode
echo Gui, ToggleMenu: Add, Checkbox, vZombiesModeCheckbox gToggleZombiesMode, Zombies Mode
echo Gui, ToggleMenu: Add, Checkbox, vMultiplayerModeCheckbox gToggleMultiplayerMode Checked, Multiplayer Mode (Default)
echo Gui, ToggleMenu: Add, Checkbox, vAutoPingCheckbox gToggleAutoPing, Enable Auto-Ping
echo Gui, ToggleMenu: Add, Text,, Ping Interval (ms):
echo Gui, ToggleMenu: Add, Edit, vPingIntervalEdit, %PingInterval%
echo Gui, ToggleMenu: Add, Button, gShowPreviousPage, << Previous Page
echo Gui, ToggleMenu: Add, Button, gShowWeaponsMenu, Show Weapons Menu
echo This creates the toggle settings page (Page 2) where the user can enable or disable various features like FOV display, 
echo anti-AFK, triggerbot, different game modes, multiplayer mode, and auto-ping.
echo.
echo 4. Hide the Toggle Settings Page Initially:
echo -----------------------------------------
echo ; Hide the toggle settings page initially
echo Gui, ToggleMenu: Hide
echo This line ensures that the second page (the toggle settings) is hidden when the script first runs.
echo It will only be shown when needed (such as when navigating to it via the "Next Page" button).
echo DEBUG: Reached MainSettings. Preparing to pause.
echo.
echo Press any key to return to the main menu...
pause
goto MainMenu


:MainLoop
cls
echo ============================
echo MAIN LOOP TUTORIAL
echo ============================
echo Main Loop Overview:
echo --------------------
echo - Dropshot Mode: If enabled and the right mouse button is held down, the character will drop to the floor when the 'C' key is pressed.
echo - Targeting and FOV: The script will scan a specific area (based on the FOV settings) for a colored pixel (target), and once found, it adjusts the aiming position and moves the mouse to center on it.
echo - Recoil Control and Lock-On: The script will apply recoil control to smooth the mouse movement, and if the lock-on feature is enabled, it will move the mouse more precisely.
echo - Triggerbot: If enabled, the script will automatically shoot when the target is within the crosshairs.
echo - Shotgun Mode: Automatically fires with a rapid click rate if enabled.
echo - Predictive Aiming: If enabled, the script will adjust the target position based on the movement of the target to anticipate where it will be next.
echo - FOV Display: A transparent overlay will show the boundaries of your field of view on the screen.
echo.
echo CODE EXPLANATION:
echo 1. Main Loop Timer:
echo ------------------
echo SetTimer, MainLoop, 5
echo return
echo This line sets a timer to run the MainLoop function every 5 milliseconds, meaning it constantly checks for changes and executes actions in the script.
echo.
echo 2. Main Loop Logic:
echo --------------------
echo MainLoop:
echo     if (ScriptEnabled) {
echo         ; Checks if ScriptEnabled is true. If it is, the script will run the actions below.
echo         ; Otherwise, it skips this section.
echo.
echo 3. Dropshot Logic:
echo -------------------
echo     if (DropshotEnabled && GetKeyState("RButton", "P")) {
echo         Send, {c down}  ; Press C to drop to the floor
echo     }
echo This checks if DropshotEnabled is active and if the right mouse button is being pressed. 
echo If both conditions are met, it sends the command to press the 'C' key, causing the character to drop to the ground.
echo.
echo 4. FOV Scanning Area Calculation:
echo ---------------------------------
echo     ScanL := ZeroX - CFovX
echo     ScanT := ZeroY - CFovY
echo     ScanR := ZeroX + CFovX
echo     ScanB := ZeroY + CFovY
echo These lines calculate the area to scan for the target color (EMCol) based on the field of view (FOV) dimensions and the center position.
echo.
echo 5. PixelSearch:
echo --------------
echo     PixelSearch, AimPixelX, AimPixelY, ScanL, ScanT, ScanR, ScanB, EMCol, ColVn, Fast RGB
echo     if (!ErrorLevel) {
echo         ; If a target pixel is found, continue with the targeting actions
echo     }
echo This command searches for a colored pixel within the defined FOV area and assigns its coordinates to AimPixelX and AimPixelY.
echo If a target is found, it proceeds to adjust the mouse position.
echo.
echo 6. Offset Calculation for Different Modes:
echo ----------------------------------------
echo     if (ZombiesMode) {
echo         OffsetX := 45  ; Offset right for Zombies Mode
echo         OffsetY := 50  ; Offset down for Zombies Mode
echo     } else {
echo         OffsetX := 0   ; Default offset for Multiplayer Mode
echo         OffsetY := WeaponOffset  ; Offset depends on selected weapon
echo     }
echo Depending on whether ZombiesMode is enabled or not, the script adjusts the offsets for aiming.
echo If it's ZombiesMode, the target is offset to the right and down. In MultiplayerMode, it uses the weapon's offset.
echo.
echo 7. Predictive Aiming:
echo --------------------
echo     if (PredictionEnabled) {
echo         ; Calculate the target's movement direction and adjust aiming accordingly
echo         if (LastAimPixelX != 0 && LastAimPixelY != 0) {
echo             DeltaX := AimPixelX - LastAimPixelX
echo             DeltaY := AimPixelY - LastAimPixelY
echo             AimPixelX := AimPixelX + (DeltaX * 0.5)  ; Predictive factor
echo             AimPixelY := AimPixelY + (DeltaY * 0.5)
echo         }
echo     }
echo     LastAimPixelX := AimPixelX
echo     LastAimPixelY := AimPixelY
echo If PredictionEnabled is active, the script will adjust the aim to predict the target's future position based on its movement.
echo It calculates the difference (delta) between the last and current positions, then adjusts accordingly.
echo.
echo 8. Mouse Movement Calculation:
echo -----------------------------
echo     AimX := AimPixelX - ZeroX + OffsetX
echo     AimY := AimPixelY - ZeroY + OffsetY
echo These lines calculate how much the mouse needs to move based on the target's position and the applied offsets.
echo.
echo 9. Recoil Control and Movement:
echo -----------------------------
echo     MoveX := AimX * 0.3 * LockOnStrength  ; Adjust movement rate for smoother movement with lock-on strength
echo     MoveY := (AimY * RecoilControl) * 0.3 * LockOnStrength
echo These lines apply recoil control and lock-on strength to the mouse movement to create smoother aiming.
echo The LockOnStrength parameter controls how smoothly the mouse moves.
echo.
echo 10. Mouse Movement Execution:
echo -----------------------------
echo     if (Abs(MoveX) > 1 || Abs(MoveY) > 1) {
echo         DllCall("mouse_event", "UInt", 1, "Int", MoveX, "Int", MoveY, "UInt", 0, "Int", 0)
echo     }
echo This checks if the calculated mouse movement is significant enough (greater than 1 pixel). If so, it moves the mouse using the DllCall function.
echo.
echo 11. Triggerbot Functionality:
echo ----------------------------
echo     if (TriggerbotEnabled) {
echo         Click
echo     }
echo If TriggerbotEnabled is active, the script simulates a mouse click when the target is in the crosshairs.
echo.
echo 12. Shotgun Mode (Automatic Shooting):
echo ------------------------------------
echo     if (ShotgunModeEnabled) {
echo         Click
echo         Sleep, 180 ; Adds a delay to achieve 5-6 clicks per second (approximately 180ms between clicks)
echo     }
echo If ShotgunModeEnabled is active, the script simulates rapid mouse clicks with a 180ms delay, mimicking automatic shotgun firing.
echo.
echo 13. FOV Display (If Enabled):
echo ----------------------------
echo     if (FOVEnabled) {
echo         ; Calculate FOV coordinates
echo         FOVLeft := ZeroX - CFovX
echo         FOVTop := ZeroY - CFovY
echo         FOVRight := ZeroX + CFovX
echo         FOVBottom := ZeroY + CFovY
echo
echo         ; Create FOV GUI
echo         if !WinExist("FOV Display") {
echo             Gui, FOV: New, +AlwaysOnTop +ToolWindow +Resize, FOV Display
echo             Gui, FOV: Color, 0x000000  ; Background color (black)
echo             Gui, FOV: Show, % "x" FOVLeft " y" FOVTop " w" (FOVRight - FOVLeft) " h" (FOVBottom - FOVTop) " NA"
echo             WinSet, Transparent, 200, ahk_id %GuiFOV%
echo             WinSet, Region, % "0-0 " (FOVRight - FOVLeft) "-" (FOVBottom - FOVTop) " "  ; Set transparent area
echo         }
echo     } else {
echo         Gui, FOV: Destroy  ; Destroy FOV GUI if toggle is off
echo     }
echo If FOVEnabled is active, the script creates a transparent FOV display, showing the boundaries of the current field of view.
echo If FOV is turned off, the display is destroyed.
echo.
echo Press any key to go back to the main menu.
pause >nul
goto MainMenu


:Hotkeys
cls
echo ============================================
echo       TUTORIAL FOR BEGINNERS - HOTKEYS
echo ============================================
echo.
echo Hotkeys for Script Control:
echo.
echo Backslash (\):
echo   - Toggles the main script’s active state.
echo   - When active, it allows the script to perform its functions.
echo   - When inactive, it stops all actions.
echo.
echo Insert (Ins):
echo   - Toggles predictive aiming.
echo   - Adjusts your aim based on the movement of your target.
echo.
echo Home:
echo   - Shows or hides the main menu and the toggle menu.
echo   - You can switch between pages of settings.
echo.
echo Toggle FOV (via Checkbox or 0 Key):
echo   - Enables or disables the Field of View (FOV) display.
echo   - Helps visualize the area you're targeting.
echo   - Controlled via a menu checkbox or by pressing 0.
echo.
echo ============================================
echo             CODE EXPLANATION
echo ============================================
echo.
echo 1. ShowNextPage and ShowPreviousPage Functions
echo   ShowNextPage:
echo     Gui, MainMenu: Hide
echo     Gui, ToggleMenu: Show
echo     return
echo.
echo   ShowPreviousPage:
echo     Gui, ToggleMenu: Hide
echo     Gui, MainMenu: Show
echo     return
echo.
echo   ShowNextPage: Hides the "MainMenu" and shows "ToggleMenu".
echo   ShowPreviousPage: Reverts back by hiding "ToggleMenu" and showing "MainMenu".
echo.
echo 2. Toggle Script State (\ Key)
echo   \::
echo     ScriptEnabled := !ScriptEnabled
echo     if (ScriptEnabled) {
echo         SoundBeep, 500, 300
echo         ToolTip, Script Enabled
echo     } else {
echo         SoundBeep, 750, 300
echo         ToolTip, Script Disabled
echo     }
echo     Sleep, 1000
echo     ToolTip
echo     return
echo.
echo   \ Key: Toggles the script’s active state.
echo   - If enabled: Beep + "Script Enabled" tooltip.
echo   - If disabled: Different beep + "Script Disabled".
echo   - Tooltip disappears after 1 second.
echo.
echo 3. Toggle Predictive Aiming (Ins Key)
echo   Ins::
echo     PredictionEnabled := !PredictionEnabled
echo     if (PredictionEnabled) {
echo         SoundBeep, 600, 300
echo         ToolTip, Predictive Aiming Enabled
echo     } else {
echo         SoundBeep, 400, 300
echo         ToolTip, Predictive Aiming Disabled
echo     }
echo     Sleep, 1000
echo     ToolTip
echo     return
echo.
echo   Ins Key: Toggles predictive aiming feature.
echo   - On: Beep + "Predictive Aiming Enabled".
echo   - Off: Beep + "Predictive Aiming Disabled".
echo.
echo 4. Toggle Menu Visibility (Home Key)
echo   Home::
echo     MenuVisible := !MenuVisible
echo     if (MenuVisible) {
echo         Gui, MainMenu: Show
echo         ToolTip, Menu Shown
echo     } else {
echo         Gui, MainMenu: Hide
echo         Gui, ToggleMenu: Hide
echo         ToolTip, Menu Hidden
echo     }
echo     Sleep, 1000
echo     ToolTip
echo     return
echo.
echo   Home Key: Shows or hides both menus.
echo   - On: Tooltip shows "Menu Shown".
echo   - Off: Hides everything + "Menu Hidden".
echo.
echo 5. Toggle FOV Display (Checkbox)
echo   ToggleFOV:
echo     Gui, Submit, NoHide
echo     FOVEnabled := FOVCheckbox
echo     if (FOVEnabled) {
echo         SoundBeep, 500, 300
echo         ToolTip, FOV Display Enabled
echo     } else {
echo         SoundBeep, 750, 300
echo         Gui, FOV: Destroy
echo         ToolTip, FOV Display Disabled
echo     }
echo     Sleep, 1000
echo     ToolTip
echo     return
echo.
echo   ToggleFOV: Used when interacting with the checkbox.
echo   - Checkbox ON: Enables FOV with sound + tooltip.
echo   - Checkbox OFF: Disables FOV and destroys the FOV GUI.
echo.
echo 6. Toggle FOV Display (0 Key)
echo   0::
echo     FOVEnabled := !FOVEnabled
echo     if (FOVEnabled) {
echo         SoundBeep, 500, 300
echo         ToolTip, FOV Display Enabled
echo     } else {
echo         SoundBeep, 750, 300
echo         Gui, FOV: Destroy
echo         ToolTip, FOV Display Disabled
echo     }
echo     Sleep, 1000
echo     ToolTip
echo     return
echo.
echo   0 Key: Toggles the FOV display on or off.
echo   - On: Beep + "FOV Display Enabled".
echo   - Off: Beep + Destroys GUI + "FOV Display Disabled".
echo.
pause
goto MainMenu


:TutorialModes
echo ============================================
echo              Tutorial: TutorialModes
echo ============================================
echo.
echo Triggerbot: This feature allows you to automatically shoot at targets when they are detected within the field of view.
echo Enable or disable it via the GUI.
echo.
echo Zombies Mode: Toggle between Zombies Mode and Multiplayer Mode.
echo Zombies Mode is used for special gameplay settings, and only one mode can be active at a time.
echo.
echo Anti-AFK: Enables a feature that simulates activity (like mouse movement) to prevent your character from being logged out due to inactivity.
echo.
echo Grenade Settings: Customize the hotkey and cooking time for grenades in your game.
echo.
echo Semi-Auto Mode: When activated, each click on the left mouse button (LMB) simulates multiple shots,
echo allowing for faster fire rates. Toggle it with the U key and hold the LMB to fire continuously.
echo.
echo.
echo Code Breakdown:
echo 1. Toggle Triggerbot (ToggleTriggerbot)
echo ToggleTriggerbot:
echo     Gui, Submit, NoHide
echo     TriggerbotEnabled := TriggerbotCheckbox
echo     if (TriggerbotEnabled) {
echo         SoundBeep, 500, 300
echo         ToolTip, Triggerbot Enabled
echo     } else {
echo         SoundBeep, 750, 300
echo         ToolTip, Triggerbot Disabled
echo     }
echo     Sleep, 1000
echo     ToolTip
echo     return
echo Triggerbot: This toggle checks whether the "Triggerbot" checkbox is checked.
echo If it is, it enables the Triggerbot feature, which can simulate clicks when a target is detected, and plays a confirmation beep.
echo If disabled, the script shows that the Triggerbot is disabled.
echo.
echo 2. Toggle Zombies Mode (ToggleZombiesMode)
echo ToggleZombiesMode:
echo     Gui, Submit, NoHide
echo     ZombiesMode := ZombiesModeCheckbox
echo     MultiplayerMode := !ZombiesMode
echo     GuiControl,, MultiplayerModeCheckbox, %% MultiplayerMode
echo     return
echo Zombies Mode: If this checkbox is enabled, the script sets ZombiesMode to true,
echo ensuring that Multiplayer Mode is disabled.
echo It also updates the Multiplayer checkbox to reflect the new mode selection.
echo.
echo 3. Toggle Anti-AFK (ToggleAntiAFK)
echo ToggleAntiAFK:
echo     Gui, Submit, NoHide
echo     AntiAFKEnabled := AntiAFKCheckbox
echo     if (AntiAFKEnabled) {
echo         SoundBeep, 500, 300
echo         ToolTip, Anti-AFK Enabled
echo         SetTimer, AntiAFK, 60000
echo     } else {
echo         SoundBeep, 750, 300
echo         ToolTip, Anti-AFK Disabled
echo         SetTimer, AntiAFK, Off
echo     }
echo     Sleep, 1000
echo     ToolTip
echo     return
echo Anti-AFK: This feature helps prevent a player from being automatically logged out for being idle.
echo If the checkbox is enabled, it triggers a small action every 60 seconds to simulate activity.
echo If disabled, the timer is stopped, and the action is no longer triggered.
echo.
echo 4. Anti-AFK Timer Action (AntiAFK)
echo AntiAFK:
echo     if (AntiAFKEnabled) {
echo         MouseMove, 1, 0, 1, R
echo         Sleep, 50
echo         MouseMove, -1, 0, 1, R
echo         ; Alternatively:
echo         ; Send, {Shift Down}
echo         ; Sleep, 50
echo         ; Send, {Shift Up}
echo     }
echo     return
echo Anti-AFK: This section simulates mouse movement to prevent the system from considering the user idle.
echo It moves the mouse slightly every minute (60 seconds).
echo.
echo 5. Update Grenade Settings (UpdateGrenadeSettings)
echo UpdateGrenadeSettings:
echo     Gui, Submit, NoHide
echo     Hotkey, %%GrenadeKey%%, Off
echo     GrenadeKey := GrenadeKey
echo     Hotkey, %%GrenadeKey%%, GrenadeCooking, On
echo     CookingTime := CookingTime
echo     ToolTip, Grenade settings updated!
echo     Sleep, 1000
echo     ToolTip
echo return
echo Grenade Settings: This allows you to change the hotkey for grenades and update the cooking time.
echo It removes the old keybind, sets the new one, and applies the updated delay.
echo.
echo 6. Toggle Semi-Auto Mode (ToggleSemiAuto)
echo ToggleSemiAuto:
echo     Gui, Submit, NoHide
echo     SemiAutoEnabled := SemiAutoCheckbox
echo     if (SemiAutoEnabled) {
echo         SoundBeep, 500, 300
echo         ToolTip, Semi-Auto Mode Enabled
echo     } else {
echo         SoundBeep, 750, 300
echo         ToolTip, Semi-Auto Mode Disabled
echo     }
echo     Sleep, 1000
echo     ToolTip
echo     return
echo Semi-Auto Mode: Toggles whether semi-auto is enabled.
echo If it is, a beep plays and a tooltip shows the current status.
echo.
echo 7. Toggle Semi-Auto with U Key
echo U::
echo     if (SemiAutoEnabled) {
echo         SemiAutoToggle := !SemiAutoToggle
echo         if (SemiAutoToggle) {
echo             SoundBeep, 500, 300
echo             ToolTip, Semi-Auto Mode ON
echo         } else {
echo             SoundBeep, 750, 300
echo             ToolTip, Semi-Auto Mode OFF
echo         }
echo         Sleep, 1000
echo         ToolTip
echo     }
echo     return
echo U Key: This toggles the Semi-Auto Mode ON or OFF if it was previously enabled.
echo It provides feedback using tooltips and beeps.
echo.
echo 8. Semi-Auto Mode Functionality (Firing)
echo ~LButton::
echo     if (SemiAutoEnabled && SemiAutoToggle) {
echo         while (GetKeyState("LButton", "P")) {
echo             Send, {LButton}
echo             Sleep, 100
echo         }
echo     }
echo     return
echo Firing in Semi-Auto Mode: Detects if LMB is held down while Semi-Auto Mode is toggled ON.
echo It simulates repeated mouse clicks with a delay to achieve fast firing.
echo.
pause
goto MainMenu


:: Features Summary Page
:FeaturesSummary
cls
echo ============================================
echo              Tutorial: FeatureSummary
echo ============================================
echo.
echo Summary of Features Added:
echo Auto-Ping: Automatically pings every specified interval to maintain constant communication in multiplayer games. It simulates the Left Alt key press.
echo.
echo Dropshot Mode: Automatically drops to the ground while shooting when enabled, making the player a smaller target.
echo.
echo Shotgun Mode: Enables faster or automatic firing when using a shotgun.
echo.
echo Multiplayer Mode: Toggles between Multiplayer Mode and Zombies Mode, ensuring that only one is active at a time.
echo.
echo Update Values: Updates various in-game settings, such as dot color, field of view, recoil control, and more.
echo.
echo Code Breakdown:
echo 1. Toggle Auto-Ping (ToggleAutoPing)
echo ToggleAutoPing:
echo     Gui, Submit, NoHide
echo     AutoPingEnabled := AutoPingCheckbox
echo     PingInterval := PingIntervalEdit
echo     if (AutoPingEnabled) {
echo         SoundBeep, 500, 300
echo         ToolTip, Auto-Ping Enabled
echo         SetTimer, AutoPing, %%PingInterval%%
echo     } else {
echo         SoundBeep, 750, 300
echo         ToolTip, Auto-Ping Disabled
echo         SetTimer, AutoPing, Off
echo     }
echo     Sleep, 1000
echo     ToolTip
echo     return
echo Auto-Ping: This feature automatically sends a ping signal at specified intervals.
echo The checkbox enables or disables the feature, and the interval is taken from the user input.
echo When enabled, it uses a timer to trigger the AutoPing function repeatedly at the specified interval.
echo.
echo 2. Auto-Ping Action (AutoPing)
echo AutoPing:
echo     if (AutoPingEnabled) {
echo         Send, {LAlt}
echo         Sleep, 50
echo     }
echo     return
echo Auto-Ping Action: This simulates a Left Alt key press every time the timer triggers.
echo This key is assumed to be the ping key in the game. A small delay ensures the key press is registered.
echo.
echo 3. Toggle Dropshot Mode (ToggleDropshot)
echo ToggleDropshot:
echo     Gui, Submit, NoHide
echo     DropshotEnabled := DropshotCheckbox
echo     if (DropshotEnabled) {
echo         SoundBeep, 500, 300
echo         ToolTip, Dropshot Mode Enabled
echo     } else {
echo         SoundBeep, 750, 300
echo         ToolTip, Dropshot Mode Disabled
echo     }
echo     Sleep, 1000
echo     ToolTip
echo     return
echo Dropshot Mode: Dropshotting is a technique where the player drops to the ground while shooting to make themselves a smaller target.
echo This toggle enables or disables Dropshot Mode, and the script shows a corresponding message confirming whether the mode is enabled or disabled.
echo.
echo 4. Toggle Shotgun Mode (ToggleShotgunMode)
echo ToggleShotgunMode:
echo     Gui, Submit, NoHide
echo     ShotgunModeEnabled := ShotgunModeCheckbox
echo     if (ShotgunModeEnabled) {
echo         SoundBeep, 500, 300
echo         ToolTip, Shotgun Mode Enabled
echo     } else {
echo         SoundBeep, 750, 300
echo         ToolTip, Shotgun Mode Disabled
echo     }
echo     Sleep, 1000
echo     ToolTip
echo     return
echo Shotgun Mode: This mode is likely designed for a more aggressive firing style.
echo It can enable faster or automatic shots when using a shotgun in the game.
echo This toggle enables or disables the feature, and the script plays a beep sound and shows a tooltip with the current state.
echo.
echo 5. Toggle Multiplayer Mode (ToggleMultiplayerMode)
echo ToggleMultiplayerMode:
echo     Gui, Submit, NoHide
echo     MultiplayerMode := MultiplayerModeCheckbox
echo     ZombiesMode := !MultiplayerMode
echo     GuiControl,, ZombiesModeCheckbox, %% ZombiesMode
echo     return
echo Multiplayer Mode: This mode toggles between Multiplayer and Zombies Mode.
echo If Multiplayer Mode is enabled, the Zombies Mode checkbox is automatically disabled, ensuring that only one mode is active at any time.
echo.
echo 6. Update Values (UpdateValues)
echo UpdateValues:
echo     Gui, Submit
echo     EMCol := DotColor
echo     CFovX := CFovX
echo     CFovY := CFovY
echo     RecoilControl := RecoilControl
echo     DefaultOffset := DefaultOffset
echo     LockOnStrength := LockOnStrength
echo     WeaponOffset := DefaultOffset
echo     ToolTip, Values updated!
echo     Sleep, 1000
echo     ToolTip
echo     return
echo Update Values: This function updates various settings from the GUI controls, such as the Dot Color (EMCol),
echo Field of View (CFovX, CFovY), Recoil Control, Lock On Strength, and other relevant values.
echo After updating, it shows a tooltip to inform the user that the values have been successfully updated.
echo.
echo Press any key to go back to the main menu.
pause >nul
goto MainMenu


:WeaponsMenu
echo ============================================
echo              Tutorial: Weapons Menu
echo ============================================
echo.
echo Summary of the Weapons Menu:
echo The script creates a GUI window titled Weapons Menu with checkboxes for a wide variety of weapons, categorized into:
echo.
echo - Assault Rifles
echo - Submachine Guns
echo - Shotguns
echo - Light Machine Guns
echo - Marksman Rifles
echo - Sniper Rifles
echo - Launchers
echo - Pistols
echo - Melee
echo.
echo A Close button is included to close the weapons menu.
echo This GUI allows users to toggle different weapons on or off by checking or unchecking the corresponding boxes.
echo.
echo Code Breakdown:
echo 1. Show Weapons Menu (ShowWeaponsMenu)
echo ShowWeaponsMenu:
echo     Gui, Weapons: New, +AlwaysOnTop +ToolWindow, Weapons
echo     Gui, Weapons: Color, 0xFFFACD
echo     Gui, Weapons: Font, s10, Segoe UI
echo     Gui, Weapons: Add, Text,, Weapons List:
echo     ; Weapons categories follow...
echo This section creates a new GUI window titled Weapons Menu with a Lemon Chiffon background color and the Segoe UI font applied to all text.
echo.
echo 2. Weapon Categories
echo - Assault Rifles:
echo Gui, Weapons: Add, Checkbox, vXM4 gCheckXM4, XM4
echo Gui, Weapons: Add, Checkbox, vAK74 gCheckAK74, AK-74
echo Gui, Weapons: Add, Checkbox, vAMES85 gCheckAMES85, AMES 85
echo ...
echo - Submachine Guns:
echo Gui, Weapons: Add, Checkbox, vC9 gCheckC9, C9
echo Gui, Weapons: Add, Checkbox, vKSV gCheckKSV, KSV
echo ...
echo - Shotguns:
echo Gui, Weapons: Add, Checkbox, vMarineSP gCheckMarineSP, Marine SP
echo Gui, Weapons: Add, Checkbox, vASG89 gCheckASG89, ASG-89
echo ...
echo - Light Machine Guns:
echo Gui, Weapons: Add, Checkbox, vPU21 gCheckPU21, PU-21
echo Gui, Weapons: Add, Checkbox, vXMG gCheckXMG, XMG
echo ...
echo - Marksman Rifles:
echo Gui, Weapons: Add, Checkbox, vSwat556 gCheckSwat556, Swat 5.56
echo Gui, Weapons: Add, Checkbox, vTsarkov762 gCheckTsarkov762, Tsarkov 7.62
echo ...
echo - Sniper Rifles:
echo Gui, Weapons: Add, Checkbox, vLW3A1 gCheckLW3A1, LW3A1 Frostline
echo Gui, Weapons: Add, Checkbox, vSVD gCheckSVD, SVD
echo ...
echo - Launchers:
echo Gui, Weapons: Add, Checkbox, vCIGMA2B gCheckCIGMA2B, CIGMA 2B
echo Gui, Weapons: Add, Checkbox, vHE1 gCheckHE1, HE-1
echo ...
echo - Pistols:
echo Gui, Weapons: Add, Checkbox, vPM9mm gCheckPM9mm, 9mm PM
echo Gui, Weapons: Add, Checkbox, vGrekhova gCheckGrekhova, Grekhova
echo ...
echo - Melee Weapons:
echo Gui, Weapons: Add, Checkbox, vCombatKnife gCheckCombatKnife, Combat Knife
echo Gui, Weapons: Add, Checkbox, vBaseballBat gCheckBaseballBat, Baseball Bat
echo ...
echo Each checkbox has a unique variable (e.g., vXM4, vAK74) and is linked to a corresponding gCheck label.
echo.
echo 3. Finalizing the Weapons Menu
echo Gui, Weapons: Add, Button, gCloseWeaponsMenu, Close
echo Gui, Weapons: Show, , Weapons Menu
echo A Close button is added to allow users to close the weapons menu.
echo The Weapons Menu is shown on the screen after all checkboxes and the button are created.
echo.
pause
goto MainMenu


:WeaponOffsets
echo ============================================
echo              Tutorial: Weapon Offsets
echo ============================================
echo.
echo Summary of Final Page:
echo Weapon Offsets:
echo Each weapon in the menu has a corresponding label that sets a specific WeaponOffset when selected.
echo The offsets are used to modify a weapon's parameters in the script.
echo The offset values vary for each weapon, with some weapons having higher values than others.
echo For example, the Baseball Bat has a WeaponOffset of 35.
echo.
echo Close Weapons Menu:
echo The CloseWeaponsMenu label ensures the GUI window for weapons is closed when invoked.
echo.
echo External Links:
echo The OpenYouTube and OpenDiscord labels open YouTube and Discord links in the user's browser, providing quick access to external content.
echo.
echo Use Case:
echo This script is designed for modifying various weapon parameters in a game and toggling different weapon configurations using the WeaponOffsets.
echo Additionally, users can open external websites like YouTube and Discord directly from the menu.
echo.
echo Code Breakdown:
echo Weapon Offsets:
echo Each weapon has an associated label that sets the WeaponOffset value for that weapon.
echo The offset value represents a parameter or configuration tied to the weapon.
echo For example:
echo.
echo CheckXM4:
echo     WeaponOffset := 3
echo     return
echo.
echo CheckAK74:
echo     WeaponOffset := 3
echo     return
echo.
echo CheckAMES85:
echo     WeaponOffset := 6
echo     return
echo.
echo XM4 and AK74 both have a WeaponOffset of 3.
echo AMES 85 has a WeaponOffset of 6.
echo GPR 91 has a WeaponOffset of 10.
echo Each weapon category (Assault Rifles, Submachine Guns, Shotguns, etc.) has its own WeaponOffset value.
echo.
echo Close Weapons Menu:
echo CloseWeaponsMenu:
echo     Gui, Weapons: Destroy
echo     return
echo This label handles closing the weapons menu by destroying the Weapons GUI.
echo.
echo Open YouTube and Discord:
echo OpenYouTube:
echo     Run, https://www.youtube.com/qwoah
echo     return
echo OpenDiscord:
echo     Run, https://www.dsc.gg/143X
echo     return
echo These labels provide functionality for opening external links in the browser.
echo YouTube link: https://www.youtube.com/qwoah
echo Discord link: https://www.dsc.gg/143X
echo.
pause
goto MainMenu

:: Menu header and options
echo =======================================
echo Welcome to the AHK COD Script Tutorial!
echo =======================================
echo.
echo 1. SCRIPT SETUP
echo 2. MAIN SETTINGS PAGE
echo 3. MAIN LOOP OVERVIEW
echo 4. HOTKEYS FOR SCRIPT CONTROL
echo 5. TUTORIAL FOR FEATURES/MODES
echo 6. SUMMARY OF FEATURES
echo 7. SUMMARY OF WEAPONS MENU
echo 8. WEAPON OFFSETS (COMING SOON)
echo 9. LINKS
echo 10. AHK2EXE (Convert AHK to EXE)
echo 11. EXIT
echo.

set /p option=Choose an option (1-11): 

if "%option%"=="1" goto ScriptSetup
if "%option%"=="2" goto MainSettings
if "%option%"=="3" goto MainLoop
if "%option%"=="4" goto Hotkeys
if "%option%"=="5" goto TutorialModes
if "%option%"=="6" goto FeaturesSummary
if "%option%"=="7" goto WeaponsMenu
if "%option%"=="8" goto WeaponOffsets
if "%option%"=="9" goto Links
if "%option%"=="10" goto AHK2EXE
if "%option%"=="11" exit /b

goto MainMenu

:: AHK2EXE Section - Convert AHK to EXE
:AHK2EXE
cls
echo ================================
echo AHK to EXE Conversion Guide
echo ================================
echo.
echo This guide will help you convert your AHK script into an EXE file using the AutoHotkey compiler.
echo.
echo Steps to convert AHK to EXE:
echo 1. Download and install AutoHotkey from https://www.autohotkey.com/.
echo 2. Create or open your AHK script.
echo 3. Open a Command Prompt (CMD) and navigate to the folder where your AHK script is located.
echo 4. Run the following command to convert the AHK script to an EXE:
echo    "C:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe" /in "script.ahk" /out "script.exe"
echo.
echo Replace "script.ahk" with the name of your AHK script.
echo.
echo This will create an EXE version of your AHK script that can be run independently of AutoHotkey.
echo.
pause
goto MainMenu
