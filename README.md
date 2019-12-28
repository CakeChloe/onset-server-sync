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
    CallRemoteEvent(target, "OnSyncTimeChange", time)
  end
end)
```
##### Client:
```lua
AddRemoteEvent("OnSyncTimeUpdate", function(time)
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
|Server|ConnectPlayerToServer(player, Address, Port [, Password])|OnSyncServerchange(Address, Port, Password)|
|Server|SetPlayerInputMode(player, InputMode)|OnSyncInputModeChange(InputMode)|

### Waypoints
|Side|Function|Event|
|----|-------|--------|
|Server|DestroyPlayerWaypoint(player, waypointid) \*|OnSyncWaypointDestroy(waypointid)|

### Players and NPCs
|Side|Function|Event|
|----|-------|--------|
|Server|TogglePlayerNPCOutline(player, npc [, bToggle])|OnSyncNPCOutlineChange(npc, bToggle)|
|Server|SetPlayerNPCClothingPreset(player, npc, clothing_preset) \*\*|OnSyncNPCClothingPresetChange(npc, clothing_preset)|
|Server|TogglePlayerOutline(player, forplayer [, bToggle])|OnSyncPlayerOutlineChange(player, bToggle)|
|Server|TogglePlayerMoveInput(player [, bToggle])|OnSyncMoveInputChange(bToggle)|
|Server|SetPlayerClothingPreset(player, forplayer, clothing_preset) \*\*|OnSyncPlayerClothingPresetChange(player, clothing_preset)|

### Camera
|Side|Function|Event|
|----|-------|--------|
|Server|SetPlayerFOV(player, fov)|OnSyncFOVChange(fov)|
|Server|SetPlayerCameraViewDistance(player, distance)|OnSyncCameraViewDistanceChange(distance)|
|Server|SetPlayerNearClipPlane(player, distance)|OnSyncNearClipPlaneChange(distance)|
|Server|SetPlayerControllerOrientedMovement(player [, bToggle])|OnSyncControllerOrientedMovementChange(bToggle)|
|Server|SetPlayerRotationRate(player, RotationRate)|OnSyncRotationRateChange(RotationRate)|
|Server|TogglePlayerFirstPersonCamera(player, bToggle)|OnSyncFirstPersonCameraToggle(bToggle)|
|Server|TogglePlayerMouseCursor(player, bToggle)|OnSyncMouseCursorToggle(bToggle)|
|Server|TogglePlayerHealthHUD(player, bToggle)|OnSyncHealthHUDToggle(bToggle)|
|Server|TogglePlayerWeapothHUD(player [, bToggle])|OnSyncWeaponHUDToggle(bToggle)|
|Server|TogglePlayerLookInput(player [, bToggle])|OnSyncLookInputChange(bToggle)|
|Server|StopPlayerCameraShake(player [, bImmediate])|OnSyncCameraStopShake(bImmediate)|
|Server|SetPlayerChatLocation(player, breadth, height)|OnSyncChatLocationChange(breadth, height)|

### Web UI
|Side|Function|Event|
|----|-------|--------|
|Server|DestroyPlayerWebUI(player, web) \*|OnSyncWebUIDestroy(web)|

### Sounds
|Side|Function|Event|
|----|-------|--------|
|Server|SetPlayerSoundPitch(player, sound, Pitch) \*|OnSyncSoundPitchUpdate(sound, Pitch)|
|Server|DestroyPlayerSound(player, sound) \*|OnSyncSoundDestroy(sound)|

### Text Boxes
|Side|Function|Event|
|----|-------|--------|
|Server|DestroyPlayerTextBox(player, textid) \*|OnSyncTextBoxDestroy(textid)|

### Objects
|Side|Function|Event|
|----|-------|--------|
|Server|SetPlayerObjectEditorSpeed(player, speed)|OnSyncObjectEditorSpeedChange(speed)|
|Server|TogglePlayerObjectHitEvents(player, object [, bToggle])|OnSyncObjectHitEventsToggle(object, bToggle)|
|Server|LoadPlayerPak(player, PakName, RootPath, ContentPath)|OnSyncLoadPath(PakName, RootPath, ContentPath)|
|Server|ReplacePlayerObjectModelMesh(player, ModelId, PathToMesh)|OnSyncObjectModelMeshChange(ModelId, PathToMesh)|
|Server|SetPlayerObjectAnimatedTexture(player, object, TextureFile, Rows, Columns [, MaterialSlot])|OnSyncObjectAnimatedTextureChange(object, TextureFile, Rows, Columns, MaterialSlot)|

### Environment
|Side|Function|Event|
|----|-------|--------|
|Server|CreatePlayerFireworks(player, modelid, x, y, z [, rx, ry, rz])|OnSyncFireworksSpawn(modelid, x, y, z, rx, ry, rz)|
|Server|SetPlayerTime(player, time)|OnSyncTimeChange(time)|
|Server|SetPlayerSunAzimuth(player, azimuth)|OnSyncSunAzimuthChange(azimuth)|)|
|Server|SetPlayerSunRadius(player, radius)|OnSyncSunRadiusChange(radius)|
|Server|SetPlayerSunShine(player, shine)|OnSyncSunShineChange(shine)|
|Server|SetPlayerSunLightIntensity(player, intensity)|OnSyncSunLightIntensityChange(intensity)|
|Server|SetPlayerSkySaturation(player, saturation)|OnSyncSkySaturationChange(saturation)|
|Server|SetPlayerSkyLightIntensity(player, intensity)|OnSyncSkyLightIntensityChange(intensity)|
|Server|SetPlayerSkyRotationSpeed(player, speed)|OnSyncSkyRotationSpeedChange(speed)|
|Server|SetPlayerStarsBrightness(player, brightness)|OnSyncStarsBrightnessChange(intensity)|
|Server|SetPlayerMoonShine(player, shine)|OnSyncMoonShineChange(shine)|
|Server|SetPlayerMoonLightIntensity(player, intensity)|OnSyncMoonLightIntensityChange(intensity)|
|Server|SetPlayerFogDensity(player, density)|OnSyncFogDensityChange(density)|
|Server|SetPlayerOceanWaterLevel(player, WaterLevel [, bIncludeSwimmingVolume])|OnSyncOceanWaterLevelChange(WaterLevel, bIncludeSwimmingVolume)|
|Server|ResetPlayerOceanColor(player)|OnSyncOceanColorReset()|

\* Directs the *client sided* handle, they may vary per client! Use player property values to handle their handles!

\** Also syncs through stream ins/outs!
