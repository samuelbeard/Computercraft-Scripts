os.loadAPI("move")

chestID = "minecraft:chest"
cobbleID = "minecraft:cobblestone"

function harvestBlocks()
  move.t(1)
  turtle.dig()
  move.t(3)
  turtle.dig()
  move.t(1)
end

function turnAround()
  move.d(1)
  move.t(3)

function restart()
  move.t(3)
  move.u(1)

function harvest()
  local successDown, dataDown = turtle.inspectDown()
  local success, data = turtle.inspect()

  if (data.name == cobbleID) then
    turnAround()
  else if (dataDown.name == chestID) then
    turtle.dropDown()
    restart()
  else
    harvestBlocks()
    move.f(1)
  end

turtle.select(1)
move.u(1)
while true do
  harvest()
end
