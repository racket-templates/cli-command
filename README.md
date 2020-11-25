cli-command
===========

A working example of CLI command you can use to create your own command line app.

# How To Install

1. [Set your PATH environment variable](https://github.com/racket/racket/wiki/Set-your-PATH-environment-variable) 
so you can use `raco` and other Racket command line functions.
2. either look for `from-template` in the DrRacket menu **File|Package Manager**, or run the `raco` command:
```bash
raco pkg install from-template
```
3. 
```bash
raco new cli-command <destination-dir>
```
If you omit `<destination-dir>`, the command will add copy the template to a folder called `cli-command` in the current folder.

# How to use

This is working example that you can change to suit your needs.

If you need to create an interactive app consider using the [`charterm`](https://docs.racket-lang.org/charterm/index.html) package.

# How to create an executable 

`$ raco exe -o hello hello.rkt`

This will create an executabe `hello` or `hello.exe` depending on your platform.

For help

`$ ./hello -h` or `hello.exe -h` 


Creating executables: https://docs.racket-lang.org/raco/exe.html

Command-line parsing: https://docs.racket-lang.org/reference/Command-Line_Parsing.html

### Testing command-line parsing: 

Use the DrRacket `drracket-cmdline-args` plugig: https://docs.racket-lang.org/drracket-cmdline-args/

Install:  `raco pkg install drracket-cmdline-args`

![drracket-cmdline-args](https://docs.racket-lang.org/drracket-cmdline-args/screenshot.png)

