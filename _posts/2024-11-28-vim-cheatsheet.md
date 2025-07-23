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
For beginners, only the first 4 modes are important.

Mode | Keys | Purpose
--|--|--
Normal | `Esc` | Navigate, modify text
Insert | `a`, `A`, `i`, `I`, `o`, `O` | write text
Visual | `v`, `V` | highlight text
Command | `:` | Enter commands e.G. save or quit
Replace | `CTRL+R` | Replace characters as you type. Previous characters are saved, therefore if you delete something you added in this mode, the previous characters reappear

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

Here is a quick list of available motions:

Key | Result
--|--
`i` | inside (apply command to the inside of whatever follows)
`a` | around (apply command around whatever follows)

## Navigating Text with Motions

Here I will present some of the ways to move around text using motions like `w` or `b`. These are used to move around the text more quickly and more in the mindset of the elements in your text instead of the relative position of the cursor.

Key | Result
--|--
`w` | move forward by one word
`W` | move forward by one word excl. special characters
`e` | move forward to the end of the word
`E` | move forward to the end of the word excl. special characters
`b` | move backward by one word
`B` | move backward by one word excl. special characters
`f` `<char>`| move to the next occurence of the character given
`F` `<char>` | move to the previous occurrence of the character given
`t` `<char>` | move until the next occurrence of the character given
`T` `<char>` | move until the previous occurrence of the character given

Here, the term "excl. special characters" means that special characters do not count as individual words. Therefore, the motions will behave a little different. For example moving forward by one word will count a period at the end of a word as part of the word, while a dash that is in between spaces will simply be ignored.

Here are some more advanced motions for moving around text objects

Key | Result
--|--
`{` | move to beginning of next paragraph
`}` | move to beginning of previous paragraph


---
## Ways to go to insert mode
As seen in the table above, there are multiple keys to enter Insert mode. Here is a quick table with explanations.

Key | Result
-- | --
`a` | append text after cursor
`A` | append text at end of line
`i` | insert text before cursor
`I` | insert text at the start of line
`o` | open line below
`O` | open line above

## Editing, but more quickly

As vim cannot improve your writing speed, it can accelerate you in editing text. Here are some of the motions used to help with that

Key | Result 
-- | --
`c` + motion| change (delete and insert)
visual, `c` | change highlighted text
`C` | change until end of line
`cc` | delete whole line and insert
`d` + motion| delete
visual, `d` | delete highlighted text
`D` | delete until end of line
`dd` | delete whole line
`s` | change character to the right of the cursor (alias of `cl`)
`S` | change entire line (alias of `cc`)
`x` | Deletes the character on the cursor
`X` | Deletes the character before the cursor
`J` | Join two lines together (remove newline on current line)

As you can see, deleting `d` and changing `c` behave very similar. Only the mode you end up in changes.

In many cases, you will see that hitting the initial key twice will extend the idea of the motion to the whole line, like `cc`, or `dd` which change the whole line or delete the whole line entirely.

Also note that the `c` and `d` key will put all deleted text into the `x`-Register. So you can always paste your changed text somewhere else

---
## Visual Modes

There are several visual modes to talk about. Here is a quick overview of them:

Mode | Key | Explanation
--|--|---
Visual | `v` | Standard visual mode, highlight text from start to end with cursor movements
Visual Line |`V`| Line Selection mode, highlight full lines, moving up or down
Visual Block | `CTRL` + `v` |  Selects text as a block. Allows changes in vertical scenarios

Notes: 
- Changing text in Visual Block Mode does not show the changes you are doing on all lines. They take effect after leaving insert mode.


---
## Undo and Redo
Similar to all other editors, undo and redo exist here, but not like the familiar way you are probably already used to.

Key | Purpose
--|--
`u` | undo
`U` | undo all changes made on this line
`CTRL` + `r` | redo


---
## Search, find and replace

There are several ways of searching for text. Here are some of the ways I use to find stuff around my text.

