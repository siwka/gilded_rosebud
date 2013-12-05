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

## Original Description of the Gilded Rose

Hi and welcome to team Gilded Rose. As you know, we are a small inn with a prime
location in a prominent city run by a friendly innkeeper named Allison. We also
buy and sell only the finest goods. Unfortunately, our goods are constantly
degrading in quality as they approach their sell by date. We have a system in
place that updates our inventory for us. It was developed by a no-nonsense type
named Leeroy, who has moved on to new adventures. Your task is to add the new
feature to our system so that we can begin selling a new category of items.
First an introduction to our system:

- All items have a SellIn value which denotes the number of days we have to sell
  the item
- All items have a Quality value which denotes how valuable the item is
- At the end of each day our system lowers both values for every item

Pretty simple, right? Well this is where it gets interesting:

- Once the sell by date has passed, Quality degrades twice as fast
- The Quality of an item is never negative
- "Aged Brie" actually increases in Quality the older it gets
- The Quality of an item is never more than 50
- "Sulfuras", being a legendary item, never has to be sold or decreases in
  Quality
- "Backstage passes", like aged brie, increases in Quality as it's SellIn value
  approaches; Quality increases by 2 when there are 10 days or less and by 3
  when there are 5 days or less but Quality drops to 0 after the concert

We have recently signed a supplier of conjured items. This requires an update to
our system:

- "Conjured" items degrade in Quality twice as fast as normal items

Feel free to make any changes to the UpdateQuality method and add any new code
as long as everything still works correctly. However, do not alter the Item
class or Items property as those belong to the goblin in the corner who will
insta-rage and one-shot you as he doesn't believe in shared code ownership (you
can make the UpdateQuality method and Items property static if you like, we'll
cover for you). Your work needs to be completed by Friday, February 18, 2011
08:00:00 AM PST.

Just for clarification, an item can never have its Quality increase above 50,
however "Sulfuras" is a legendary item and as such its Quality is 80 and it
never alters.
