# slsw-erlang

These are my notes, scratches, and exercises while going through the Erlang section of [Seven Languages in Seven Weeks](http://pragprog.com/book/rwdata/seven-databases-in-seven-weeks).

## Setup

I just used homebrew to install erlang:

```bash
brew install erlang
```

## Compiling/running

A file that defines a module can be compiled and run from the console.

For example, the file day1/basic.erl can be used as follows after entering the console with the `erl` command:

```erlang
% compile the module
c(basic).
% => {ok,basic}

% call the mirror function in the basic module
basic:mirror(hello).
% => hello
```

## Resources

Learn more Erlang:

- [Seven Languages in Seven Weeks](http://pragprog.com/book/btlang/seven-languages-in-seven-weeks) (of course!)
- [Erlang in Practice](http://pragprog.com/screencasts/v-kserl/erlang-in-practice)
- [Programming Erlang](http://pragprog.com/book/jaerlang/programming-erlang)
- [Learn You Some Erlang](http://learnyousomeerlang.com/)
- [Erlang Programming](http://shop.oreilly.com/product/9780596518189.do)
- [Erlang and OTP in Action](http://manning.com/logan/)

## License

The code taken frome the book comes with the following copyright/disclaimer:

> Copyrights apply to this source code. You may use the source code in your own projects, however the source code may not be used to create training material, courses, books, articles, and the like. We make no guarantees that this source code is fit for any purpose.

Anything else in this repository is licensed by me under the MIT license. See `LICENSE` for more information.
