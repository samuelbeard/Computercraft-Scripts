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
Colour Coding:
- BROWN - Lumberjack
- GREEN - Harvesting
- RED - Delivery
- BLACK - Builder
- WHITE - Miner

---
### GitHub
```
> github get <github-path> <program-name>
> github get turtle/pillar.lua pillar
```

---
### Move
This is the movement API. This is minified and injected into all turtle scripts.

- `u(x)` - Move up x blocks
- `d(x)` - Move down x blocks
- `t(x)` - Turn. 1 = Left, 2 = Right, 3 = 180deg
- `b(x)` - Move back x blocks and end up facing your original direction.
- `r(x)` - Move right x blocks and end up facing your original direction.
- `l(x)` - Move left x blocks and end up facing your original direction.
- `floor()` - Move down to the floor.
- `dump(d)` - Dump all cargo. d = direction to dump (up, down or blank).

---
### Delivery
**Edit for each turtle based on its delivery route.**

```
> delivery
```

Collects cargo from one chest and delivers it to another.

Start the turtle next to the inventory it will be taking from.

---
### Pillar
```
> pillar <height>
```
Builds a 1 block pillar to the specified height.

#### Setup
- Place the turtle on the ground. Pillar will be built directly in front of it.
- Place the building material into the selected inv slot.

#### Improvements
- When a stack of materials is depleted, move to the next stack.
- If no height is given. Go until it either runs out of materials or hits something above it.
- Use the `floor()` function to go back down instead of counting.

---
### Floor - NOT WORKING
```
> floor <x> <y>
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
### Lumberjack - NOT WORKING
```
> lumberjack
```

#### Setup
- Place the turtle on the floor.
- Place a chest directly behind it.
- Place saplings in inv slot 1.
- Ensure that the space in front of the turtle can be planted in.

#### Improvements
- Cut down trees in front and either side of the turtle.
- Collect saplings from a chest and plant them. Put the logs back into that chest.

---
### Pumpkin
```
> pumpkin
```

#### Setup
- Put the pumpkins in a long row and on each end, place a block of cobble.
- On top of one of the cobble, place a chest.
- Place the turtle on top of pumpkins next to, and facing the chest.

#### Improvements
- Harvest from two rows.

---
### Walkway
```
> walkway <length>
```
Digs out a walkway two blocks high by one block wide. Also places blocks for the floor if needed.

#### Setup
- Place the turtle facing the direction the tunnel will be at floor level.
- Place some floor blocks in slot 1.

#### Improvements
- Protect against gravel and sand falling down.

---
### Cane
```
> cane
```
Harvests a row of sugar cane.

#### Setup
- Place a single line of cane.
- Place a stack of three cobblestone at one end of the row.
- Place a chest on the floor at the other end of the cane row.
- Place the turtle on top of the chest. Facing towards the row of cane.

#### Improvements
- Stop detecting the chest and instead, detect a block behind the chest. So it can be any inventory.

---
### Cactus
```
> cactus
```
Harvests cactus.

#### Setup
- Place a row of cactus then a row of nothing then a symmetrical row of cactus.
- Place a chest at the end of the rows in the center row. The chest should be on the same level as the lowest cactus block.
- Place the turtle above the chest, facing into the rows.
- Place a 3 high stack of cobblestone at the end of the rows in the center row.

---
### Step Mine
```
stepmine
```
Mines down diagonally and places steps as it goes.

- v0.2 - When it runs out of steps and mines something else into slot 1, it will place that down again...

#### Setup
- Place the turtle facing the direction you want it to mine.
- Place stair blocks into slot 1.
---
<!-- ### Cobblestone Generator
```
cobblestone <side>
```

Mines cobblestone in one spot from a cobblestone generator.

#### Setup
- Place the turtle facing, below or above the location where cobblestone is generated.
- `cobblestone <side>` - `up`, `down`, `front`. -->
