# Onset Server Sync

The Onset Server Sync package generates mainly server-sided functions that allows you to sync client sided functions through all clients.

## Functions

### Keys
|Side|Function|Event|
|----|-------|--------|
|Server|SetPlayerInputMode(player, InputMode)|OnInputModeChange(InputMode)|

### Camera
|Side|Function|Event|
|----|-------|--------|
|Server|SetPlayerFOV(player, fov)|OnFOVChange(fov)|
|Server|TogglePlayerMouseCursor(player, bToggle)|OnMouseCursorToggle(bToggle)|
|Server|TogglePlayerHealthHUD(player, bToggle)|OnHealthHUDToggle(bToggle)|
|Server|StopPlayerCameraShake(player, bImmediate)|OnCameraStopShake(bImmediate)|
|Server|SetPlayerChatLocation(player, breadth, height)|OnChatLocationChange(breadth, height)|

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
|Server|SetPlayerSkySaturation(player, saturation)|OnSkySaturationChange(saturation)|
|Server|SetPlayerSkyLightIntensity(player, intensity)|OnSkyLightIntensityChange(intensity)|
|Server|SetPlayerStarsBrightness(player, brightness)|OnStarsBrightnessChange(intensity)|
|Server|SetPlayerFogDensity(player, density)|OnFogDensityChange(density)|
|Server|ResetPlayerOceanColor(player)|OnOceanColorReset()|

\* Directs the *client sided* handle, they may vary per client! Use player property values to handle their handles!
