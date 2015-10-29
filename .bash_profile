# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc

        # Alias pour inspecter l'adresse ip d'un containeur donné
        {% raw %}alias dip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"{% endraw %}
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH
