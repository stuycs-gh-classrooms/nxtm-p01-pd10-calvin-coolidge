[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/Mfyqb_T6)
# NeXtCS Project 01
### thinker0: Justin Luo
### thinker1: not applicable :(
---

### Overview
Your mission is create either:
- Life-like cellular automata [life](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life), [life-like](https://en.wikipedia.org/wiki/Life-like_cellular_automaton), [demo](https://www.netlogoweb.org/launch#https://www.netlogoweb.org/assets/modelslib/Sample%20Models/Computer%20Science/Cellular%20Automata/Life.nlogo).
- Breakout/Arkanoid [demo 0](https://elgoog.im/breakout/)  [demo 1](https://www.crazygames.com/game/atari-breakout)
- Space Invaders/Galaga

This project will be completed in phases.  
The first phase will be to work on this document. 
* Use markdown formatting.
* For more markdown help
  - [click here](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) or
  - [here](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)


---

## Phase 0: Selection, Analysis & Plan

#### Selected Project: game of LIFE

### Necessary Features
What are the core features that your program should have? These should be things that __must__ be implemented in order to make the program useable/playable, not extra features that could be added to make the program more interesting/fun.

1. The grid of cells
2. The methods to change cells from dead to alive and vice versa
3. The logic behind whether a cell becomes dead or alive.
4. Specifically, the logic behind Conways, Seeds, and Diamoeba, and the ability to switch between the three
5. An update function to change the state of all cells at the same time interval
6. a time global variable that updates every x amount of frames

### Extra Features
What are some features that are not essential to the program, but you would like to see (provided you have time after completing the necessary features. Theses can be customizations that are not part of the core requirements.

1. The ability to alter the state of a cell on click
2. The ability to save a state and load it later.
3. A set of pre-made sets of cool states.

### Array Usage
How will you be using arrays in this project?

1D Array:
- YOUR ANSER HERE

2D Array:
- YOUR ANSWER HERE


### Controls
How will your program be controlled? List all keyboard commands and mouse interactions.

Keyboard Commands:
- Space to pause
- d to kill everything
- a to make everything alive
- r to randomize the states of all cells

Mouse Control:
- Mouse movement: Nothing
- Mouse pressed: reverse the state of a cell from dead to alive or alive to dead


### Classes
What classes will you be creating for this project? Include the instance variables and methods that you believe you will need. You will be required to create at least 2 different classes. If you are going to use classes similar to those we've made for previous assignments, you will have to add new features to them.

CELL
- Instance variables:
  - Alive: State of a cell
  - neighborsAlive: Number of neighbors alive
- METHODS
  - updateNeighborsAlive: Update the number of neighbors alive

GRID
- Instance variables:
  - Height
  - Width
  - cellSize
- METHODS
  - updateCells: asks all cells to update
  - resetCells: kills all cells
  - resetCellsAlive: Alives all cells
