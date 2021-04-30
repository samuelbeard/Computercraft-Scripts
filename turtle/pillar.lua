os.loadAPI("move")

args = {...}
height = args[1] -- Height of the pillar.

function checkAbove(x)
  if (turtle.detectUp()) then
    move.d(x)
    return false
  end
end

function buildTower()
  os.setComputerLabel("Building a Pillar")
  for x=1, height do
    turtle.place()
    if (checkAbove() == false) then
      error()
    end
    move.u(1)
  end
  os.setComputerLabel("Going Down")
  move.d(height)
end

turtle.select(1)
if (turtle.getItemCount() >= tonumber(height)) then
  buildTower()
else
  -- print("Not Enought Resources")
  os.setComputerLabel("Not Enought Resources")
end
os.setComputerLabel("Done")
