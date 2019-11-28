## The Look and Say sequence

From wikipedia:

In mathematics, the look-and-say sequence is the sequence of integers beginning as follows:

```Swift
1, 11, 21, 1211, 111221, 312211 ...
```
To generate a member of the sequence from the previous member, read off the digits of the previous member, counting the number of digits in groups of the same digit. For example:

```Swift
1 is read off as "one 1" or 11.
11 is read off as "two 1s" or 21.
21 is read off as "one 2, then one 1" or 1211.
1211 is read off as "one 1, then one 2, then two 1s" or 111221.
111221 is read off as "three 1s, then two 2s, then one 1" or 312211.
```

Your mission is to write a function getLines, which takes an integer "n" as parameter, and returns a comma separated list of the first "n" terms of the sequence. For 0, negative, or NaN parameters, -1 shall be returned.

for example:

```Swift
getLines(2);   // logs "1,11"
getLines(3);   // logs "1,11,21"
getLines(5);   // logs "1,11,21,1211,111221"
```
