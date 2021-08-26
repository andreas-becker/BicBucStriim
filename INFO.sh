#!/bin/bash
package="BicBucStriim"

. "/pkgscripts-ng/include/pkg_util.sh"
version="1.5.3-2"
os_min_ver="7.0-40337"
startstop_restart_services="nginx.service"
instuninst_restart_services="nginx.service"
install_dep_packages="WebStation>=3.0.0-0226:PHP7.0>=7.0.33-0131:Apache2.4>=2.4.46-0104"
install_provide_packages="WEBSTATION_SERVICE"
maintainer="Rainer Volz, Andreas Becker"
description="BicBucStriim provides web-based access to your e-book collection."
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
