# Binary Tree Project

This is my implementation of the data structure ["Binary Tree"](https://en.wikipedia.org/wiki/Binary_tree) with Ruby!

It will include methods to do breadth and depth first search.

This is a project from [The Odin Project](https://www.theodinproject.com/courses/ruby-programming/lessons/data-structures-and-algorithms).

![Binary Tree Image](/binary_tree.png)

## Installation

Open your Terminal/Command Line. Navigate to the directory where your version will live. Type in the following:

```
$ git clone https://github.com/JonathanYiv/binary_tree.git
$ cd binary_tree
$ ruby binary_tree.rb
```

## Pre-Project Thoughts

The previous project, [implementing Linked Lists in Ruby](https://github.com/JonathanYiv/linked_list) was a bit on the easier end. I think this is a good step up towards moderate difficulty.
I am eager to implement the binary tree especially because it has a wide variety of [applications](https://stackoverflow.com/questions/2130416/what-are-the-applications-of-binary-trees) and it will be another tool to put in my toolbox.

Looking forward, the most difficult part will probably be the depth/breadth searches, as I have never implemented them before although I understand the theory behind them.

## Post-Project Thoughts

1. This was a fun project. In order from easiest to hardest to implement:

	1. Class Node

	2. #build_tree

	3. #dfs_rec

	4. #breadth_first_search

	5. #depth_first_search

2. #depth_first_search required me to use an array as a 'stack,' which I found difficult for some reason because switching from a recursive pattern of thought confused me. I had to 'cheat' a little bit by looking at some other solutions, but I made sure that I have full comprehension of how it works. It is extremely similar to my implementation of the #breadth_first_search method, which uses an array as a 'queue.' The primary difference is that the queue removed from the front and added children to the back so each depth level would be done sequentially, whereas the stack removed from the top and added children to the top of the stack in the opposite order of which you wanted to process it. In reality, both methods only have one line that separates them.

3. I found sketching out the tree onto a piece of paper was immensely helpful in conceptually designing the necessary algorithms.