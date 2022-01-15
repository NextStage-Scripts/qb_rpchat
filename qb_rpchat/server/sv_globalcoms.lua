local QBCore = exports['qb-core']:GetCoreObject()

 --OOC command
 RegisterCommand('ooc', function(source, args, rawCommand)
  local playerName = GetPlayerName(source)
  local msg = rawCommand:sub(5)

  TriggerClientEvent('chat:addMessage', -1, {
      template = '<div style="padding: 0.45vw; margin: 0.05vw; background-color: rgba(0, 0, 0, 0.3); font-weight: 100; text-shadow: 0px 0 black, 0 0.5px black, 0.0px 0 black, 0 0px black; box-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black; border-radius: 3px;"> <i class="fas fa-globe"></i> <b> | OOC |<br>{0}: {1}</div>',
      args = { playerName, msg }
  })
end, false)

-- Local OOC

AddEventHandler('chatMessage', function(source, name, message)
  if string.sub(message, 1, string.len('/')) ~= '/' then
    CancelEvent()

    if Config.EnableESXIdentity then name = GetCharacterName(source) end

    TriggerClientEvent('esx_rpchat:sendLocalOOC', -1, source, name, message, {30, 144, 255});
  end
end)

-- ME command
RegisterCommand('me', function(source, args, rawCommand)
  if source == 0 then
  print('esx_rpchat: you can\'t use this command from rcon!')
  return
end

args = table.concat(args, ' ')
local name = GetPlayerName(source)
if Config.EnableESXIdentity then name = GetCharacterName(source) end

TriggerClientEvent('esx_rpchat:sendMe', -1, source, name, args, { 202, 83, 220 })
TriggerClientEvent('3dme:triggerDisplay', -1, args, source)
--print(('%s: %s'):format(name, args))
end)

-- DO command
RegisterCommand('do', function(source, args, rawCommand)
  if source == 0 then
  print('esx_rpchat: you can\'t use this command from rcon!')
  return
end

args = table.concat(args, ' ')
local name = GetPlayerName(source)
if Config.EnableESXIdentity then name = GetCharacterName(source) end

TriggerClientEvent('esx_rpchat:sendDo', -1, source, name, args, { 255, 198, 0 })
TriggerClientEvent('3ddo:triggerDisplay', -1, args, source)
--print(('%s: %s'):format(name, args))
end)

-- DOC command

RegisterCommand('doc', function(source, args, rawCommand)
  if source == 0 then
  print('esx_rpchat: you can\'t use this command from rcon!')
  return
end
if args == nil then
print('source .. args .. rawCommand')
return
end
args = table.concat(args, ' ')
local name = GetPlayerName(source)
if Config.EnableESXIdentity then name = GetCharacterName(source) end
local counter_doc = 0
local pocetOpakovani = tonumber(args)
if pocetOpakovani < 101 then
  while counter_doc < pocetOpakovani do
      counter_doc = counter_doc + 1 
      TriggerClientEvent('esx_rpchat:sendDoc', -1, source, name, counter_doc .. "/" .. pocetOpakovani , { 255, 198, 0 })
      TriggerClientEvent('3ddoa:triggerDisplay', -1, counter_doc .. "/" .. pocetOpakovani, source)
      Citizen.Wait(2000)
  end 
end
end)

-- TRY command

RegisterCommand('dfsdfsdfsdfsd', function(source, args, rawCommand)
if source == 0 then
print('esx_rpchat: you can\'t use this command from rcon!')
return
end

args = table.concat(args, ' ')
local name = GetPlayerName(source)
if Config.EnableESXIdentity then name = GetCharacterName(source) end

TriggerClientEvent('esx_rpchat:sendTry', -1, source, name, args, { 83, 183, 220 })
TriggerClientEvent('3dtry:triggerDisplay', -1, args, source)
--print(('%s: %s'):format(name, args))
end)
