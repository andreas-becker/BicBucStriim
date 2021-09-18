#!/bin/bash

. "/pkgscripts-ng/include/pkg_util.sh"

package="BicBucStriim"
version="1.5.3-5"
os_min_ver="7.0-40337"
description="BicBucStriim provides web-based access to your e-book collection."
description_ger="BicBucStriim bietet webbasierten Zugriff auf deine E-Book-Sammlung."
arch="noarch"
maintainer="Rainer Volz"
maintainer_url="https://projekte.textmulch.de/bicbucstriim/"
displayname="BicBucStriim"
distributor="Andreas Becker"
distributor_url="https://github.com/andreas-becker/BicBucStriim"
support_url="https://github.com/rvolz/BicBucStriim"
adminurl="bbs"
dsmuidir="ui"
dsmappname="SYNO.SDS.BicBucStriim"
instuninst_restart_services="nginx"
startstop_restart_services="nginx"
silent_install="yes"
silent_upgrade="yes"
silent_uninstall="yes"
thirdparty="yes"
install_dep_packages="WebStation>=2.1.8-0148:PHP7.3>=7.3.16-0008"
install_provide_packages="WEBSTATION_SERVICE"
report_url="https://github.com/andreas-becker/BicBucStriim"
beta="yes"

[ "$(caller)" != "0 NULL" ] && return 0
pkg_dump_info
