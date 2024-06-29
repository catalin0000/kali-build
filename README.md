# kali-build

how to run it? check below:

`ansible-playbook kali-setup.yml -i <target-ip>, --user=kali --extra-vars "ansible_ssh_pass=kali ansible_become_pass=kali" -vvv`
