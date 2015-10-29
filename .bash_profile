# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc

        # Alias pour inspecter l'adresse ip d'un containeur donné
        {% raw %}alias dip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"{% endraw %}

        # Permet de faire des appels avec la libraries httpie
        alias http='docker run -it --rm --net=host clue/httpie'

        # Suppression de tous les containeurs non-actifs
        drm() { docker rm $(docker ps -q -a); }

        # Suppression de toutes les images docker non utilisés
        dri() { docker rmi $(docker images -q); }

        # Pour le build d'une image
        db() { docker build -t="$1" .; }
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH
