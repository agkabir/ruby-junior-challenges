## Background & Objectives

Let's try and write some tests for a class with more complex behavior. This challenge was taken from the great [Advent of Code](https://adventofcode.com/2020/day/4). 

## Setup

Today we're validating Elf Passports!

An elf passport has 8 fields:

byr (Birth Year)
iyr (Issue Year)
eyr (Expiration Year)
hgt (Height)
hcl (Hair Color)
ecl (Eye Color)
pid (Passport ID)
cid (Country ID)

Passport data is validated in batch files (input). Each passport is represented as a hash.

Here is an example of an array containing four passports:

```ruby
[
  {
    ecl: "gry", pid: "860033327", eyr: 2020, hcl: "#fffffd",
    byr: 1937, iyr: 2017, cid: 147, hgt: "183cm"
  },
  { iyr: 2013, ecl: "amb", cid: 350, eyr: 2023,
    pid: "028048884", hcl: "#cfa07d", byr: 1929
  },
  { 
    hcl: "#ae17e1", iyr: 2013, eyr: 2024, ecl: "brn",
    pid: "760753108", byr: 1931, hgt: "179cm" 
  },
  { 
    hcl: "#cfa07d", eyr: 2025, pid: "166559648",
    iyr: 2011, ecl: "brn", hgt: "59in" 
  }
]
```

This data is present in the `spec/data/tier1_passports.yml`. You can take inspiration from the boilerplate code in `passport_validator_spec.rb` to see how to turn a yaml file into its Ruby counterpart.

### Part 1

There are 2 tiers of valid passports. For a passport to be valid for tier 1, it needs **all fields present with cid being optional**.

From the above example, the first passport is valid - all eight fields are present. The second passport is invalid - it is missing hgt (the Height field).

The third passport is interesting; the only missing field is cid, but we don't care about that key. It's still valid if it's missing the cid field.

The fourth passport is missing two fields, cid and byr. Missing cid is fine, but missing any other field is not, so this passport is invalid.

According to the above rules, your system would report 2 valid passports.

Implement the `valid_tier_1_count` to count valid tier 1 passports. Remember to write specs before and make each test green to make sure your solution is valid.

### Part dos

There's an additional tier of valid passports. For a passport to be a valid tier 2 passport, it must conform to the following rules.

You can continue to ignore the cid field, but each other field has strict rules about what values are valid for automatic validation:

- byr (Birth Year) - four digits; at least 1920 and at most 2002.
- iyr (Issue Year) - four digits; at least 2010 and at most 2020.
- eyr (Expiration Year) - four digits; at least 2020 and at most 2030.
- hgt (Height) - a number followed by either cm or in:
  - If cm, the number must be at least 150 and at most 193.
  - If in, the number must be at least 59 and at most 76.
- hcl (Hair Color) - a # followed by exactly six characters 0-9 or a-f.
- ecl (Eye Color) - exactly one of: amb blu brn gry grn hzl oth.
- pid (Passport ID) - a nine-digit number, including leading zeroes.
- cid (Country ID) - ignored, missing or not.

Your job is to count the passports where all required fields are both present and valid according to the above rules. Here are some example values:

```
byr valid:   2002
byr invalid: 2003

hgt valid:   60in
hgt valid:   190cm
hgt invalid: 190in
hgt invalid: 190

hcl valid:   #123abc
hcl invalid: #123abz
hcl invalid: 123abc

ecl valid:   brn
ecl invalid: wat

pid valid:   000000001
pid invalid: 0123456789
```

Here are some invalid passports:

```ruby
[
  {
    eyr: 1972 cid: 100 hcl: "#18171d" ecl: "amb" 
    hgt: 170 pid: "186cm" iyr: 2018 byr: 1926
  },
  { 
    iyr: 2019, hcl: "#602927", eyr: 1967, hgt: "170cm"
    ecl: "grn", pid: "012533040", byr: 1946
  },
  {
    hcl: "dab227", iyr: 2012, ecl: "brn", hgt: "182cm", 
    pid: "021572410", eyr: 2020, byr: 1992, cid: 277

  },
  {
    hgt: "59cm", ecl: "zzz", eyr: 2038, hcl: "74454a" 
    iyr: 2023, pid: "3556412378", byr: 2007
  }
]
```

Here are some valid passports:
```ruby
[
  {
    pid: "087499704", hgt: "74in", ecl: "grn", 
    iyr: 2012, eyr: 2030, byr: 1980, hcl: "#623a2f",
  },
  {
    eyr: 2029, ecl: "blu", cid: 129, byr: 1989,
    iyr: 2014, pid: "896056539", hcl: "#a97842", hgt: "165cm",
  },
  {
    hcl: "#888785", hgt: "164cm", byr: 2001 iyr: 2015,
    cid: 88, pid: "545766238", ecl: "hzl", eyr: 2022
  },
  {
    iyr: 2010, hgt: "158cm", hcl: "#b6652a", ecl: "blu", 
    byr: 1944, eyr: 2021, pid: "093154719"
  }
]
```

Implement the `valid_tier2_count` method to count the number of valid passports - those that have all required fields and valid values. Continue to treat cid as optional.


## Go Further

- Feel free to go to Advent of Code, paste your input into the `/spec/data/my_input.txt` file and run `spec/data/input_script.rb`. 
- This will import your input into a nicer YAML format in `spec/data/my_input.yml` that can easily be converted to an array of hashes in Ruby
- Run your code with that input to see the answers of your advent of code