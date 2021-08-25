#!/bin/bash
package="BicBucStriim"

. "/pkgscripts-ng/include/pkg_util.sh"
version="1.5.3-1"
os_min_ver="7.0-40337"
startstop_restart_services="nginx.service"
instuninst_restart_services="nginx.service"
install_dep_packages="WebStation>=3.0.0-0226:PHP7.2>=7.3.16-0150:Apache2.2>=2.2.34-0104"
install_provide_packages="WEBSTATION_SERVICE"
maintainer="Rainer Volz, Andreas Becker"
thirdparty="yes"
silent_upgrade="yes"
arch="noarch"
reloadui="yes"
adminprotocol="http"
adminport="80"
adminurl="bbs"
dsmuidir="ui"

[ "$(caller)" != "0 NULL" ] && return 0
pkg_dump_info
