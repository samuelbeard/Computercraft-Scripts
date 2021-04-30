os.loadAPI("move")
os.loadAPI("sort")

-- Place items in any slot of the turtle.

-- Start at the bottom left of the wall. Facing where the first block is to be placed.

args = {...}
height = args[1] -- Height of the wall
width = args[2] -- length (width) of the wall

function checkAbove(x)
    if (turtle.detectUp()) then
        move.d(x)
        return false
    end
end

function buildPillar()
    for x=1, height do
        turtle.place()
        if (checkAbove() == false) then
            error()
        end
        move.u(1)
    end
    move.d(height)
end

turtle.select(1)
if (turtle.getItemCount() >= tonumber(height)) then
    buildPillar()
else
    os.setComputerLabel("Not enough resources for this pillar")
end
