function auto_ls
    set -l cmd (commandline)
    if test -z "$cmd"
        echo
        ls
    end
    commandline -f execute
end 

bind \r auto_ls
