function magic-enter-cmd --description "Print the command to run when no command was given"
    set -l cmd
    switch (uname)
        case Darwin
            set cmd ls -FG
        case *
            set cmd ls
    end
    if command git rev-parse --is-inside-work-tree &>/dev/null
        set cmd "$cmd && git status -sb"
    end
    echo $cmd
end

function magic-enter
    set -l cmd (commandline)
    if test -z "$cmd"
        set cmd (magic-enter-cmd)
    end
    commandline -r $cmd
    commandline -f execute
end

bind \r magic-enter
