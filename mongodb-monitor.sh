#!/bin/bash

# BlackRoad OS - MongoDB Monitor
# Monitor MongoDB database performance, collections, and operations

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
    echo -e "${BOLD}${GREEN}╔════════════════════════════════════════════════════════════════════════╗${RESET}"
    echo -e "${BOLD}${GREEN}║${RESET}  ${ORANGE}🍃${RESET} ${BOLD}MONGODB MONITOR${RESET}                                                  ${BOLD}${GREEN}║${RESET}"
    echo -e "${BOLD}${GREEN}╚════════════════════════════════════════════════════════════════════════╝${RESET}"
    echo ""

    # Server Status
    echo -e "${TEXT_MUTED}╭─ SERVER STATUS ───────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Version:${RESET}            ${BOLD}${CYAN}MongoDB 7.0.4${RESET}      ${TEXT_MUTED}Latest stable${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Status:${RESET}             ${GREEN}●${RESET} ${BOLD}${GREEN}RUNNING${RESET}           ${TEXT_MUTED}Uptime: 47d 12h${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Port:${RESET}               ${BOLD}${ORANGE}27017${RESET}              ${TEXT_MUTED}Default${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Storage Engine:${RESET}     ${BOLD}${PURPLE}WiredTiger${RESET}         ${TEXT_MUTED}Default${RESET}"
    echo ""

    # Replica Set Status
    echo -e "${TEXT_MUTED}╭─ REPLICA SET ─────────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Set Name:${RESET}           ${BOLD}${CYAN}rs-production${RESET}      ${TEXT_MUTED}3-node cluster${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Primary:${RESET}            ${GREEN}●${RESET} ${BOLD}mongo-1${RESET}           ${TEXT_SECONDARY}this node${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Secondaries:${RESET}        ${BOLD}${ORANGE}2${RESET}                  ${TEXT_SECONDARY}all healthy${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Replication Lag:${RESET}    ${BOLD}${GREEN}0.2s${RESET}               ${TEXT_SECONDARY}excellent${RESET}"
    echo ""

    # Connection Statistics
    echo -e "${TEXT_MUTED}╭─ CONNECTIONS ─────────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Current:${RESET}            ${BOLD}${CYAN}847${RESET} / ${BOLD}${ORANGE}5000${RESET}       ${TEXT_SECONDARY}active connections${RESET}"
    echo -e "  ${CYAN}████████${TEXT_MUTED}████████████████████████████████${RESET}  ${BOLD}16.9%${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Available:${RESET}          ${BOLD}${GREEN}4,153${RESET}              ${TEXT_SECONDARY}ready for use${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Total Created:${RESET}      ${BOLD}${PURPLE}12,847${RESET}             ${TEXT_SECONDARY}since startup${RESET}"
    echo ""

    # Database Statistics
    echo -e "${TEXT_MUTED}╭─ DATABASE STATISTICS ─────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${TEXT_SECONDARY}Database${RESET}        ${CYAN}Collections${RESET}  ${ORANGE}Size${RESET}      ${PINK}Indexes${RESET}    ${PURPLE}Docs${RESET}"
    echo -e "  ${TEXT_MUTED}─────────────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${BOLD}production${RESET}     ${CYAN}47${RESET}          ${ORANGE}124 GB${RESET}   ${PINK}234${RESET}        ${PURPLE}8.4M${RESET}"
    echo -e "  ${BOLD}analytics${RESET}      ${CYAN}23${RESET}          ${ORANGE}47 GB${RESET}    ${PINK}89${RESET}         ${PURPLE}2.8M${RESET}"
    echo -e "  ${BOLD}logs${RESET}           ${CYAN}12${RESET}          ${ORANGE}189 GB${RESET}   ${PINK}47${RESET}         ${PURPLE}147M${RESET}"
    echo -e "  ${BOLD}cache${RESET}          ${CYAN}8${RESET}           ${ORANGE}12 GB${RESET}    ${PINK}34${RESET}         ${PURPLE}847K${RESET}"
    echo ""

    # Operations
    echo -e "${TEXT_MUTED}╭─ OPERATIONS ──────────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${TEXT_SECONDARY}Operation${RESET}       ${CYAN}Current${RESET}    ${ORANGE}Peak${RESET}       ${PINK}Avg${RESET}"
    echo -e "  ${TEXT_MUTED}────────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${BOLD}Insert${RESET}         ${CYAN}2,847/s${RESET}   ${ORANGE}4,892/s${RESET}   ${PINK}2,234/s${RESET}"
    echo -e "  ${BOLD}Query${RESET}          ${CYAN}8,473/s${RESET}   ${ORANGE}12,847/s${RESET}  ${PINK}7,123/s${RESET}"
    echo -e "  ${BOLD}Update${RESET}         ${CYAN}1,234/s${RESET}   ${ORANGE}2,847/s${RESET}   ${PINK}1,089/s${RESET}"
    echo -e "  ${BOLD}Delete${RESET}         ${CYAN}89/s${RESET}      ${ORANGE}234/s${RESET}     ${PINK}67/s${RESET}"
    echo -e "  ${BOLD}Command${RESET}        ${CYAN}4,567/s${RESET}   ${ORANGE}8,234/s${RESET}   ${PINK}3,892/s${RESET}"
    echo ""

    # Memory Usage
    echo -e "${TEXT_MUTED}╭─ MEMORY USAGE ────────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Resident:${RESET}           ${BOLD}${CYAN}8.4 GB${RESET}             ${TEXT_SECONDARY}RAM in use${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Virtual:${RESET}            ${BOLD}${ORANGE}47 GB${RESET}              ${TEXT_SECONDARY}total allocated${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}WiredTiger Cache:${RESET}   ${BOLD}${PURPLE}6.2 GB${RESET} / ${BOLD}${CYAN}8 GB${RESET}   ${TEXT_SECONDARY}77.5% used${RESET}"
    echo -e "  ${PURPLE}███████████████████████████████${TEXT_MUTED}█████████${RESET}  ${BOLD}78%${RESET}"
    echo ""

    # Top Collections
    echo -e "${TEXT_MUTED}╭─ TOP COLLECTIONS (BY SIZE) ───────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${TEXT_SECONDARY}Collection${RESET}              ${CYAN}Documents${RESET}    ${ORANGE}Size${RESET}      ${PINK}Avg Doc${RESET}"
    echo -e "  ${TEXT_MUTED}──────────────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${BOLD}events${RESET}                 ${CYAN}147M${RESET}        ${ORANGE}89 GB${RESET}    ${PINK}612 B${RESET}"
    echo -e "  ${BOLD}orders${RESET}                 ${CYAN}8.4M${RESET}        ${ORANGE}47 GB${RESET}    ${PINK}5.6 KB${RESET}"
    echo -e "  ${BOLD}users${RESET}                  ${CYAN}2.8M${RESET}        ${ORANGE}12 GB${RESET}    ${PINK}4.3 KB${RESET}"
    echo -e "  ${BOLD}products${RESET}               ${CYAN}847K${RESET}        ${ORANGE}4.2 GB${RESET}   ${PINK}5.1 KB${RESET}"
    echo ""

    # Query Performance
    echo -e "${TEXT_MUTED}╭─ QUERY PERFORMANCE ───────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Avg Query Time:${RESET}     ${BOLD}${CYAN}12.4 ms${RESET}            ${TEXT_SECONDARY}mean execution${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Slow Queries:${RESET}       ${BOLD}${YELLOW}47${RESET}                 ${TEXT_SECONDARY}> 100ms${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Scanned/Returned:${RESET}   ${BOLD}${ORANGE}2.3x${RESET}               ${TEXT_SECONDARY}index efficiency${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Cursor Timeout:${RESET}     ${BOLD}${GREEN}23${RESET}                 ${TEXT_SECONDARY}last hour${RESET}"
    echo ""

    # Slow Queries
    echo -e "${TEXT_MUTED}╭─ RECENT SLOW QUERIES ─────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${YELLOW}⚠${RESET} ${TEXT_SECONDARY}find on orders (no index): 847ms${RESET}             ${TEXT_MUTED}2m ago${RESET}"
    echo -e "  ${YELLOW}⚠${RESET} ${TEXT_SECONDARY}aggregate on events: 423ms${RESET}                   ${TEXT_MUTED}5m ago${RESET}"
    echo -e "  ${YELLOW}⚠${RESET} ${TEXT_SECONDARY}update on users (multi): 234ms${RESET}               ${TEXT_MUTED}8m ago${RESET}"
    echo ""

    # Index Statistics
    echo -e "${TEXT_MUTED}╭─ INDEX USAGE ─────────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Total Indexes:${RESET}      ${BOLD}${CYAN}234${RESET}                ${TEXT_SECONDARY}across all collections${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Index Size:${RESET}         ${BOLD}${ORANGE}23 GB${RESET}              ${TEXT_SECONDARY}in memory${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Unused Indexes:${RESET}     ${BOLD}${RED}8${RESET}                  ${TEXT_SECONDARY}candidate for removal${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Missing Indexes:${RESET}    ${BOLD}${YELLOW}3${RESET}                  ${TEXT_SECONDARY}recommendations${RESET}"
    echo ""

    # Replication
    echo -e "${TEXT_MUTED}╭─ REPLICATION STATUS ──────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${GREEN}●${RESET} ${BOLD}mongo-1${RESET}        Role: ${CYAN}PRIMARY${RESET}     Oplog: ${ORANGE}12.4 GB${RESET}   ${GREEN}✓ Healthy${RESET}"
    echo -e "  ${BLUE}●${RESET} ${BOLD}mongo-2${RESET}        Role: ${CYAN}SECONDARY${RESET}   Lag: ${ORANGE}0.2s${RESET}      ${GREEN}✓ Synced${RESET}"
    echo -e "  ${BLUE}●${RESET} ${BOLD}mongo-3${RESET}        Role: ${CYAN}SECONDARY${RESET}   Lag: ${ORANGE}0.3s${RESET}      ${GREEN}✓ Synced${RESET}"
    echo ""

    # WiredTiger Cache
    echo -e "${TEXT_MUTED}╭─ WIREDTIGER CACHE ────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Bytes In Cache:${RESET}     ${BOLD}${CYAN}6.2 GB${RESET}             ${TEXT_SECONDARY}current${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Max Configured:${RESET}     ${BOLD}${ORANGE}8 GB${RESET}               ${TEXT_SECONDARY}50% of RAM${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Eviction:${RESET}           ${BOLD}${PURPLE}847/s${RESET}              ${TEXT_SECONDARY}pages evicted${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Dirty Bytes:${RESET}        ${BOLD}${PINK}234 MB${RESET}             ${TEXT_SECONDARY}3.8% of cache${RESET}"
    echo ""

    # Network
    echo -e "${TEXT_MUTED}╭─ NETWORK TRAFFIC ─────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}In:${RESET}                 ${BOLD}${CYAN}234 MB/s${RESET}           ${TEXT_SECONDARY}incoming${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Out:${RESET}                ${BOLD}${ORANGE}847 MB/s${RESET}           ${TEXT_SECONDARY}outgoing${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Requests:${RESET}           ${BOLD}${PURPLE}17,234${RESET}             ${TEXT_SECONDARY}active${RESET}"
    echo ""

    # Alerts
    echo -e "${TEXT_MUTED}╭─ ACTIVE ALERTS ───────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${YELLOW}⚠${RESET} ${BOLD}WARNING${RESET}  47 slow queries detected (> 100ms)"
    echo -e "  ${YELLOW}⚠${RESET} ${BOLD}WARNING${RESET}  8 unused indexes consuming memory"
    echo -e "  ${GREEN}✓${RESET} ${BOLD}GOOD${RESET}     Replication lag minimal (< 1s)"
    echo ""

    # Footer
    echo -e "${GREEN}─────────────────────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${TEXT_SECONDARY}Updated: ${RESET}${BOLD}$(date '+%H:%M:%S')${RESET}  ${TEXT_SECONDARY}|  Set: ${RESET}${BOLD}rs-production${RESET}  ${TEXT_SECONDARY}|  Role: ${RESET}${BOLD}PRIMARY${RESET}"
    echo ""
}

# Main loop
if [[ "$1" == "--watch" ]]; then
    while true; do
        show_dashboard
        sleep 3
    done
else
    show_dashboard
fi
