# magic-enter.fish

A fish shell plugin to run a default command when no command is given.

## Usage

Hit enter at your empty fish prompt and whatever command the function `magic-enter-cmd`
returns will be run.

```fish
$ # hit enter on the next prompt and it will run:
$ # ls -FG && git status -sb
$
LICENSE    README.md  conf.d/
## main...origin/main
 M README.md
```

## Install

[fisher] installation:

```shell
fisher install mattmc3/magic-enter.fish
```

## Inspiration

- Oh-My-Zsh has a [magic-enter plugin](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/magic-enter)
- Zsh has another one called [auto-ls](https://github.com/desyncr/auto-ls)


[fisher]: https://github.com/jorgebucaran/fisher
