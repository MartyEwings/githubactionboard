# githubactionboard


## Description

This Module facilitates setting up a dashboard for viewing the state of github actions

It uses Docker to to consume the image from the prokect https://github.com/otto-de/gitactionboard

and by default monitors select Puppetlabs public modules


## Setup

This Module requires puppetlabs/docker to be present

Classify an agent node with the class "githubactionboard"

Set the following parameters:

  $githubaccesstoken - Required rate limiting for not signed in accounts prevents use of the dashboard

   $repoownername = defaults to'puppetlabs'  
   $port defaults to 4444,
   $reponames and array of repos defaults to  [influxdb,puppetlabs-pe_status_check,puppet_metrics_dashboard,puppetlabs-puppet_metrics_collector],


