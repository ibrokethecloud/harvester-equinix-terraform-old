#cloud-config
scheme_version: 1
token: "${token}"
os:
  ssh_authorized_keys:
  - "${ssh_key}"
  password: "${password}"
  hostname: "${hostname_prefix}-${count}"
install:
  mode: create
  vip: ${vip}
  vip_mode: static

%{ if cluster_registration_url != "" }
system_settings:
  cluster-registration-url: ${cluster_registration_url}
%{ endif }
