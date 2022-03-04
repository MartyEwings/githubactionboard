# @summary This module sets up the container provided by  https://github.com/otto-de/gitactionboard  
#
# Sets up a dashboard to visualise the results of github actions on a selected set of repos
#
# @example
#   include githubactionboard
# @param [String] githubaccesstoken
#  Required, access token for registered github account, to precent rate limiting
# @param [String] repoownername
#  The repo namespace for which the monitored repositarys reside defaults to puppetlabs
# @param [String] port
#  The port the host machine will listen on and forward to the container
# @param [Array[String]] reponames list of repos to monitor
class githubactionboard (
  String $githubaccesstoken,
  String $repoownername = 'puppetlabs',
  Integer $port = 4444,
  Array[String[1]] $reponames = [influxdb,puppetlabs-pe_status_check,puppet_metrics_dashboard,puppetlabs-puppet_metrics_collector],
) {
  include docker

  docker::image { 'ottoopensource/gitactionboard': }

  docker::run { 'actionboard':
    image => 'ottoopensource/gitactionboard',
    ports => ["${port}:8080"],
    env   => ["REPO_OWNER_NAME=${repoownername}","REPO_NAMES=${reponames}","GITHUB_ACCESS_TOKEN=${githubaccesstoken}"],
  }
}
