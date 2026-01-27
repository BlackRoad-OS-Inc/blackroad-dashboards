#!/bin/bash

# BlackRoad OS - NPM Package Analytics
# Track NPM package downloads, versions, and dependencies

source ~/blackroad-dashboards/themes.sh 2>/dev/null || true

# Colors
ORANGE="\033[38;2;247;147;26m"
PINK="\033[38;2;233;30;140m"
PURPLE="\033[38;2;153;69;255m"
BLUE="\033[38;2;20;241;149m"
CYAN="\033[38;2;0;212;255m"
GREEN="\033[38;2;20;241;149m"
RED="\033[38;2;255;0;107m"
YELLOW="\033[38;2;255;193;7m"
TEXT_PRIMARY="\033[38;2;255;255;255m"
TEXT_SECONDARY="\033[38;2;153;153;153m"
TEXT_MUTED="\033[38;2;77;77;77m"
RESET="\033[0m"
BOLD="\033[1m"

show_dashboard() {
    clear
    echo ""
    echo -e "${BOLD}${RED}╔════════════════════════════════════════════════════════════════════════╗${RESET}"
    echo -e "${BOLD}${RED}║${RESET}  ${PINK}📦${RESET} ${BOLD}NPM PACKAGE ANALYTICS${RESET}                                            ${BOLD}${RED}║${RESET}"
    echo -e "${BOLD}${RED}╚════════════════════════════════════════════════════════════════════════╝${RESET}"
    echo ""

    # Package Overview
    echo -e "${TEXT_MUTED}╭─ PACKAGE: @blackroad/dashboards ─────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Version:${RESET}            ${BOLD}${CYAN}2.3.1${RESET}              ${TEXT_MUTED}Latest stable${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Status:${RESET}             ${GREEN}●${RESET} ${BOLD}${GREEN}Published${RESET}         ${TEXT_MUTED}2 hours ago${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}License:${RESET}            ${BOLD}${ORANGE}MIT${RESET}                ${TEXT_MUTED}Open source${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Size:${RESET}               ${BOLD}${PURPLE}847 KB${RESET}             ${TEXT_MUTED}unpacked${RESET}"
    echo ""

    # Download Statistics
    echo -e "${TEXT_MUTED}╭─ DOWNLOAD STATISTICS ─────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${TEXT_SECONDARY}Period${RESET}          ${CYAN}Downloads${RESET}    ${ORANGE}Growth${RESET}     ${PINK}Rank${RESET}"
    echo -e "  ${TEXT_MUTED}───────────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${BOLD}Last Day${RESET}       ${CYAN}28,470${RESET}      ${GREEN}↑ 12.4%${RESET}   ${PINK}#847${RESET}"
    echo -e "  ${BOLD}Last Week${RESET}      ${CYAN}184,234${RESET}     ${GREEN}↑ 23.8%${RESET}   ${PINK}#623${RESET}"
    echo -e "  ${BOLD}Last Month${RESET}     ${CYAN}847,234${RESET}     ${GREEN}↑ 47.2%${RESET}   ${PINK}#423${RESET}"
    echo -e "  ${BOLD}Total${RESET}          ${CYAN}8.4M${RESET}        ${TEXT_MUTED}—${RESET}         ${PINK}#234${RESET}"
    echo ""

    # Download Trend
    echo -e "${TEXT_MUTED}╭─ DOWNLOAD TREND (30 DAYS) ────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  50K  ${GREEN}▁▂▃▄▅▆▇█▇▆▅▄▃▂▁▂▃▄▅▆▇█▇▆▅▄▃▂▁▂█${RESET}   ${BOLD}28.5K/day${RESET}"
    echo -e "  40K  ${CYAN}▁▂▃▄▅▆▇█▇▆▅▄▃▂▁▂▃▄▅▆▇█▇▆▅▄▃▂▁▂█${RESET}"
    echo -e "  30K  ${ORANGE}▁▂▃▄▅▆▇█▇▆▅▄▃▂▁▂▃▄▅▆▇█▇▆▅▄▃▂▁▂█${RESET}"
    echo -e "  20K  ${PINK}▁▂▃▄▅▆▇█▇▆▅▄▃▂▁▂▃▄▅▆▇█▇▆▅▄▃▂▁▂█${RESET}"
    echo ""

    # Version Distribution
    echo -e "${TEXT_MUTED}╭─ VERSION DISTRIBUTION ────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}v2.3.1${RESET}      ${GREEN}███████████████████████████${RESET}       67.2%  ${TEXT_MUTED}(current)${RESET}"
    echo -e "  ${BOLD}v2.3.0${RESET}      ${CYAN}████████${RESET}                          19.4%"
    echo -e "  ${BOLD}v2.2.x${RESET}      ${ORANGE}████${RESET}                              9.8%"
    echo -e "  ${BOLD}< v2.2${RESET}      ${PINK}█${RESET}                                 3.6%"
    echo ""

    # Dependencies
    echo -e "${TEXT_MUTED}╭─ DEPENDENCIES ────────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${TEXT_SECONDARY}Package${RESET}                 ${CYAN}Version${RESET}        ${ORANGE}Size${RESET}      ${PINK}Status${RESET}"
    echo -e "  ${TEXT_MUTED}──────────────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${BOLD}react${RESET}                  ${CYAN}^18.2.0${RESET}       ${ORANGE}347 KB${RESET}   ${GREEN}✓ Latest${RESET}"
    echo -e "  ${BOLD}express${RESET}                ${CYAN}^4.18.2${RESET}       ${ORANGE}234 KB${RESET}   ${GREEN}✓ Latest${RESET}"
    echo -e "  ${BOLD}lodash${RESET}                 ${CYAN}^4.17.21${RESET}      ${ORANGE}547 KB${RESET}   ${GREEN}✓ Latest${RESET}"
    echo -e "  ${BOLD}axios${RESET}                  ${CYAN}^1.6.2${RESET}        ${ORANGE}89 KB${RESET}    ${YELLOW}⚠ Update${RESET}"
    echo ""

    # Dev Dependencies
    echo -e "${TEXT_MUTED}╭─ DEV DEPENDENCIES ────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Total:${RESET}              ${BOLD}${CYAN}23${RESET}                 ${TEXT_SECONDARY}development only${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Outdated:${RESET}           ${BOLD}${YELLOW}3${RESET}                  ${TEXT_SECONDARY}need updates${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Vulnerable:${RESET}         ${BOLD}${RED}1${RESET}                  ${TEXT_SECONDARY}security issue${RESET}"
    echo ""

    # Maintainers
    echo -e "${TEXT_MUTED}╭─ MAINTAINERS ─────────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${CYAN}●${RESET} ${BOLD}@alex${RESET}              Email: alex@example.com"
    echo -e "  ${BLUE}●${RESET} ${BOLD}@sarah${RESET}             Email: sarah@example.com"
    echo -e "  ${PURPLE}●${RESET} ${BOLD}@mike${RESET}              Email: mike@example.com"
    echo ""

    # Repository Stats
    echo -e "${TEXT_MUTED}╭─ REPOSITORY STATS ────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Stars:${RESET}              ${BOLD}${CYAN}2,847${RESET}              ${GREEN}↑ 234${RESET} this week"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Forks:${RESET}              ${BOLD}${ORANGE}423${RESET}                ${GREEN}↑ 47${RESET} this week"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Issues:${RESET}             ${BOLD}${PURPLE}89${RESET}                 ${TEXT_SECONDARY}(23 open)${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}PRs:${RESET}                ${BOLD}${PINK}12${RESET}                 ${TEXT_SECONDARY}(5 open)${RESET}"
    echo ""

    # Top Dependents
    echo -e "${TEXT_MUTED}╭─ TOP DEPENDENTS ──────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${TEXT_SECONDARY}Package${RESET}                         ${CYAN}Stars${RESET}      ${ORANGE}Downloads${RESET}"
    echo -e "  ${TEXT_MUTED}───────────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${BOLD}awesome-dashboard-toolkit${RESET}      ${CYAN}8.4K${RESET}      ${ORANGE}84K/week${RESET}"
    echo -e "  ${BOLD}react-monitoring-suite${RESET}         ${CYAN}4.2K${RESET}      ${ORANGE}47K/week${RESET}"
    echo -e "  ${BOLD}terminal-ui-framework${RESET}          ${CYAN}2.8K${RESET}      ${ORANGE}28K/week${RESET}"
    echo ""

    # Bundle Analysis
    echo -e "${TEXT_MUTED}╭─ BUNDLE ANALYSIS ─────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Minified:${RESET}           ${BOLD}${CYAN}423 KB${RESET}             ${TEXT_SECONDARY}compressed${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Gzipped:${RESET}            ${BOLD}${ORANGE}89 KB${RESET}              ${TEXT_SECONDARY}transfer size${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Tree-shakeable:${RESET}     ${BOLD}${GREEN}Yes${RESET}                ${TEXT_SECONDARY}ES modules${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Side Effects:${RESET}       ${BOLD}${RED}No${RESET}                 ${TEXT_SECONDARY}optimized${RESET}"
    echo ""

    # Security
    echo -e "${TEXT_MUTED}╭─ SECURITY ────────────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Vulnerabilities:${RESET}    ${BOLD}${RED}1 High${RESET}             ${TEXT_SECONDARY}in dependencies${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Last Audit:${RESET}         ${BOLD}${CYAN}2 hours ago${RESET}        ${TEXT_SECONDARY}npm audit${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Fix Available:${RESET}      ${BOLD}${GREEN}Yes${RESET}                ${TEXT_SECONDARY}upgrade axios${RESET}"
    echo ""

    # Quality Score
    echo -e "${TEXT_MUTED}╭─ QUALITY SCORE ───────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}Popularity${RESET}  ${CYAN}███████████████████████████████${RESET}     ${BOLD}94/100${RESET}"
    echo -e "  ${BOLD}Quality${RESET}     ${ORANGE}████████████████████████████${RESET}        ${BOLD}87/100${RESET}"
    echo -e "  ${BOLD}Maintenance${RESET} ${GREEN}█████████████████████████████████${RESET}   ${BOLD}98/100${RESET}"
    echo ""

    # Publishing Activity
    echo -e "${TEXT_MUTED}╭─ PUBLISHING ACTIVITY ─────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${GREEN}✓${RESET} ${TEXT_SECONDARY}v2.3.1 published${RESET}                           ${TEXT_MUTED}2h ago${RESET}"
    echo -e "  ${CYAN}ℹ${RESET} ${TEXT_SECONDARY}84 downloads in first hour${RESET}                 ${TEXT_MUTED}trending${RESET}"
    echo -e "  ${BLUE}📊${RESET} ${TEXT_SECONDARY}Reached 8.4M total downloads${RESET}               ${TEXT_MUTED}milestone${RESET}"
    echo ""

    # Footer
    echo -e "${RED}─────────────────────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${TEXT_SECONDARY}Updated: ${RESET}${BOLD}$(date '+%H:%M:%S')${RESET}  ${TEXT_SECONDARY}|  Package: ${RESET}${BOLD}@blackroad/dashboards${RESET}  ${TEXT_SECONDARY}|  v${RESET}${BOLD}2.3.1${RESET}"
    echo ""
}

# Main loop
if [[ "$1" == "--watch" ]]; then
    while true; do
        show_dashboard
        sleep 10
    done
else
    show_dashboard
fi
