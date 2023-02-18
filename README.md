# ansible-aria2-downloader

An ansible script to download parallelly on multiple linux machines

Steps:

Install ansible on macos with anaconda [here](https://opensource.com/article/19/8/using-conda-ansible-administration-macos)

- set the download url in `download.yaml`
- add all ip_addresses of the machines in in `inventory/ip_list.txt`
- use the `inventory/gen.sh` to generate the hosts file, I'm keeping ansible_user=ubuntu because all my machines have `ubuntu` as username
- cd to the project root directory and ` ansible-playbook -i inventory/hosts download.yaml   `