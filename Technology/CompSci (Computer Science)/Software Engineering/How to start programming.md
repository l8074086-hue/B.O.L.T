# How do I start programming?

If you wish to get started with programming there are multiple things you'd have to do. First off, you should select a first language. Starting with low-level languages can help you understand how computers work, so high-level languages don't feel like magic or like they're missing features. Personally, I think a first language should rarely matter and you should choose the language that fits what you're trying to do by learning programming. A cheat sheet will be provided from my experience as a programmer at the end.

## What is a low/high level language?

To put it roughly, a low level language is closer to machine code, giving you control in return for being harder. Example: C. Higher level languages abstract away from machine code, making it easier to read for humans but usually taking longer for the machine to read.

## What are the main things I should learn?

The most important thing to learn from any language are:

- Types / Variables
- Control flow
- Packages / Imports
- Language specific features
- Functions

### Types / Variables

Types are a really important part of programming. The most common types in Python include Strings, Integers, Floats, Lists and Dictionaries. Variables are a place to store information. In Python, you don't usually define types explicitly. Instead, you just define variables and the interpreter (what runs your code) infers it. Example: `string = "hello"` would make the interpreter infer a string from the variable.

### Control Flow

These are things like:

- if/else
- while loops
- for loops
- breaks
- continues
- matches

These help your code decide what runs and give you the ability to specify the way you want your code to run. For example, if you make a game you always want a game loop. What it essentially is is a loop that runs forever and updates the game within that loop. The game ends when you break from the loop.

### Packages and Imports

Packages and Imports are essential for using external libraries and packages in your code. An example would be something like Pygame, a library which makes it easy to make a game in Python without using a game engine. To use it you'd have to download it, and that's usually done with a package manager like Python's pip or Rust's cargo. A package manager makes it easier to use external packages. To use Pygame in Python you first download it with `pip install pygame` and if you want to use it in your code all you have to do is import it at the top.

There are 3 ways to import packages:

- Simple import: `import pygame`
- Import specific subsets: `from foo import bar`
- Use aliases (useful when the library has a long name): `import a_very_long_package_name as vlp` — allows you to use `vlp.foo()` instead of the full name.

### Language specific features

This section is different for every language so I won't get very into it, but I'll give you a few rough examples.

- **Python's features** include the fact that it's a very elastic language thanks to being dynamically typed and its massive catalogue of libraries.
- **Rust's features** include the borrow checker, its heavy focus on type safety and its diverse array of types.

### Functions

Functions are really important as they allow you to reuse parts of your code and organize your code to make it more readable. Instead of typing a section of code every time, you can simply make a function and use it across your codebase (if you use imports). It helps you make readable code because you can know specifically what a section of code does thanks to the names of the functions. A crude example might be using `add(n1, n2)` instead of doing `n1 + n2`. Please note that this is a crude example and in actual code you don't need to make every addition into a function.

## Programming language cheat sheet

### If you plan to make games with an engine

- GDscript in Godot
- C++ in Unreal Engine
- C# in Unity Engine

### If you plan to make web tools and games

- JavaScript
- HTML
- CSS
- A backend language of your choice

### If you plan to make games without an engine

- C with Raylib
- Python with Pygame
- C++ with SDL (or Raylib)

### If you plan to make tools and QoL scripts

- Bash
- Python

### If you plan to make general purpose scripts

- Rust
- Python
- Go

### Web backend languages

- Go
- Python with Flask/Django
- Rust
