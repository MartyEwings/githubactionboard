# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include githubactionboard
class githubactionboard (
  Sensitive[String] $githubaccesstoken,
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
