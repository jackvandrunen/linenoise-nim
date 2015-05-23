# Linenoise

Linenoise is a minimalistic alternative to the GNU readline library. The
original project can be found [here](https://github.com/antirez/linenoise). The
library itself is BSD licensed, so you are *actually* free to use it in any
project you want, unlike with readline.

This is a wrapping for linenoise in the Nim language. You can install it with

    $ nimble install linenoise

### Quick Reference

Check in `linenoise.nim` (a wrapping of `clinenoise.h`) for exposed types and
procs. Functionally, everything should be equivalent to using the C version.

The `linenoise` prefix has been removed from the exposed types and procs, so
`linenoiseHistoryAdd` in the C version becomes `historyAdd` in the Nim version.

However, the `linenoise` function in C becomes `linenoisePrompt` in Nim.
