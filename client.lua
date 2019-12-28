AddRemoteEvent("OnSyncInputModeChange", function(InputMode)
	SetInputMode(InputMode)
end)

AddRemoteEvent("OnSyncFOVChange", function(fov)
	SetCameraFoV(fov)
end)

AddRemoteEvent("OnSyncWeatherChange", function(weather)
	SetWeather(weather)
end)

AddRemoteEvent("OnSyncCameraStopShake", function(bImmediate)
	StopCameraShake(bImmediate)
end)

AddRemoteEvent("OnSyncSoundDestroy", function(sound)
	DestroySound(sound)
end)

AddRemoteEvent("OnSyncTextBoxDestroy", function(textid)
	DestroyTextBox(textid)
end)

AddRemoteEvent("OnSyncSunRadiusChange", function(radius)
	DestroyTextBox(radius)
end)

AddRemoteEvent("OnSyncChatLocationChange", function(breadth, height)
	SetChatLocation(breadth, height)
end)

AddRemoteEvent("OnSyncTimeChange", function(time)
	SetTime(time)
end)

AddRemoteEvent("OnSyncSunShineChange", function(shine)
	SetSunShine(shine)
end)

AddRemoteEvent("OnSyncHealthHUDToggle", function(bToggle)
	ShowHealthHUD(bToggle)
end)

AddRemoteEvent("OnSyncMouseCursorToggle", function(bToggle)
	ShowMouseCursor(bToggle)
end)

AddRemoteEvent("OnSyncSkySaturationChange", function(saturation)
	SetSkySaturation(saturation)
end)

AddRemoteEvent("OnSyncSkyLightIntensityChange", function(intensity)
	SetSkyLightIntensity(intensity)
end)

AddRemoteEvent("OnSyncStarsBrightnessChange", function(brightness)
	SetStarsBrightness(brightness)
end)

AddRemoteEvent("OnSyncOceanColorReset", function()
	ResetOceanColor()
end)

AddRemoteEvent("OnSyncFogDensityChange", function(density)
	SetFogDensity(density)
end)

AddRemoteEvent("OnSyncSkyRotationSpeedChange", function(speed)
	SetSkyRotationSpeed(speed)
end)

AddRemoteEvent("OnSyncSunLightIntensityChange", function(intensity)
	SetSunLightIntensity(intensity)
end)

AddRemoteEvent("OnSyncChatToggle", function(bToggle)
	ShowChat(bToggle)
end)

AddRemoteEvent("OnSyncWebUIDestroy", function(web)
	DestroyWebUI(web)
end)

AddRemoteEvent("OnSyncNPCOutlineChange", function(bToggle)
	SetNPCOutline(npc, bToggle)
end)

AddRemoteEvent("OnSyncPlayerClothingPresetChange", function(player, clothing_preset)
	SetPlayerClothingPreset(player, clothing_preset)

	SetPlayerPropertyValue(GetPlayerId(), "player_clothing_" .. tostring(player), clothing_preset)
end)

AddEvent("OnSyncPlayerStreamIn", function(player)
	local clothing_preset = GetPlayerPropertyValue(GetPlayerId(), "player_clothing_" .. tostring(player))

	if(clothing_preset ~= nil) then
		SetPlayerClothingPreset(player, clothing_preset)
	end
end)

AddRemoteEvent("OnSyncPlayerOutlineChange", function(bToggle)
	SetPlayerOutline(player, bToggle)
end)

AddRemoteEvent("OnSyncControlRotationChange", function(pitch, yaw, roll)
	SetControlRotation(pitch, yaw, roll)
end)

AddRemoteEvent("OnSyncMoveInputChange", function(bToggle) 
	SetIgnoreMoveInput(bToggle)
end)

AddRemoteEvent("OnSyncLookInputChange", function(bToggle) 
	SetIgnoreLookInput(bToggle)
end)

AddRemoteEvent("OnSyncCameraStopFade", function() 
	StopCameraFade()
end)

AddRemoteEvent("OnSyncMoonShineChange", function(shine) 
	SetMoonShine(shine)
end)

AddRemoteEvent("OnSyncNearClipPlaneChange", function(clip) 
	SetNearClipPlane(clip)
end)

AddRemoteEvent("OnSyncSunAzimuthChange", function(azimuth) 
	SetSunAzimuth(azimuth)
end)

AddRemoteEvent("OnSyncWaypointDestroy", function(waypointid) 
	DestroyWaypoint(waypointid)
end)

AddRemoteEvent("OnSyncObjectModelMeshChange", function(ModelId, PathToMesh) 
	ReplaceObjectModelMesh(ModelId, PathToMesh)
end)

AddRemoteEvent("OnSyncMoonRadiusChange", function(radius) 
	SetMoonRadius(radius)
end)

AddRemoteEvent("OnSyncCameraViewDistanceChange", function(distance) 
	SetCameraViewDistance(distance)
end)

AddRemoteEvent("OnSyncNPCCClothingPresetChange", function(npc, clothing_preset)
	SetNPCClothingPreset(npc, clothing_preset)

	SetPlayerPropertyValue(GetPlayerId(), "npc_clothing_" .. tostring(npcc), clothing_preset)
end)

AddEvent("OnSyncNPCStreamIn", function(npc)
	local clothing_preset = GetPlayerPropertyValue(GetPlayerId(), "npc_clothing_" .. tostring(npc))

	if(clothing_preset ~= nil) then
		SetNPCClothingPreset(npc, clothing_preset)
	end
end)

AddRemoteEvent("OnSyncObjectAnimatedTextureChange", function(object, TextureFile, Rows, Columns, MaterialSlot) 
	SetObjectAnimatedTexture(object, TextureFile, Rows, Columns, MaterialSlot)
end)

AddRemoteEvent("OnSyncMoonLightIntensityChange", function(intensity) 
	SetMoonLightIntensity(intensity)
end)

AddRemoteEvent("OnSyncServerChange", function(Address, Port, Password)
	ConnectToServer(Address, Port, Password)
end)

AddRemoteEvent("OnSyncWeaponHUDToggle", function(bToggle)
	ShowWeaponHUD(bToggle)
end)

AddRemoteEvent("OnSyncLoadPak", function(PakName, RootPath, ContentPath)
	LoadPak(PakName, RootPath, ContentPath)
end)

AddRemoteEvent("OnSyncOceanWaterLevelChange", function(Level, bIncludeSwimmingVolume)
	SetOceanWaterLevel(Level, bIncludeSwimmingVolume)
end)

AddRemoteEvent("OnSyncFirstPersonCameraToggle", function(bToggle)
	EnableFirstPersonCamera(bToggle)
end)

AddRemoteEvent("OnSyncRotationRateChange", function(RotationRate)
	SetPlayerRotationRate(RotationRate)
end)

AddRemoteEvent("OnSyncFireworksSpawn", function(modelid, x, y, z, rx, ry, rz)
	CreateFireworks(modelid, x, y, z, rx, ry, rz)
end)

AddRemoteEvent("OnSyncSoundPitchUpdate", function(sound, Pitch)
	SetSoundPitch(sound, Pitch)
end)

AddRemoteEvent("OnSyncControllerOrientedMovementChange", function(bToggle)
	SetControllerOrientedMovement(bToggle)
end)

AddRemoteEvent("OnSyncObjectEditorSpeedChange", function(speed)
	SetObjectEditorSpeed(speed)
end)

AddRemoteEvent("OnSyncObjectHitEventsToggle", function(object, bToggle)
	EnableObjectHitEvents(object, bToggle)
end)