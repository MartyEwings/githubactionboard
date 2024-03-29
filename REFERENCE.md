# Reference

<!-- DO NOT EDIT: This document was generated by Puppet Strings -->

## Table of Contents

### Classes

* [`githubactionboard`](#githubactionboard): This module sets up the container provided by  https://github.com/otto-de/gitactionboard

## Classes

### <a name="githubactionboard"></a>`githubactionboard`

Sets up a dashboard to visualise the results of github actions on a selected set of repos

#### Examples

##### 

```puppet
include githubactionboard
```

#### Parameters

The following parameters are available in the `githubactionboard` class:

* [`githubaccesstoken`](#githubaccesstoken)
* [`repoownername`](#repoownername)
* [`port`](#port)
* [`reponames`](#reponames)

##### <a name="githubaccesstoken"></a>`githubaccesstoken`

Data type: `String`

Required, access token for registered github account, to precent rate limiting

##### <a name="repoownername"></a>`repoownername`

Data type: `String`

The repo namespace for which the monitored repositarys reside defaults to puppetlabs

Default value: `'puppetlabs'`

##### <a name="port"></a>`port`

Data type: `Integer`

The port the host machine will listen on and forward to the container

Default value: `4444`

##### <a name="reponames"></a>`reponames`

Data type: `Array[String[1]]`

list of repos to monitor

Default value: `[influxdb,puppetlabs-pe_status_check,puppet_metrics_dashboard,puppetlabs-puppet_metrics_collector]`

