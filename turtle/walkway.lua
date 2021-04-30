os.loadAPI("move")

args = {...}
length = args[1]

function placeBlockBelow()
  turtle.select(1)
  if turtle.detectDown() then
    break
  else
    if turtle.placeDown() then
      break
    else
      turtle.select(2)
      turtle.placeDown()
    end
  end
end

os.setComputerLabel("Mining")
for i=1, length do
  turtle.dig()
  move.f(1)
  turtle.digUp()
  placeBlockBelow()
end
move.u(1)
turtle.digUp()
move.u(1)
os.setComputerLabel("Done!")
