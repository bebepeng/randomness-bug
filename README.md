# Randomness Bug

You work at a big company.  This company has a web app that can upload CSV files.  Your job is to produce CSV files 
that can be uploaded by Quality Assurance testers.

You inherited some code that generates an array-of-arrays, suitable for creating a CSV.  This code is *supposed* to:

* Take a number (let's say 100)
* Generate 100 rows
* Each row has a unique person's name
* For every two people, there's one company (in no particular order)

So if you generated 100 rows, there would be 50 unique companies.
If you generated 50 rows, there would be 25 unique companies.

Your Quality Assurance comrades have told you that the code is not
working - there are too many companies every time.  The bug report is:

"If I try to generate 100 rows, sometimes there are 100 unique companies,
and sometimes there are close to 100 unique companies (like 97 or 99)"

Your mission, should you choose to accept it, is to find and fix the bug.

Oh, and the previous developer wrote no tests...

## Examples

If you throw this code into a file in your bin directory and run it,
you will see that all the company names are unique:

```ruby
require_relative '../lib/generator'
require 'pp'

pp Generator.new(4).generate
```

## Extra
If an odd number of generated rows were to be requested, every person will still have a company.
ex) If you generated 5 rows, there would be 3 unique companies.

# Setup

* Fork
* Clone
* Turn on TravisCI for the fork by
  visiting https://travis-ci.org/profile/<github user name>, clicking the "Sync now" button
  and scrolling down to find the repository to build.
* Create a new branch for your work using `git checkout -b v1`
* Implement specs and code
* Push using `git push -u origin v1`

## Further Practice

This warmup can be completed multiple times to increase your comfort level with the material.
To work on this from scratch, you can:

1. Add an upstream remote that points to the original repo `git remote add upstream git@github.com:gSchool/THIS-REPO.git`
1. Fetch the latest from the upstream remote using `git fetch upstream`
1. Create a new branch from the master branch of the upstream remote `git checkout -b v2 upstream/master`
1. Implement specs and code
1. Push using `git push -u origin v2`

Each time you do the exercise, create a new branch. For example the 3rd time you do the exercise the branch
name will be v3 instead of v2.
