os.loadAPI("move")
os.loadAPI("inv")

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
    inv.selectNextSlotWithItems()
    turtle.place()
    if (!checkAbove()) then
      error()
    end
    move.u(1)
  end
  os.setComputerLabel("Going Down")
  move.floor()
end


-- Start Script
if (inv.hasEnoughItems(height)) then
  inv.selectNextSlotWithItems()
  buildTower()
else
  os.setComputerLabel("Not Enough Resources")
end
