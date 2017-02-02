# minitest-repeat
Adds a "repeat" functionality to minitest

# Usage

You should add this library to `$LOAD_PATH` or to Gemfile.

Use `-c` or `--count` argument to specify how many times you want your tests to
run.


# Example

This code runs test.rb 10 times
```
ruby test.rb --count 10
ruby test.rb -c 10

# With rake/tasklib
TESTOPTS="--count=10" rake test
```
