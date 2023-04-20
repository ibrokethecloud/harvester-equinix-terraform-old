#cloud-config
scheme_version: 1
server_url: https://${seed}:443
token: "${token}"
os:
  ssh_authorized_keys:
    - "${ssh_key}"
  password: "${password}"
  hostname: "${hostname_prefix}-${count}"
install:
  mode: join
  device: /dev/sda
