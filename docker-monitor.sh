#!/bin/bash

# BlackRoad OS - Docker Container Monitor
# Monitor Docker containers, images, and resource usage

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
    echo -e "${BOLD}${CYAN}╔════════════════════════════════════════════════════════════════════════╗${RESET}"
    echo -e "${BOLD}${CYAN}║${RESET}  ${BLUE}🐳${RESET} ${BOLD}DOCKER CONTAINER MONITOR${RESET}                                         ${BOLD}${CYAN}║${RESET}"
    echo -e "${BOLD}${CYAN}╚════════════════════════════════════════════════════════════════════════╝${RESET}"
    echo ""

    # Docker Status
    echo -e "${TEXT_MUTED}╭─ DOCKER STATUS ───────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Version:${RESET}            ${BOLD}${CYAN}Docker 24.0.7${RESET}      ${TEXT_MUTED}Latest stable${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Status:${RESET}             ${GREEN}●${RESET} ${BOLD}${GREEN}RUNNING${RESET}           ${TEXT_MUTED}Daemon active${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Containers:${RESET}         ${BOLD}${ORANGE}47${RESET} running          ${TEXT_MUTED}(12 stopped)${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Images:${RESET}             ${BOLD}${PURPLE}234${RESET}                ${TEXT_MUTED}124 GB total${RESET}"
    echo ""

    # Container Overview
    echo -e "${TEXT_MUTED}╭─ CONTAINER OVERVIEW ──────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${TEXT_SECONDARY}Status${RESET}          ${CYAN}Count${RESET}    ${ORANGE}CPU${RESET}       ${PINK}Memory${RESET}"
    echo -e "  ${TEXT_MUTED}───────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${GREEN}●${RESET} ${BOLD}Running${RESET}      ${CYAN}47${RESET}       ${ORANGE}847%${RESET}     ${PINK}28.4 GB${RESET}"
    echo -e "  ${YELLOW}●${RESET} ${BOLD}Paused${RESET}       ${CYAN}0${RESET}        ${ORANGE}0%${RESET}       ${PINK}0 GB${RESET}"
    echo -e "  ${RED}●${RESET} ${BOLD}Stopped${RESET}      ${CYAN}12${RESET}       ${ORANGE}0%${RESET}       ${PINK}0 GB${RESET}"
    echo -e "  ${BLUE}●${RESET} ${BOLD}Restarting${RESET}   ${CYAN}0${RESET}        ${ORANGE}0%${RESET}       ${PINK}0 GB${RESET}"
    echo ""

    # Running Containers
    echo -e "${TEXT_MUTED}╭─ RUNNING CONTAINERS ──────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${TEXT_SECONDARY}Name${RESET}                ${CYAN}CPU${RESET}      ${ORANGE}Memory${RESET}     ${PINK}Network${RESET}    ${PURPLE}Status${RESET}"
    echo -e "  ${TEXT_MUTED}──────────────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${BOLD}api-backend${RESET}        ${CYAN}47%${RESET}     ${ORANGE}2.4 GB${RESET}    ${PINK}847 KB/s${RESET}  ${GREEN}✓ Up${RESET}"
    echo -e "  ${BOLD}web-frontend${RESET}       ${CYAN}23%${RESET}     ${ORANGE}1.2 GB${RESET}    ${PINK}423 KB/s${RESET}  ${GREEN}✓ Up${RESET}"
    echo -e "  ${BOLD}postgres-db${RESET}        ${CYAN}34%${RESET}     ${ORANGE}8.4 GB${RESET}    ${PINK}234 KB/s${RESET}  ${GREEN}✓ Up${RESET}"
    echo -e "  ${BOLD}redis-cache${RESET}        ${CYAN}12%${RESET}     ${ORANGE}847 MB${RESET}    ${PINK}189 KB/s${RESET}  ${GREEN}✓ Up${RESET}"
    echo -e "  ${BOLD}nginx-proxy${RESET}        ${CYAN}8%${RESET}      ${ORANGE}234 MB${RESET}    ${PINK}1.2 MB/s${RESET}  ${GREEN}✓ Up${RESET}"
    echo ""

    # Resource Usage
    echo -e "${TEXT_MUTED}╭─ RESOURCE USAGE ──────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}CPU Usage (16 cores)${RESET}"
    echo -e "  ${CYAN}████████████████████████${TEXT_MUTED}████████████████${RESET}  ${BOLD}52.9%${RESET} (8.47 cores)"
    echo ""
    echo -e "  ${BOLD}Memory Usage (64 GB)${RESET}"
    echo -e "  ${ORANGE}██████████████████${TEXT_MUTED}██████████████████████${RESET}  ${BOLD}44.4%${RESET} (28.4 GB)"
    echo ""
    echo -e "  ${BOLD}Disk I/O${RESET}"
    echo -e "  ${TEXT_PRIMARY}Read:${RESET}  ${PINK}847 MB/s${RESET}     ${TEXT_PRIMARY}Write:${RESET} ${PURPLE}423 MB/s${RESET}"
    echo ""

    # Network Traffic
    echo -e "${TEXT_MUTED}╭─ NETWORK TRAFFIC ─────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Total In:${RESET}           ${BOLD}${CYAN}4.2 MB/s${RESET}           ${TEXT_SECONDARY}incoming${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Total Out:${RESET}          ${BOLD}${ORANGE}8.4 MB/s${RESET}           ${TEXT_SECONDARY}outgoing${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Packets In:${RESET}         ${BOLD}${PURPLE}28K/s${RESET}              ${TEXT_SECONDARY}incoming${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Packets Out:${RESET}        ${BOLD}${PINK}47K/s${RESET}              ${TEXT_SECONDARY}outgoing${RESET}"
    echo ""

    # Top Containers by CPU
    echo -e "${TEXT_MUTED}╭─ TOP CONTAINERS (BY CPU) ─────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${TEXT_SECONDARY}Container${RESET}           ${CYAN}CPU%${RESET}     ${ORANGE}Threads${RESET}    ${PINK}Uptime${RESET}"
    echo -e "  ${TEXT_MUTED}─────────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${BOLD}api-backend${RESET}        ${CYAN}47.2%${RESET}   ${ORANGE}234${RESET}        ${PINK}47d 12h${RESET}"
    echo -e "  ${BOLD}postgres-db${RESET}        ${CYAN}34.8%${RESET}   ${ORANGE}89${RESET}         ${PINK}47d 12h${RESET}"
    echo -e "  ${BOLD}web-frontend${RESET}       ${CYAN}23.4%${RESET}   ${ORANGE}47${RESET}         ${PINK}47d 12h${RESET}"
    echo -e "  ${BOLD}worker-1${RESET}           ${CYAN}18.7%${RESET}   ${ORANGE}23${RESET}         ${PINK}47d 12h${RESET}"
    echo ""

    # Top Containers by Memory
    echo -e "${TEXT_MUTED}╭─ TOP CONTAINERS (BY MEMORY) ──────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${TEXT_SECONDARY}Container${RESET}           ${CYAN}Memory${RESET}     ${ORANGE}Limit${RESET}      ${PINK}Usage%${RESET}"
    echo -e "  ${TEXT_MUTED}──────────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${BOLD}postgres-db${RESET}        ${CYAN}8.4 GB${RESET}    ${ORANGE}16 GB${RESET}     ${PINK}52.5%${RESET}"
    echo -e "  ${BOLD}api-backend${RESET}        ${CYAN}2.4 GB${RESET}    ${ORANGE}4 GB${RESET}      ${PINK}60.0%${RESET}"
    echo -e "  ${BOLD}web-frontend${RESET}       ${CYAN}1.2 GB${RESET}    ${ORANGE}2 GB${RESET}      ${PINK}60.0%${RESET}"
    echo -e "  ${BOLD}redis-cache${RESET}        ${CYAN}847 MB${RESET}    ${ORANGE}2 GB${RESET}      ${PINK}41.4%${RESET}"
    echo ""

    # Images
    echo -e "${TEXT_MUTED}╭─ DOCKER IMAGES ───────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${TEXT_SECONDARY}Repository${RESET}              ${CYAN}Tag${RESET}        ${ORANGE}Size${RESET}      ${PINK}Created${RESET}"
    echo -e "  ${TEXT_MUTED}───────────────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${BOLD}api-backend${RESET}            ${CYAN}latest${RESET}    ${ORANGE}847 MB${RESET}   ${PINK}2h ago${RESET}"
    echo -e "  ${BOLD}web-frontend${RESET}           ${CYAN}v2.3.1${RESET}    ${ORANGE}423 MB${RESET}   ${PINK}3h ago${RESET}"
    echo -e "  ${BOLD}postgres${RESET}               ${CYAN}15${RESET}        ${ORANGE}412 MB${RESET}   ${PINK}2d ago${RESET}"
    echo -e "  ${BOLD}redis${RESET}                  ${CYAN}7${RESET}         ${ORANGE}116 MB${RESET}   ${PINK}2d ago${RESET}"
    echo ""

    # Volumes
    echo -e "${TEXT_MUTED}╭─ DOCKER VOLUMES ──────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Total Volumes:${RESET}      ${BOLD}${CYAN}23${RESET}                 ${TEXT_SECONDARY}created${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}In Use:${RESET}             ${BOLD}${GREEN}18${RESET}                 ${TEXT_SECONDARY}mounted${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Unused:${RESET}             ${BOLD}${YELLOW}5${RESET}                  ${TEXT_SECONDARY}can be pruned${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Total Size:${RESET}         ${BOLD}${PURPLE}47 GB${RESET}              ${TEXT_SECONDARY}disk usage${RESET}"
    echo ""

    # Networks
    echo -e "${TEXT_MUTED}╭─ DOCKER NETWORKS ─────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${GREEN}●${RESET} ${BOLD}bridge${RESET}          Driver: ${CYAN}bridge${RESET}    Containers: ${ORANGE}23${RESET}"
    echo -e "  ${BLUE}●${RESET} ${BOLD}app-network${RESET}     Driver: ${CYAN}bridge${RESET}    Containers: ${ORANGE}18${RESET}"
    echo -e "  ${PURPLE}●${RESET} ${BOLD}db-network${RESET}      Driver: ${CYAN}bridge${RESET}    Containers: ${ORANGE}6${RESET}"
    echo ""

    # Container Health
    echo -e "${TEXT_MUTED}╭─ CONTAINER HEALTH ────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Healthy:${RESET}            ${BOLD}${GREEN}44${RESET}                 ${TEXT_SECONDARY}passing health checks${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Unhealthy:${RESET}          ${BOLD}${RED}1${RESET}                  ${TEXT_SECONDARY}failing health checks${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}No Healthcheck:${RESET}     ${BOLD}${YELLOW}2${RESET}                  ${TEXT_SECONDARY}not configured${RESET}"
    echo ""

    # Recent Events
    echo -e "${TEXT_MUTED}╭─ RECENT EVENTS ───────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${GREEN}✓${RESET} ${TEXT_SECONDARY}Container api-backend started${RESET}               ${TEXT_MUTED}2h ago${RESET}"
    echo -e "  ${BLUE}ℹ${RESET} ${TEXT_SECONDARY}Image web-frontend:v2.3.1 pulled${RESET}            ${TEXT_MUTED}3h ago${RESET}"
    echo -e "  ${YELLOW}⚠${RESET} ${TEXT_SECONDARY}Container worker-2 restarted${RESET}                ${TEXT_MUTED}5h ago${RESET}"
    echo -e "  ${RED}✗${RESET} ${TEXT_SECONDARY}Container job-runner exited (code 1)${RESET}         ${TEXT_MUTED}8h ago${RESET}"
    echo ""

    # Alerts
    echo -e "${TEXT_MUTED}╭─ ACTIVE ALERTS ───────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${RED}●${RESET} ${BOLD}CRITICAL${RESET}  Container worker-2 unhealthy"
    echo -e "  ${YELLOW}⚠${RESET} ${BOLD}WARNING${RESET}   api-backend using 60% of memory limit"
    echo -e "  ${CYAN}ℹ${RESET}  ${BOLD}INFO${RESET}      5 unused volumes can be pruned"
    echo ""

    # Footer
    echo -e "${CYAN}─────────────────────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${TEXT_SECONDARY}Updated: ${RESET}${BOLD}$(date '+%H:%M:%S')${RESET}  ${TEXT_SECONDARY}|  Host: ${RESET}${BOLD}docker-01${RESET}  ${TEXT_SECONDARY}|  Engine: ${RESET}${BOLD}24.0.7${RESET}"
    echo ""
}

# Main loop
if [[ "$1" == "--watch" ]]; then
    while true; do
        show_dashboard
        sleep 2
    done
else
    show_dashboard
fi
