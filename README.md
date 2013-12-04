# The Gilded Rosebud Code Kata

This is the reverse of Jim Weirich's version of the
[Gilded Rose Kata](http://iamnotmyself.com/2011/02/13/refactor-this-the-gilded-rose-kata/).
Jim's repository can be found
[here](https://github.com/jimweirich/gilded_rose_kata).

Jim created a working solution for the given suite of tests using a nasty set of
conditionals. The goal was to refactor this while keeping the tests passing.

The goal of this version is to create working solutions from scratch while
satisfying the tests. To make the most of the exercise, constraints can be
introduced for added complexity and difficulty.

## Suggestions for Constraints

* Conditionals vs. Polymorphism
    * no conditional statements
    * no loops
* Primitives vs. Objects
    * Express domain concepts as simple primitives and arrays of primitives
    * Express domain concepts purely as custom objects and custom collection
      objects
* Mutability vs. Immutability
    * all ideas are represented as state
    * all ideas simple structures passed through a set of functions
* No Magic Values
* Method Size
    * limit length to five lines or fewer
    * limit length to one line
    * put all logic in single class methods

## Installation

If you have RSpec installed globally, there is nothing you need to do. If you
need to install it, the easiest way is to use bundler to install the
dependencies. To do so, you need to install the bundler gem if you haven't
already done so.

    gem install bundler

Then, run bundler.

    bundle

## Running

To run the specs, use the rake tasks.

    rake spec

or

    rake
    
To stop the test runner at the first test failure:

    rake fast
