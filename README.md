# Onset Server Sync

The Onset Server Sync package generates mainly server-sided functions that allows you to sync client sided functions through all clients.

## Functions

### Keys
|Side|Function|Event|
|----|-------|--------|
|Server|SetPlayerInputMode(player, InputMode)|OnInputModeChange(InputMode)|

### Players and NPCs
|Side|Function|Event|
|----|-------|--------|
|Server|TogglePlayerNPCOutline(player, npc [, bToggle])|OnNPCOutlineChange(npc, bToggle)|
|Server|TogglePlayerOutline(player, forplayer [, bToggle])|OnPlayerOutlineChange(player, bToggle)|
|Server|TogglePlayerMoveInput(player [, bToggle])|OnMoveInputChange(bToggle)|
|Server|SetPlayerClothingPreset(player, forplayer, clothing_preset) \*\*|OnPlayerClothingPresetChange(player, clothing_preset)|

### Camera
|Side|Function|Event|
|----|-------|--------|
|Server|SetPlayerFOV(player, fov)|OnFOVChange(fov)|
|Server|TogglePlayerMouseCursor(player, bToggle)|OnMouseCursorToggle(bToggle)|
|Server|TogglePlayerHealthHUD(player, bToggle)|OnHealthHUDToggle(bToggle)|
|Server|StopPlayerCameraShake(player [, bImmediate])|OnCameraStopShake(bImmediate)|
|Server|SetPlayerChatLocation(player, breadth, height)|OnChatLocationChange(breadth, height)|

### Web UI
|Side|Function|Event|
|----|-------|--------|
|Server|DestroyPlayerWebUI(player, web) \*|OnWebUIDestroy(web)|

### Sounds
|Side|Function|Event|
|----|-------|--------|
|Server|DestroyPlayerSound(player, sound) \*|OnSoundDestroy(sound)|

### Text Boxes
|Side|Function|Event|
|----|-------|--------|
|Server|DestroyPlayerTextBox(player, textid) \*|OnTextBoxDestroy(textid)|

### Environment
|Side|Function|Event|
|----|-------|--------|
|Server|SetPlayerTime(player, time)|OnTimeChange(time)|
|Server|SetPlayerSunRadius(player, radius)|OnSunRadiusChange(radius)|
|Server|SetPlayerSunShine(player, shine)|OnSunShineChange(shine)|
|Server|SetPlayerSunLightIntensity(player, intensity)|OnSunLightIntensityChange(intensity)|
|Server|SetPlayerSkySaturation(player, saturation)|OnSkySaturationChange(saturation)|
|Server|SetPlayerSkyLightIntensity(player, intensity)|OnSkyLightIntensityChange(intensity)|
|Server|SetPlayerSkyRotationSpeed(player, speed)|OnSkyRotationSpeedChange(speed)|
|Server|SetPlayerStarsBrightness(player, brightness)|OnStarsBrightnessChange(intensity)|
|Server|SetPlayerMoonShine(player, shine)|OnMoonShineChange(shine)|
|Server|SetPlayerFogDensity(player, density)|OnFogDensityChange(density)|
|Server|ResetPlayerOceanColor(player)|OnOceanColorReset()|

\* Directs the *client sided* handle, they may vary per client! Use player property values to handle their handles!
\** Also syncs through stream ins/outs!
