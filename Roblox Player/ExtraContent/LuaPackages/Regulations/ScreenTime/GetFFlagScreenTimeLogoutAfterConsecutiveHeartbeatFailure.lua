game:DefineFastFlag("LuaScreenTimeLogoutAfterConsecutiveHeartbeatFailure", false)

return function()
	return game:GetFastFlag("LuaScreenTimeLogoutAfterConsecutiveHeartbeatFailure")
end
