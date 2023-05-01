# magic-enter.fish

> This plugin makes your enter key magical, by binding commonly used commands to it.

This is a pure Fish implementation of the [Oh My Zsh magic-enter][omz-magic-enter] plugin.

## Usage

Press return at an empty Fish prompt and magic-enter will run a default command. For regular directories, magic-enter will run `ls`. For git repositories, it will run `git status -sb`.

```fish
$ # change to your Fish dir
$ cd $__fish_config_dir
$ # now, just hit enter at an empty prompt, and ls will run
$
conf.d/  completions/  functions/  config.fish  fish_variables
```

Or, if you are in a repo, you'll see the `git status`:

```fish
$ cd $__fish_config_dir
$ # hit enter on the next prompt and it will run:
$ # git status -sb
$
## main...origin/main
 M README.md
```

## Customization

If you want to configure different magic commands, simply create your own `magic-enter-cmd` function. In the `$__fish_config_dir/functions/magic-enter-cmd.fish` file, you can add something like this:

```fish
function magic-enter-cmd --description "Customize your own magic-commands"
    # default magic command
    set --local my_magic_command 'ls -laF'
    
    # git dir magic command
    if command git rev-parse --is-inside-work-tree &>/dev/null
        set my_magic_command "ls && git status"
    end
    
    # look for something else, like an .env directory
    # or whatever other magic commands you need
    # ...
    
    # be sure not to actually run the command
    # just print it out
    echo $my_magic_command
end
```

## Install

[fisher] installation:

```shell
fisher install mattmc3/magic-enter.fish
```

[fisher]: https://github.com/jorgebucaran/fisher
[omz-magic-enter]: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/magic-enter
