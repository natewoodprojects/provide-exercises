
## Object Oriented Programming

**Language: Any language that supports object-oriented design**

In a Ruby file, implement a `Grade` class that implements a
reasonable API for grades that look like the letter grading system
(i.e., A+, A, A-, B+, B, B-, C+, C, C-, D+, D, D-, F)

### Requirements
  - It should instantiate from a String (`Grade.new('a+')`)
  - It should serialize to a String
  - Equality should work properly. (`Grade.new('a-') == Grade.new('A-')`)
  - Sorting should work properly (e.g., `a- < a < a+`)
    - Given an Array of `Grades`, the `array.sort` should work as expected
