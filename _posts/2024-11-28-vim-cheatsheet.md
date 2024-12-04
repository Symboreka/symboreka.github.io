---
layout: post
title: Vim Cheatsheet
date: 2024-11-30
categories: [post, vim, tools]
tags: [vim, editor, cheatsheet, neovim]
---

## Introduction

Vim is mostly known by its memes on how nobody is able to quit (`:q!` btw).
Here I want to demystify the rabbit hole of vim and create a Cheatsheet as a reference mostly, for myself. 

The reasons why I want to use vim in my life more are the following. Reducing the reliance on the mouse is something I look forward to. To be clear, this is not about speed. While speed is cool and all, at the current stage of my life, my typing speed is not the bottleneck of my development. Simply the fact that I don't have to use my mouse/trackpad is the goal. "Hand me a keyboard and leave me to it" is the idea. My current goal is to see a low percentage keyboard and not be afraid to use it, but rather excited.

This article will be a continuous work in progress, as I learn new things.

---
## Modes

There are several Modes in vim. Every time you use vim, you are in one of those modes. After starting up vim, you are in "Normal Mode". You cannot write text here, but you can navigate and edit your text. Here is a quick overview of the modes in vim

Mode | Keys | Purpose
--|--|--
Normal | `Esc` | Navigate, modify text
Insert | `a`, `A`, `i`, `I`, `o`, `O` | write text
Visual | `v`, `V` | highlight text
Command | `:` | Enter commands e.G. save or quit

---

## Navigation

In normal mode, use `h`,`j`,`k`,`l` to move through the text. They correspond to &larr; &darr; &uarr; &rarr;.
Navigating in broader terms, my current ways are the following

Keys | Result
--|--
`CTRL + D` | Move half a page down
`CTRL + U `| Move half a page up
`gg` | move to the first line
`G` | move to the last line
`:<number>` | jump to line number
`0` | jump to first character in line
`$` | jump to last character in line


---
## Motions
Motions are a powerful way that vim uses to combine the keyboard shortcuts into keymaps. The best way to explain them is by example. Let's look at `d a p` for example. `d` here stands for delete. `a` tells the deletion command to delete around something. `p` tells it to delete around the paragraph you are currently in. This can also be combined with curly braces or any other text object selector. In this post, you will learn more cool ways to use motions. 


---
## Ways to go to insert mode
As seen in the table above, there are multiple keys to enter Insert mode. Here is a quick table with explanations.

Key | Result
-- | --
`a` | append text after cursor
`A` | append text at end of line
`i` | insert text before cursor
`I` | insert text before block (consecutive lines)
`o` | open line below
`O` | open line above


---
## Search, find and replace

There are several ways of searching for text. Here are some of the ways I use to find stuff around my text.

Keys | Purpose
-- | --
`/` | open find menu, type what to search for
`?` | open find menu, search backwards (I dont actually use this one)
`n` | go to next search result
`N` | go to previous search result
`*` | find all occurence of the word your cursor is at

Then replacing the text that was found is done with the `c`(change) key.
A good motion to get started is `c i w`. This means "change in word" and will replace the word your cursor is at and put you in insert mode. After you made your changes you can hit `esc` to go back to normal mode, `n` to find the next occurence and hit `.` to replay the action you made before. This will rename the next occurence of your search to your newly given name.


---
## Copy and Paste
The following commands are useful for copy and paste. Intuitively, copying in vim is named yanking. So `y` is used to yank text, `p` to paste.

Key | Result
-- | --
`y` (normal mode)| yank text. e.G. `y w` copies the word on the cursor
`y` (visual mode) | yank highlighted text
`*y`| copy into system clipboard
`p` | paste text at cursor


---
## Macros, repeating actions
Recording and playing back macros is a beautiful way to make vim actually be useful. You can record actions you take and then replay them with a shortcut. Here are some cool keybinds.

Key | Result
-- | --
`q<letter>` | start recording a macro, save it in the letters register. Valid registers are all lower case letters a-z.
`q` (when done recording) | save macro
`@<letter>` | replay macro at the letters register

This can also be connected with motions. e.G. `5 @ a` replays the register a 5 times.



---
## Random cool motions and shortcuts

### Motions

Motion | Result
--|--
`gu$` | uncapitalize characters until end of line
`gU$` | capitalize characters until end of line
`guu` | capitalize whole line
`gv` | reselect previous selection


---
## Resources 
[Youtube: typecraft "30 Vim commands"](https://www.youtube.com/watch?v=RSlrxE21l_k)