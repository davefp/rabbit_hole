# RabbitHole

Ever have one of those situations where every task seems to spawn another one, and another one, and another one?

Eventually you forget where you started and end up lost in a mess of documentation, source code, and config files.

A rabbit hole.

Use this gem to find your way back out again. Add each new task as you start it, and RabbitHole will keep track of your task stack for you. When you finish a task, tell RabbitHole and it'll remind you what you were working on before. Keep going til you get back to your starting point.

## Installation

    $ gem install rabbit_hole

## Usage

Add new tasks:

    $ rabbithole add "My new task"

See the current task:

    $ rabbithole current

Complete the current task:

    $ rabbithole complete

Remind yourself how deep you are:

    $ rabbithole show

### Abbreviations

All commands can be abbreviated as long as they're unambiguous.

e.g. `rabbithole s` maps to `rabbithole show`.

### Aliases

I recommend adding an alias to your shell as typing 'rabbithole' all the time is cumbersome.

I use `alias rh="rabbithole"`.

## Contributing

1. Fork it
1. Create your feature branch (`git checkout -b my-new-feature`)
1. Write code and tests
1. Commit your changes (`git commit -am 'Add some feature'`)
1. Push to the branch (`git push origin my-new-feature`)
1. Create new Pull Request
