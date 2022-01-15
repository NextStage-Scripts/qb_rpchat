-- Local OOC 

RegisterNetEvent('esx_rpchat:sendLocalOOC')
AddEventHandler('esx_rpchat:sendLocalOOC', function(playerId, title, message, color)
	local player = PlayerId()
	local target = GetPlayerFromServerId(playerId)
	if target ~= -1 then
      local playerPed = PlayerPedId()
      local targetPed = GetPlayerPed(target)
      local playerCoords = GetEntityCoords(playerPed)
      local targetCoords = GetEntityCoords(targetPed)

      if target == player or #(playerCoords - targetCoords) < 20 then
		TriggerEvent('chat:addMessage', {
			template = '<div style="padding: 0.45vw; margin: 0.05vw; background-color: rgba(255, 255, 255, 0.15); font-weight: 100; text-shadow: 0px 0 black, 0 0.5px black, 0.0px 0 black, 0 0px black; box-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black; border-radius: 3px;"><i class="fas fa-street-view"></i><b> | L - OOC |</b> </br> {0}: {1}</div>',
			args = { title, message }
		  })
      end
   end
end)

-- ME command

RegisterNetEvent('esx_rpchat:sendMe')
AddEventHandler('esx_rpchat:sendMe', function(playerId, title, message, color)
	local player = PlayerId()
	local target = GetPlayerFromServerId(playerId)
	if target ~= -1 then
      local playerPed = PlayerPedId()
      local targetPed = GetPlayerPed(target)
      local playerCoords = GetEntityCoords(playerPed)
      local targetCoords = GetEntityCoords(targetPed)

      if target == player or #(playerCoords - targetCoords) < 20 then
		TriggerEvent('chat:addMessage', {
			template = '<div style="padding: 0.45vw; margin: 0.05vw; background-color: rgba(202, 83, 220, 0.3); font-weight: 100; text-shadow: 0px 0 black, 0 0.5px black, 0.0px 0 black, 0 0px black; box-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black; border-radius: 3px;"><i class="fas fa-user-circle"></i> <b> | ME |</b> </br> {0}: {1}</div>',
			  args = { title, message }
		  })
      end
   end
end)

-- DO command

RegisterNetEvent('esx_rpchat:sendDo')
AddEventHandler('esx_rpchat:sendDo', function(playerId, title, message, color)
	local player = PlayerId()
	local target = GetPlayerFromServerId(playerId)
	if target ~= -1 then
      local playerPed = PlayerPedId()
      local targetPed = GetPlayerPed(target)
      local playerCoords = GetEntityCoords(playerPed)
      local targetCoords = GetEntityCoords(targetPed)

	  if target == player or #(playerCoords - targetCoords) < 20 then
		TriggerEvent('chat:addMessage', {
			template = '<div style="padding: 0.45vw; margin: 0.05vw; background-color: rgba(220, 173, 17, 0.3); font-weight: 100; text-shadow: 0px 0 black, 0 0.5px black, 0.0px 0 black, 0 0px black; box-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black; border-radius: 3px;"><i class="fas fa-users"></i> <b> | DO |</b> </br> {0}: {1}</div>',
			args = { title, message }
		  })
      end
   end
end)

-- DOC command

RegisterNetEvent('esx_rpchat:sendDoc')
AddEventHandler('esx_rpchat:sendDoc', function(playerId, title, message, color)
	local player = PlayerId()
	local target = GetPlayerFromServerId(playerId)
	if target ~= -1 then
      local playerPed = PlayerPedId()
      local targetPed = GetPlayerPed(target)
      local playerCoords = GetEntityCoords(playerPed)
      local targetCoords = GetEntityCoords(targetPed)

	  if target == player or #(playerCoords - targetCoords) < 20 then
		TriggerEvent('chat:addMessage', {
			template = '<div style="padding: 0.45vw; margin: 0.05vw; background-color: rgba(220, 173, 17, 0.3); font-weight: 100; text-shadow: 0px 0 black, 0 0.5px black, 0.0px 0 black, 0 0px black; box-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black; border-radius: 3px;"><i class="fas fa-users"></i> <b> | DOC |</b> </br> {0}: {1}</div>',
			args = { title, message }
		  })
      end
   end
end)

 -- TRY command
 RegisterCommand('try', function(source, args, rawCommand)
	local luck = math.random(1,2)
	if luck == 2 then
	ExecuteCommand('dfsdfsdfsdfsd Ano')
	elseif luck == 1 then 
	ExecuteCommand('dfsdfsdfsdfsd Ne')
  end
  end)

RegisterNetEvent('esx_rpchat:sendTry')
AddEventHandler('esx_rpchat:sendTry', function(playerId, title, message, color)
	local player = PlayerId()
	local target = GetPlayerFromServerId(playerId)
	if target ~= -1 then
      local playerPed = PlayerPedId()
      local targetPed = GetPlayerPed(target)
      local playerCoords = GetEntityCoords(playerPed)
      local targetCoords = GetEntityCoords(targetPed)

      if target == player or #(playerCoords - targetCoords) < 20 then
		TriggerEvent('chat:addMessage', {
			template = '<div style="padding: 0.45vw; margin: 0.05vw; background-color: rgba(83, 183, 220, 0.3); font-weight: 100; text-shadow: 0px 0 black, 0 0.5px black, 0.0px 0 black, 0 0px black; box-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black; border-radius: 3px;"><i class="fas fa-user-circle"></i> <b> | TRY |</b> </br> {0}: {1}</div>',
			  args = { title, message }
		  })
      end
   end
end)

-- KOSTKA command
RegisterCommand('kostka', function(source, args, rawCommand)
	local number = math.random(1,6)
	ExecuteCommand('me Hazim kostkou')
	Citizen.Wait(650)
	  ExecuteCommand('doc 2')
	Citizen.Wait(3000)
	ExecuteCommand('do Spadlo ' ..number)
  end)

-- MINCE command 
RegisterCommand('mince', function(source, args, rawCommand)
	local luck = math.random(1,2)
	if luck == 2 then
	ExecuteCommand('me Hazim minci')
	Citizen.Wait(500)
	ExecuteCommand('doc 2')
	Citizen.Wait(3000)
	ExecuteCommand('do Hodil si pannu')
	elseif luck == 1 then 
	ExecuteCommand('me Hazim minci')
	Citizen.Wait(500)
	ExecuteCommand('doc 2')
	Citizen.Wait(3000)
	ExecuteCommand('do Hodil si orla')
  end
  end)