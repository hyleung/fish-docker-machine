function __fish_docker_machine_no_subcommand --description 'Test if docker-machine has been given a subcommand'
    for i in (commandline -opc)
        if contains -- $i active config create env inspect ip kill ls remove restart start status scp stop ssh upgrade url
            return 1
        end
    end
end

function __fish_print_docker_machine_envs --description 'Print list of docker-machine envs'
    docker-machine ls -q | command awk '{print $1}'
end

# subcommands
# active
complete -c docker-machine -f -n '__fish_docker_machine_no_subcommand' -a active -d 'Print which machine is active'

# config
complete -c docker-machine -f -n '__fish_docker_machine_no_subcommand' -a config -d 'Print the connection config for machine' 
complete -c docker-machine -f -n '__fish_seen_subcommand_from config' -a (__fish_print_docker_machine_envs) 

# create
complete -c docker-machine -f -n '__fish_docker_machine_no_subcommand' -a create -d 'Create a machine' 

# env
complete -c docker-machine -f -n '__fish_docker_machine_no_subcommand' -a env -d 'Display the commands to set up the environment for the Docker client'
complete -c docker-machine -f -n '__fish_seen_subcommand_from env' -a (__fish_print_docker_machine_envs) 

# inspect
complete -c docker-machine -f -n '__fish_docker_machine_no_subcommand' -a inspect -d 'Inspect information about a machine'
complete -c docker-machine -f -n '__fish_seen_subcommand_from inspect' -a (__fish_print_docker_machine_envs) 

# ip 
complete -c docker-machine -f -n '__fish_docker_machine_no_subcommand' -a ip -d 'Get the IP address of a machine'
complete -c docker-machine -f -n '__fish_seen_subcommand_from ip' -a (__fish_print_docker_machine_envs) 

# kill 
complete -c docker-machine -f -n '__fish_docker_machine_no_subcommand' -a kill -d 'Kill a machine'
complete -c docker-machine -f -n '__fish_seen_subcommand_from kill' -a (__fish_print_docker_machine_envs) 

# ls
complete -c docker-machine -f -n '__fish_docker_machine_no_subcommand' -a ls -d 'List machines'

# remove 
complete -c docker-machine -f -n '__fish_docker_machine_no_subcommand' -a rm -d 'Remove a machine'
complete -c docker-machine -f -n '__fish_seen_subcommand_from rm' -a (__fish_print_docker_machine_envs) 

# restart 
complete -c docker-machine -f -n '__fish_docker_machine_no_subcommand' -a restart -d 'Restart a machine'
complete -c docker-machine -f -n '__fish_seen_subcommand_from restart ' -a (__fish_print_docker_machine_envs) 

# start
complete -c docker-machine -f -n '__fish_docker_machine_no_subcommand' -a start -d 'Start a Docker Machine'
complete -c docker-machine -f -n '__fish_seen_subcommand_from start' -a (__fish_print_docker_machine_envs)

# status 
complete -c docker-machine -f -n '__fish_docker_machine_no_subcommand' -a status -d 'Get the status of a machine'
complete -c docker-machine -f -n '__fish_seen_subcommand_from status' -a (__fish_print_docker_machine_envs) 

# scp 
complete -c docker-machine -f -n '__fish_docker_machine_no_subcommand' -a scp -d 'Copy files between machines'
complete -c docker-machine -f -n '__fish_seen_subcommand_from scp' -a (__fish_print_docker_machine_envs) 

# stop 
complete -c docker-machine -f -n '__fish_docker_machine_no_subcommand' -a stop -d 'Stop a Docker Machine'
complete -c docker-machine -f -n '__fish_seen_subcommand_from stop' -a (__fish_print_docker_machine_envs) 

# ssh 
complete -c docker-machine -f -n '__fish_docker_machine_no_subcommand' -a ssh -d 'Log into or run a command on a machine with SSH'
complete -c docker-machine -f -n '__fish_seen_subcommand_from ssh' -a (__fish_print_docker_machine_envs) 

# upgrade 
complete -c docker-machine -f -n '__fish_docker_machine_no_subcommand' -a upgrade -d 'Upgrade a machine to the latest version of Docker'
complete -c docker-machine -f -n '__fish_seen_subcommand_from upgrade' -a (__fish_print_docker_machine_envs)

# url 
complete -c docker-machine -f -n '__fish_docker_machine_no_subcommand' -a url -d 'Get the URL of a machine'
complete -c docker-machine -f -n '__fish_seen_subcommand_from url' -a (__fish_print_docker_machine_envs) 