Keys | Purpose
-- | --
`/` | open find menu, type what to search for
`?` | open find menu, search backwards (I don't actually use this one)
`n` | go to next search result
`N` | go to previous search result
`*` | find all occurrence of the word your cursor is at

Then replacing the text that was found is done with the `c`(change) key.
A good motion to get started is `c i w`. This means "change in word" and will replace the word your cursor is at and put you in insert mode. After you made your changes you can hit `esc` to go back to normal mode, `n` to find the next occurence and hit `.` to replay the action you made before. This will rename the next occurrence of your search to your newly given name.


---
## Copy and Paste
The following commands are useful for copy and paste. Intuitively, copying in vim is named yanking. So `y` is used to yank text, `p` to paste.

Key | Result
-- | --
`y` (normal mode)| yank text. e.G. `y w` copies the word on the cursor
`y` (visual mode) | yank highlighted text
`"*y`| copy into system clipboard
`p` | line in buffer: put line below, non-line in buffer: put text after cursor
`P` | line in buffer: put line above, non-line in buffer: put text before cursor

---
## Registers and the System Clipboard
Imagine you want to copy more than one thing at a time and/or use the system clipboard.

Activating a register is used with the `"`-Key. This tells vim to do whatever follows in the register following the `"`.
Valid register names are `a-z`, `A-Z`. There are more, they will be explained later.

This example yanks 3 words into the `f`-Register. `"fy3w`.
You see, it can be used as a normal motion.

When visually marking some text that should go to a register, use the `"a` just before the `y` command.

The System Clipboard is the `*`-Register, use that to copy to the clipboard. `"*y4w`

---
## Macros, repeating actions
Recording and playing back macros is a beautiful way to make vim actually be useful. You can record actions you take and then replay them with a shortcut. Here are some cool keybinds.

Key | Result
-- | --
`q<letter>` | start recording a macro, save it in the letters register. Valid registers are all lower case letters a-z.
`q` (when done recording) | save macro
`@<letter>` | replay macro at the letters register
`@@` | shortcut to replay the latest macro

This can also be connected with motions. e.G. `5 @ a` replays the register a 5 times.


## Marks (Waypoints)

You can set Marks using the `m` - Key followed by a letter a-z. Similar to macros, this will save this spot in the text as a Waypoint. Unlike line numbers, marks remember the locations of specific text objects. Therefore, inserting and removing lines do not change the location of your marks.

Hitting the `'` - Key followed by the letter you saved will then jump to those marks.
What's cool here is that you can set global marks. Meaning you can set marks on more than just one file. Using a capitalized letter as a mark will upon jumping to that mark open up that text file and jump to that mark, no matter where you were.

You can always check what marks you set in command mode: `:marks` will display all set marks.
In addition to that, you can append the command with a sequence of letters, this will then only show marks on those letters, if they exist.

Deleting a mark is done like this:

Command | Effect
-- | --
`:delm` + `<letter>` | deletes the mark of this specific letter
`:delmarks` + `<letter>` | deletes the mark of this specific letter
`:delm` + `<letter>-<letter>` | deletes marks in range from letter to letter
`:delm!` | deletes all lowercase marks
`:delmarks!` | deletes all lowercase marks

Notes:
- Marks are a core feature of vim. No need for neovim or any plugin.
- This usage of the word Marks is derived from the word Bookmarks, according to Mental Outlaw.
- Marks are case-sensitive, so a and A are different marks, note that uppercase marks are used for global marks



---
## Working with multiple files

### Using split panes
Here are some useful commands that enable working with multiple windows in one vim instance.

Command | Effect
-- | --
`:split` | splits pane horizontally, opens same file in both
`:split <filename>` | split pane horizontally, opens filename in second pane
`:vsplit` | same as above, but split vertically
`:new` | split pane horizontally, open new file in second pane
`:vnew` | same as above, but split vertically
`:edit <filename>` | switches active document on current pane
`CTRL+W` + `w`| switch focus between windows
`:close` | close the current pane. Will not work if this pane is the only one.
`:only` | close all other panes
`<height>CTRL+W` + `+` | increase pane size by height (defaule 1)
`<height>CTRL+W` + `-` | decrease pane size by height (defaule 1)

Command | Effect
-- | --
`CTRL+W` + `h` | move to the pane on the left
`CTRL+W` + `j` | move to the pane below
`CTRL+W` + `k` | move to the pane above
`CTRL+W` + `l` | move to the pane on the right
`CTRL+W` + `t` | move to the most top pane
`CTRL+W` + `b` | move to the most bottom pane

You can use the capital `HJKL` to move the windows to the far edges respectively

### Using Tabs

Command | Effect
--- | --- 
`:tabedit <filename>` | opens file in new tab
`:tab split` | open same file in new tab
`gt` | move to the next tab
`gT` | move to the previous tab
`:q` | close tab

---
## And then there is Z...

`z` acts as the punching bag for many things that could not be associated with any other key. But still it offers a lot of nice functionality. Here are some of the ways that `z` can help in everyday coding and text editing.

Motions | Purpose
---|---
`z` `t` | moves the cursor and the text-view to the top of the screen
`z` `b` | moves the cursor and the text-view to the bottom of the screen
`z` `z` | moves the cursor and the text-view to the center of the screen
`Z` `Z` | alias to `:wq`, save and quit
`Z` `Q` | alias to `:q!`, save and quit

## Random cool motions and shortcuts

### Motions

Motion | Result
--|--
`gu$` | uncapitalize characters until end of line
`gU$` | capitalize characters until end of line
`guu` | capitalize whole line
`gv` | reselect previous selection


## Enter special characters

`CTRL+K` + <letters for character>` is used to paste special characters.

To view all available special characters, use `:diagraphs`. (Note: Not available in Vim for VSCode)

---
## Resources 

[Youtube: entire vim manual reading](https://www.youtube.com/watch?v=rT-fbLFOCy0)

[Youtube: typecraft "30 Vim commands"](https://www.youtube.com/watch?v=RSlrxE21l_k)

[Youtube Playlist: Vim Alphabet](https://www.youtube.com/playlist?list=PLnc_NxpmOxaNqdGvUg8RBi8ZTaZGPdqBD)

[Youtube: How to Use Marks in VIM](https://www.youtube.com/watch?v=o4x4jUcHJwk)

[Youtube: A powerful way to make Coding in Neovim better](https://www.youtube.com/watch?v=CEMPq_r8UYQ)

´