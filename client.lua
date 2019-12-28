AddRemoteEvent("OnInputModeChange", function(InputMode)
	SetInputMode(InputMode)
end)

AddRemoteEvent("OnFOVChange", function(fov)
	SetCameraFoV(fov)
end)

AddRemoteEvent("OnWeatherChange", function(weather)
	SetWeather(weather)
end)

AddRemoteEvent("OnCameraStopShake", function(bImmediate)
	StopCameraShake(bImmediate)
end)

AddRemoteEvent("OnSoundDestroy", function(sound)
	DestroySound(sound)
end)

AddRemoteEvent("OnTextBoxDestroy", function(textid)
	DestroyTextBox(textid)
end)

AddRemoteEvent("OnSunRadiusChange", function(radius)
	DestroyTextBox(radius)
end)

AddRemoteEvent("OnChatLocationChange", function(breadth, height)
	SetChatLocation(breadth, height)
end)

AddRemoteEvent("OnTimeChange", function(time)
	SetTime(time)
end)

AddRemoteEvent("OnSunShineChange", function(shine)
	SetSunShine(shine)
end)

AddRemoteEvent("OnHealthHUDToggle", function(bToggle)
	ShowHealthHUD(bToggle)
end)

AddRemoteEvent("OnMouseCursorToggle", function(bToggle)
	ShowMouseCursor(bToggle)
end)

AddRemoteEvent("OnSkySaturationChange", function(saturation)
	SetSkySaturation(saturation)
end)

AddRemoteEvent("OnSkyLightIntensityChange", function(intensity)
	SetSkyLightIntensity(intensity)
end)

AddRemoteEvent("OnStarsBrightnessChange", function(brightness)
	SetStarsBrightness(brightness)
end)

AddRemoteEvent("OnOceanColorReset", function()
	ResetOceanColor()
end)

AddRemoteEvent("OnFogDensityChange", function(density)
	SetFogDensity(density)
end)

AddRemoteEvent("OnSkyRotationSpeedChange", function(speed)
	SetSkyRotationSpeed(speed)
end)

AddRemoteEvent("OnSunLightIntensityChange", function(intensity)
	SetSunLightIntensity(intensity)
end)

AddRemoteEvent("OnChatToggle", function(bToggle)
	ShowChat(bToggle)
end)

AddRemoteEvent("OnWebUIDestroy", function(web)
	DestroyWebUI(web)
end)

AddRemoteEvent("OnNPCOutlineChange", function(bToggle)
	SetNPCOutline(npc, bToggle)
end)

AddRemoteEvent("OnPlayerClothingPresetChange", function(player, clothing_preset)
	SetPlayerClothingPreset(player, clothing_preset)

	SetPlayerPropertyValue(GetPlayerId(), "player_clothing_" .. tostring(player), clothing_preset)
end)

AddEvent("OnPlayerStreamIn", function(player)
	local clothing_preset = GetPlayerPropertyValue(GetPlayerId(), "player_clothing_" .. tostring(player))

	if(clothing_preset ~= nil) then
		SetPlayerClothingPreset(player, clothing_preset)
	end
end)

AddRemoteEvent("OnPlayerOutlineChange", function(bToggle)
	SetPlayerOutline(player, bToggle)
end)

AddRemoteEvent("OnControlRotationChange", function(pitch, yaw, roll)
	SetControlRotation(pitch, yaw, roll)
end)

AddRemoteEvent("OnMoveInputChange", function(bToggle) 
	SetIgnoreMoveInput(bToggle)
end)

AddRemoteEvent("OnLookInputChange", function(bToggle) 
	SetIgnoreLookInput(bToggle)
end)

AddRemoteEvent("OnCameraStopFade", function() 
	StopCameraFade()
end)

AddRemoteEvent("OnMoonShineChange", function(shine) 
	SetMoonShine(shine)
end)

AddRemoteEvent("OnNearClipPlaneChange", function(clip) 
	SetNearClipPlane(clip)
end)

AddRemoteEvent("OnSunAzimuthChange", function(azimuth) 
	SetSunAzimuth(azimuth)
end)

AddRemoteEvent("OnWaypointDestroy", function(waypointid) 
	DestroyWaypoint(waypointid)
end)

AddRemoteEvent("OnObjectModelMeshChange", function(ModelId, PathToMesh) 
	ReplaceObjectModelMesh(ModelId, PathToMesh)
end)

AddRemoteEvent("OnMoonRadiusChange", function(radius) 
	SetMoonRadius(radius)
end)

AddRemoteEvent("OnCameraViewDistanceChange", function(distance) 
	SetCameraViewDistance(distance)
end)

AddRemoteEvent("OnNPCCClothingPresetChange", function(npc, clothing_preset)
	SetNPCClothingPreset(npc, clothing_preset)

	SetPlayerPropertyValue(GetPlayerId(), "npc_clothing_" .. tostring(npcc), clothing_preset)
end)

AddEvent("OnNPCStreamIn", function(npc)
	local clothing_preset = GetPlayerPropertyValue(GetPlayerId(), "npc_clothing_" .. tostring(npc))

	if(clothing_preset ~= nil) then
		SetNPCClothingPreset(npc, clothing_preset)
	end
end)

AddRemoteEvent("OnObjectAnimatedTextureChange", function(object, TextureFile, Rows, Columns, MaterialSlot) 
	SetObjectAnimatedTexture(object, TextureFile, Rows, Columns, MaterialSlot)
end)

AddRemoteEvent("OnMoonLightIntensityChange", function(intensity) 
	SetMoonLightIntensity(intensity)
end)

AddRemoteEvent("OnServerChange", function(Address, Port, Password)
	ConnectToServer(Address, Port, Password)
end)

AddRemoteEvent("OnWeaponHUDToggle", function(bToggle)
	ShowWeaponHUD(bToggle)
end)

AddRemoteEvent("OnLoadPak", function(PakName, RootPath, ContentPath)
	LoadPak(PakName, RootPath, ContentPath)
end)

AddRemoteEvent("OnOceanWaterLevelChange", function(Level, bIncludeSwimmingVolume)
	SetOceanWaterLevel(Level, bIncludeSwimmingVolume)
end)

AddRemoteEvent("OnFirstPersonCameraToggle", function(bToggle)
	EnableFirstPersonCamera(bToggle)
end)

AddRemoteEvent("OnRotationRateChange", function(RotationRate)
	SetPlayerRotationRate(RotationRate)
end)

AddRemoteEvent("OnFireworksSpawn", function(modelid, x, y, z, rx, ry, rz)
	CreateFireworks(modelid, x, y, z, rx, ry, rz)
end)

AddRemoteEvent("OnSoundPitchUpdate", function(sound, Pitch)
	SetSoundPitch(sound, Pitch)
end)

AddRemoteEvent("OnControllerOrientedMovementChange", function(bToggle)
	SetControllerOrientedMovement(bToggle)
end)

AddRemoteEvent("OnObjectEditorSpeedChange", function(speed)
	SetObjectEditorSpeed(speed)
end)

AddRemoteEvent("OnObjectHitEventsToggle", function(object, bToggle)
	EnableObjectHitEvents(object, bToggle)
end)