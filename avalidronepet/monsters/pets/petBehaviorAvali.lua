local reactToObjectOld = petBehavior.reactToObject

function petBehavior.reactToObject(entityId)
  -- We want nothing to do with pethouses.
  if entityName == "pethouse" then
    return
  end

  reactToObjectOld(entityId)

  local entityName = world.entityName(entityId)
  if entityName == "avalipethouse" then
    petBehavior.queueAction("sleep", {sleepTarget = entityId})
  end
end
