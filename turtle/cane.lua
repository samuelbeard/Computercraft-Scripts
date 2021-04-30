os.loadAPI("move")

chestID = "minecraft:chest"
cobbleID = "minecraft:cobblestone"
-- Gold Chest -> IronChest:BlockIronChest:1

function turnAround()
  turtle.digDown()
  move.d(1)
  move.t(3)
end

function restart()
  move.t(3)
  move.u(1)
end
  
function harvest()
  local successDown, dataDown = turtle.inspectDown()
  local success, data = turtle.inspect()

  if (data.name == cobbleID) then
    turnAround()
  end
  
  if (dataDown.name == chestID) then
    turtle.dropDown()
    restart()
  else
    turtle.dig()
    move.f(1)
  end
end

turtle.select(1)
move.u(1)
while true do
  harvest()
end
