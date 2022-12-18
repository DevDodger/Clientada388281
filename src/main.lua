--SERVER SCRIPT IN SERVERSCRIPT SERVICE
local folder = game:GetService('ReplicatedStorage'):WaitForChild('clientada')
local setdata = folder:WaitForChild('SetData')
local getdata = folder:WaitForChild('GetData')
local incrememntdata = folder:WaitForChild('IncrementData')
local updatedata = folder:WaitForChild('UpdateData')
local removedata = folder:WaitForChild('RemoveData')
local dsv = game:GetService('DataStoreService')
local config = require(script:WaitForChild('config'))
local key = config.Key
local kickoninckey = config.kickOnIncorrectKey

if typeof(key) == 'boolean' then
	error("Incorrect key config.")
end

if typeof(kickoninckey) ~= 'boolean' then
	error('Incorrect kick on key config.')
end


setdata.OnServerInvoke = function(plr, userkey, ds, dkey, data)
	if not userkey or userkey ~= key then
		if kickoninckey == true then
			plr:Kick("Attempted to access Clientada with an incorrect key. Possible exploit detected. Key provided: ".. userkey)
			return end
		if kickoninckey == false then  
			warn("Attempted to access Clientada with incorrect key")
			return end
	end
	local success, errorm = pcall(function()
		ds = dsv:GetDataStore(ds)
		ds:SetAsync(dkey, data)
	end)
	if errorm then
		return errorm
	else
		return 0
	end
end

getdata.OnServerInvoke = function(plr, userkey, ds, dkey)
	if not userkey or userkey ~= key then
		if kickoninckey == true then
			plr:Kick("Attempted to access Clientada with an incorrect key. Possible exploit detected. Key provided: ".. userkey)
			return end
		if kickoninckey == false then  
			warn("Attempted to access Clientada with incorrect key")
			return end
	end
	local rdata
	local success, errorm = pcall(function()
		ds = dsv:GetDataStore(ds)
		rdata = ds:GetAsync(dkey)
	end)
	if errorm then
		return errorm
	else
		return rdata
	end
end

incrememntdata.OnServerInvoke = function(plr, userkey, ds, dkey, increment, incrementoptions)
	if not userkey or userkey ~= key then
		if kickoninckey == true then
			plr:Kick("Attempted to access Clientada with an incorrect key. Possible exploit detected. Key provided: ".. userkey)
			return end
		if kickoninckey == false then  
			warn("Attempted to access Clientada with incorrect key")
			return end
	end
	if typeof(increment) ~= "number" then
		return "Increment value must be a number" end
	local success, errorm = pcall(function()
		ds = dsv:GetDataStore(ds)
		ds:IncrementAsync(dkey, increment, incrementoptions)
	end)
	if errorm then
		return errorm
	else
		return 0
	end
end

removedata.OnServerInvoke = function(plr, userkey, ds, dkey)
	if not userkey or userkey ~= key then
		if kickoninckey == true then
			plr:Kick("Attempted to access Clientada with an incorrect key. Possible exploit detected. Key provided: ".. userkey)
			return end
		if kickoninckey == false then  
			warn("Attempted to access Clientada with incorrect key")
			return end
	end
	local success, errorm = pcall(function()
		ds = dsv:GetDataStore(ds)
		ds:RemoveAsync(dkey)
	end)
	if errorm then
		return errorm
	else
		return 0
	end
end
