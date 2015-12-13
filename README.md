# hockeypuck-cookbook

A [chef](chef.io) cookbook used to install and configure the hkp server
[hockeypuck](hockeypuck.github.io).

## Supported Platforms

- Ubuntu 14.04

## Attributes

| Key | Type | Description |
| --- | --- | --- |
| `['hockeypuck']['user']` | string | which user will run hockeypuck |
| `['hockeypuck']['group']` | string | which group will run hockeypuck |
| `['hockeypuck']['working_dir']` | string | which directory to run hockeypuck |

## Usage

### hockeypuck::default

Include `hockeypuck` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[hockeypuck::default]"
  ]
}
```
