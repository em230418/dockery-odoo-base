#!/bin/bash

RED=$'\033[00;31m'
GREEN=$'\033[00;32m'
YELLOW=$'\033[00;33m'
BLUE=$'\033[00;34m'
PURPLE=$'\033[00;35m'
CYAN=$'\033[00;36m'
LIGHTGRAY=$'\033[00;37m'

LRED=$'\033[01;31m'
LGREEN=$'\033[01;32m'
LYELLOW=$'\033[01;33m'
LBLUE=$'\033[01;34m'
LPURPLE=$'\033[01;35m'
LCYAN=$'\033[01;36m'
WHITE=$'\033[01;37m'


NC=$'\033[0m' # No Color

text="$(echo $'''
H4sIAJ1D0lsAA4WP0Q3EIAxD/zOFB0DKAh0FKYt0+LPPXJr7apBMgi3gAUCxMKsqqMkd26a0Ellj
dBMKeikuVTApY9QKiYej3NbFDs78nPAzuVt5fNd9On6N3dKFL/W9Z8QeUBM61JjmcyzabbZBiB1t
/xG1Hr8R1sThn1gfro4ZK3sBAAA=
''' | base64 -d | gzip -d | sed "s/.*/${LBLUE}&${NC}/")"

echo -en "${text}"

echo -en """

${LPURPLE}Questions, bugs or feature requests?${NC}
${LPURPLE}   Submit here:  https://github.com/xoe-labs/dockery-odoo${NC}
${LPURPLE}   Join here:    https://t.me/joinchat/ILnVJw7s3ZvKL3mI7AACsw${NC}

"""

echo -en """


${LYELLOW}                              Runtime Overview${NC}
${LYELLOW}==============================================${NC}
${LYELLOW}| ----------------------------------- Versions${NC}
${LYELLOW}| App:              ${ODOO_VERSION}${NC}
${LYELLOW}| Psql:             ${PSQL_VERSION}${NC}
${LYELLOW}| WkhtmltoX:        ${WKHTMLTOX_MINOR:=${WKHTMLTOX_VERSION}}${NC}
${LYELLOW}| Node:             ${NODE_VERSION:="n/a"}${NC}
${LYELLOW}| Bootstrap:        ${BOOTSTRAP_VERSION:="n/a"}${NC}
${LYELLOW}| ---------------------------- Files & Folders${NC}
${LYELLOW}| App Basepath:     ${ODOO_BASEPATH}${NC}
${LYELLOW}| App Cmd:          ${ODOO_CMD}${NC}
${LYELLOW}| Framework Path:   ${ODOO_FRM}${NC}
${LYELLOW}| Backup Dir:       ${ODOO_BCKP_DIR}${NC}
${LYELLOW}| Peristence Dir:   ${ODOO_PRST_DIR}${NC}
${LYELLOW}| Addons Basepath:  ${ODOO_VENDOR}${NC}
${LYELLOW}| Addons Path:      ${ODOO_ADDONS_PATH//"${ODOO_BASEPATH}/"}${NC}
${LYELLOW}| Migration Spec:   ${ODOO_MIG}${NC}
${LYELLOW}| Config Folder:    ${ODOO_RC}${NC}
${LYELLOW}| -------------------------------- Environment${NC}
${LYELLOW}| App UID:          ${APP_UID}${NC}
${LYELLOW}| App GID:          ${APP_GID}${NC}
${LYELLOW}| Current UID:      $(id -u)${NC}
${LYELLOW}| Current GID:      $(id -g)${NC}
${LYELLOW}| Serverpwd:        $(cat "${ODOO_ADMINPASSWORD_FILE:="."}" || true)${NC}
${LYELLOW}==============================================${NC}


"""
