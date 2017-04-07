Tech Test Bank
==============
A practice tech test in which to take create a bank with the following requirement:
Task
------------

Hi and welcome to team Gilded Rose. As you know, we are a small inn with a prime location in a
prominent city ran by a friendly innkeeper named Allison. We also buy and sell only the finest goods.
Unfortunately, our goods are constantly degrading in quality as they approach their sell by date. We
have a system in place that updates our inventory for us. It was developed by a no-nonsense type named
Leeroy, who has moved on to new adventures. Your task is to add the new feature to our system so that
we can begin selling a new category of items. First an introduction to our system:

	- All items have a SellIn value which denotes the number of days we have to sell the item
	- All items have a Quality value which denotes how valuable the item is
	- At the end of each day our system lowers both values for every item

Pretty simple, right? Well this is where it gets interesting:

	- Once the sell by date has passed, Quality degrades twice as fast
	- The Quality of an item is never negative
	- "Aged Brie" actually increases in Quality the older it gets
	- The Quality of an item is never more than 50
	- "Sulfuras", being a legendary item, never has to be sold or decreases in Quality
	- "Backstage passes", like aged brie, increases in Quality as its SellIn value approaches;
	Quality increases by 2 when there are 10 days or less and by 3 when there are 5 days or less but
	Quality drops to 0 after the concert

We have recently signed a supplier of conjured items. This requires an update to our system:

	- "Conjured" items degrade in Quality twice as fast as normal items

Feel free to make any changes to the UpdateQuality method and add any new code as long as everything
still works correctly. However, do not alter the Item class or Items property as those belong to the
goblin in the corner who will insta-rage and one-shot you as he doesn't believe in shared code
ownership (you can make the UpdateQuality method and Items property static if you like, we'll cover
for you).

Just for clarification, an item can never have its Quality increase above 50, however "Sulfuras" is a
legendary item and as such its Quality is 80 and it never alters.

Getting Started
---------------
In it's current form, I added tests to the file. Using these tests I was able to refactor a lot of the methods out of the original chain of `if`s and `else`s. 


```
-$ git clone git@github.com:mikefieldmay/tech_test_gilded_rose.git
-$ cd tech_test_gilded_rose
-$ gem install bundler
-$ bundle install
-$ rspec
```

Challenges
---------
Great opportunity to practice test driven development and object oriented design. A lot of fun to work on something relatively simple, but with scope to do it very well, or very badly.

Future improvements
---------------
Although everything is tested and working in unit tests, a full feature test hasn't been written yet so I'm not fully confident it would work properly in the command line.

Whilst testing my Account class I moved towards feature tests with stuff that should really have been included in the Account unit tests. Account class is quite large at the moment which tells me that it is doing too much. It would be nice to delegate some it's responsibilities out to other classes.

Whilst moving towards the end of the challenge I realised my Transaction class was essentially a hash and that my TransactionLog class just stores hashes rather than individual transactions. I would like to improve my Transaction class so that it has more methods rather than just being a hash.

Built With
---------

- Ruby 2.3.3
- Rspec

Authors
-------
Mike Field-May

References
----------
https://github.com/emilybache/GildedRose-Refactoring-Kata
