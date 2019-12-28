# Onset Server Sync

The Onset Server Sync package generates mainly server-sided functions that allows you to sync client sided functions through all clients, in conclusion, it simplifies our lives when we just have to change one or two parameters. This package can also be used to reduce your client code if you're one of those freaks who doesn't want their client code for whatever reason to be leaked easily.

___Do not use this to replace your laziness! If you have a lot of settings to change, make a seperate event like you would normally do! Do not send 10 requests out at once because you're lazy.___

## Examples (before & after)

#### Before:
##### Server:
```lua
AddCommand("setworldtime", function(player, time)
  if(type(time) ~= "number" or 0 < time > 24) then
    return AddPlayerChat(player, 'The time argument must be a number between 0 and 24!')
  end
  
  for _, target in pairs(GetAllPlayers()) do
    CallRemoteEvent(target, "OnTimeChange", time)
  end
end)
```
##### Client:
```lua
AddRemoteEvent("OnTimeUpdate", function(time)
  SetTime(time)
end)
```
#### After:
```lua
local sync = ImportPackage("sync")

AddCommand("setworldtime", function(player, time)
  if(type(time) ~= "number" or 0 < time > 24) then
    return AddPlayerChat(player, 'The time argument must be a number between 0 and 24!')
  end
  
  for _, target in pairs(GetAllPlayers()) do
    sync.SetPlayerTime(target, time)
  end
end)
```




## Functions

### Keys
|Side|Function|Event|
|----|-------|--------|
|Server|ConnectPlayerToServer(player, Address, Port [, Password])|OnServerchange(Address, Port, Password)|
|Server|SetPlayerInputMode(player, InputMode)|OnInputModeChange(InputMode)|

### Waypoints
|Side|Function|Event|
|----|-------|--------|
|Server|DestroyPlayerWaypoint(player, waypointid) \*|OnWaypointDestroy(waypointid)|

### Players and NPCs
|Side|Function|Event|
|----|-------|--------|
|Server|TogglePlayerNPCOutline(player, npc [, bToggle])|OnNPCOutlineChange(npc, bToggle)|
|Server|SetPlayerNPCClothingPreset(player, npc, clothing_preset) \*\*|OnNPCClothingPresetChange(npc, clothing_preset)|
|Server|TogglePlayerOutline(player, forplayer [, bToggle])|OnPlayerOutlineChange(player, bToggle)|
|Server|TogglePlayerMoveInput(player [, bToggle])|OnMoveInputChange(bToggle)|
|Server|SetPlayerClothingPreset(player, forplayer, clothing_preset) \*\*|OnPlayerClothingPresetChange(player, clothing_preset)|

### Camera
|Side|Function|Event|
|----|-------|--------|
|Server|SetPlayerFOV(player, fov)|OnFOVChange(fov)|
|Server|SetPlayerCameraViewDistance(player, distance)|OnCameraViewDistanceChange(distance)|
|Server|SetPlayerNearClipPlane(player, distance)|OnNearClipPlaneChange(distance)|
|Server|SetPlayerControllerOrientedMovement(player [, bToggle])|OnControllerOrientedMovementChange(bToggle)|
|Server|SetPlayerRotationRate(player, RotationRate)|OnRotationRateChange(RotationRate)|
|Server|TogglePlayerFirstPersonCamera(player, bToggle)|OnFirstPersonCameraToggle(bToggle)|
|Server|TogglePlayerMouseCursor(player, bToggle)|OnMouseCursorToggle(bToggle)|
|Server|TogglePlayerHealthHUD(player, bToggle)|OnHealthHUDToggle(bToggle)|
|Server|TogglePlayerWeapothHUD(player [, bToggle])|OnWeaponHUDToggle(bToggle)|
|Server|TogglePlayerLookInput(player [, bToggle])|OnLookInputChange(bToggle)|
|Server|StopPlayerCameraShake(player [, bImmediate])|OnCameraStopShake(bImmediate)|
|Server|SetPlayerChatLocation(player, breadth, height)|OnChatLocationChange(breadth, height)|

### Web UI
|Side|Function|Event|
|----|-------|--------|
|Server|DestroyPlayerWebUI(player, web) \*|OnWebUIDestroy(web)|

### Sounds
|Side|Function|Event|
|----|-------|--------|
|Server|SetPlayerSoundPitch(player, sound, Pitch) \*|OnSoundPitchUpdate(sound, Pitch)|
|Server|DestroyPlayerSound(player, sound) \*|OnSoundDestroy(sound)|

### Text Boxes
|Side|Function|Event|
|----|-------|--------|
|Server|DestroyPlayerTextBox(player, textid) \*|OnTextBoxDestroy(textid)|

### Objects
|Side|Function|Event|
|----|-------|--------|
|Server|SetPlayerObjectEditorSpeed(player, speed)|OnObjectEditorSpeedChange(speed)|
|Server|TogglePlayerObjectHitEvents(player, object [, bToggle])|OnObjectHitEventsToggle(object, bToggle)|
|Server|LoadPlayerPak(player, PakName, RootPath, ContentPath)|OnLoadPath(PakName, RootPath, ContentPath)|
|Server|ReplacePlayerObjectModelMesh(player, ModelId, PathToMesh)|OnObjectModelMeshChange(ModelId, PathToMesh)|
|Server|SetPlayerObjectAnimatedTexture(player, object, TextureFile, Rows, Columns [, MaterialSlot])|OnObjectAnimatedTextureChange(object, TextureFile, Rows, Columns, MaterialSlot)|

### Environment
|Side|Function|Event|
|----|-------|--------|
|Server|CreatePlayerFireworks(player, modelid, x, y, z [, rx, ry, rz])|OnFireworksSpawn(modelid, x, y, z, rx, ry, rz)|
|Server|SetPlayerTime(player, time)|OnTimeChange(time)|
|Server|SetPlayerSunAzimuth(player, azimuth)|OnSunAzimuthChange(azimuth)|)|
|Server|SetPlayerSunRadius(player, radius)|OnSunRadiusChange(radius)|
|Server|SetPlayerSunShine(player, shine)|OnSunShineChange(shine)|
|Server|SetPlayerSunLightIntensity(player, intensity)|OnSunLightIntensityChange(intensity)|
|Server|SetPlayerSkySaturation(player, saturation)|OnSkySaturationChange(saturation)|
|Server|SetPlayerSkyLightIntensity(player, intensity)|OnSkyLightIntensityChange(intensity)|
|Server|SetPlayerSkyRotationSpeed(player, speed)|OnSkyRotationSpeedChange(speed)|
|Server|SetPlayerStarsBrightness(player, brightness)|OnStarsBrightnessChange(intensity)|
|Server|SetPlayerMoonShine(player, shine)|OnMoonShineChange(shine)|
|Server|SetPlayerMoonLightIntensity(player, intensity)|OnMoonLightIntensityChange(intensity)|
|Server|SetPlayerFogDensity(player, density)|OnFogDensityChange(density)|
|Server|SetPlayerOceanWaterLevel(player, WaterLevel [, bIncludeSwimmingVolume])|OnOceanWaterLevelChange(WaterLevel, bIncludeSwimmingVolume)|
|Server|ResetPlayerOceanColor(player)|OnOceanColorReset()|

\* Directs the *client sided* handle, they may vary per client! Use player property values to handle their handles!

\** Also syncs through stream ins/outs!
