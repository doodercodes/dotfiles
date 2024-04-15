# .bashrc is executed every time a new terminal session is started, whereas .bash_profile is executed only when you log in to your system. This means that if you set environment variables in .bashrc, they will be available in all terminal sessions, but if you set them in .bash_profile, they will only be available in the first terminal session you open after logging in

#! Sourced in C:\Users\User\.bash_profile

# echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
# echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
# echo 'eval "$(pyenv init -)"' >> ~/.bashrc

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$PYENV_ROOT/libexec:$PATH"
eval "$(pyenv init -)"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" ] # This loads nvm bash_completion

if [ -f "$env" ]; then
    if [ -s "$env" ]; then
        # Check if any uncommented lines exist in the file
        if grep -q -v '^#' "$env"; then
            source "$env"
            echo "Sourced: $(realpath $env)"

        else
            echo "$(realpath $env) ready to load sensitive environment variables"
        fi
    else
        echo "File '$env' exists but is empty"
    fi
else
    echo "File '$env' does not exist"
fi
