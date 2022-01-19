# ebpf_multipass

VM setup using multipass for working with ebpf in go

## Pre-requisite

[multpass](https://multipass.run) should be installed

## Usage

Clone this repo and run following commands

```bash
multipass launch -n ebpf-vm --cloud-init cloud-config.yaml
```

To get shell to vm

```bash
multipass shell ebpf-vm
```

To delete vm and cleanup

```bash
multipass delete ebpf-vm
multipass purge
```