# ComputerCraft Scripts

All scripts assume that fuel requirements are turned off.

#### To Make:
- Crafting Scripts for Computers and Turtles
- Sugarcane harvester
- Cactus Harvester
- Automatic Lighting
- Mob Farm - Kill mobs, get the items, put them in a chest.
- Does `git.get(username, repo, branch, file)` work?
- Cobblestone Generator? Because I can!

---

TRY:

Place move.lua into rom/apis. Then in all scripts add `os.loadAPI("move")`. Then call all move functions with `move.u()`.

http://www.computercraft.info/forums2/index.php?/topic/9915-run-functions-of-other-files/

---

# Turtles

---
### Move
This is the movement API. This is minified and injected into all turtle scripts.

- `u()` - Move up x blocks
- `d()` - Move down x blocks
- `t()` - Turn. 1 = Left, 2 = Right, 3 = 180deg
- `b()` - Move back x blocks
- `r()` - Move right x blocks and end up facing your original direction.
- `l()` - Move left x blocks and end up facing your original direction.

---
### Delivery
*Edit for each turtle based on its delivery route.*

Collects cargo from one chest and delivers it to another.

Start the turtle next to the inventory it will be taking from.

---
### Pillar
```
pillar <height> <material slot>
```
Builds a 1 block pillar to the specified height.

#### Setup
- Place the turtle on the ground. Pillar will be built directly in front of it.
- Place the building material into the selected inv slot.

---
### GitHub
```
github get <github-path> <program-name>
github get samuelbeard/Computercraft-Scripts/master/turtle/pillar.lua
```

---
### Floor
```
floor <x> <y>
```
Builds a floor. The turtle will place blocks below it.

Start at the near-right corner of the floor.

Args:
- Floor Depth
- Floor Width

#### Setup
- Ensure there are no obstructions where the floor will go or one block above.
- Place the turtle above the near-right corner of where the floor will go.
- Place the floor material in inv slot 1.

---
### Lumberjack
- v1 - Cut the tree in front of it down. Place the wood in a chest behind.
- v2 - Cut down trees in front of it and either side of it.
- v3 - Collect saplings from a chest and plant them. Put the logs back into that chest.

#### Setup
- Place the turtle on the floor.
- Place a chest directly behind it.
- Place saplings in inv slot 1.
- Ensure that the space in front of the turtle can be planted in.

---
### Pumpkin
```
pumpkin
```
Harvest pumpkins or watermelons.
- v2 - Two rows of harvestables.

#### Setup
- Put the pumpkins in a long row and on each end, place a block of cobble.
- On top of one of the cobble, place a chest.
- Place the turtle on top of pumpkins next to, and facing the chest.
