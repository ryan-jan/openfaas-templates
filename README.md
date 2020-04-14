# Custom OpenFaaS Templates

This repository contains my custom OpenFaaS templates. You can pull them all using `faas-cli` as follows.

``` shell
faas-cli template pull https://github.com/ryan-jan/openfaas-templates
```

You can also use the `--filter` parameter to pull only a single template, specifying the template by name.

``` shell
faas-cli template pull https://github.com/ryan-jan/openfaas-templates --filter powercli-veba
```
