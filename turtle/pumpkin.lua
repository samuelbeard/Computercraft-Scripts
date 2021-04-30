os.loadAPI("move")

cobbleID = "minecraft:cobblestone"

function harvestBlock()
  os.setComputerLabel("Harvesting")
  turtle.digDown()
  turtle.suckDown()
  move.f(1)
end

function goBack()
  os.setComputerLabel("Heading Back")
  move.t(3)
  while (turtle.detect() == false) do
    move.f(1)
  end
  turtle.drop()
  move.t(3)
  sleep(5)
end

turtle.select(1)
t(3)
while true do
  local success, data = turtle.inspectDown()
  if (data.name == cobbleID) then
    goBack()
  else
    harvestBlock()
  end
end
