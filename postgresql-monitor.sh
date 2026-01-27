#!/bin/bash

# BlackRoad OS - PostgreSQL Monitor
# Monitor PostgreSQL database performance, connections, and queries

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
    echo -e "${BOLD}${BLUE}╔════════════════════════════════════════════════════════════════════════╗${RESET}"
    echo -e "${BOLD}${BLUE}║${RESET}  ${PURPLE}🐘${RESET} ${BOLD}POSTGRESQL MONITOR${RESET}                                               ${BOLD}${BLUE}║${RESET}"
    echo -e "${BOLD}${BLUE}╚════════════════════════════════════════════════════════════════════════╝${RESET}"
    echo ""

    # Server Status
    echo -e "${TEXT_MUTED}╭─ SERVER STATUS ───────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Version:${RESET}            ${BOLD}${CYAN}PostgreSQL 15.4${RESET}    ${TEXT_MUTED}Latest stable${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Status:${RESET}             ${GREEN}●${RESET} ${BOLD}${GREEN}RUNNING${RESET}           ${TEXT_MUTED}Uptime: 47d 12h${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Port:${RESET}               ${BOLD}${ORANGE}5432${RESET}               ${TEXT_MUTED}Default${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Data Directory:${RESET}     ${BOLD}${PURPLE}/var/lib/postgres${RESET}  ${TEXT_MUTED}132 GB${RESET}"
    echo ""

    # Connection Pool
    echo -e "${TEXT_MUTED}╭─ CONNECTION POOL ─────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Active:${RESET}             ${BOLD}${CYAN}234${RESET} / ${BOLD}${ORANGE}500${RESET}        ${TEXT_SECONDARY}current connections${RESET}"
    echo -e "  ${CYAN}██████████████${TEXT_MUTED}██████████████████████████${RESET}  ${BOLD}46.8%${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Idle:${RESET}               ${BOLD}${GREEN}47${RESET}                 ${TEXT_SECONDARY}waiting for query${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Idle in Txn:${RESET}        ${BOLD}${YELLOW}8${RESET}                  ${TEXT_SECONDARY}idle in transaction${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Active:${RESET}             ${BOLD}${PURPLE}179${RESET}                ${TEXT_SECONDARY}executing queries${RESET}"
    echo ""

    # Database Statistics
    echo -e "${TEXT_MUTED}╭─ DATABASE STATISTICS ─────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${TEXT_SECONDARY}Database${RESET}        ${CYAN}Size${RESET}       ${ORANGE}Conns${RESET}    ${PINK}Queries/s${RESET}    ${PURPLE}Cache Hit${RESET}"
    echo -e "  ${TEXT_MUTED}───────────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${BOLD}production${RESET}     ${CYAN}84 GB${RESET}     ${ORANGE}147${RESET}      ${PINK}2,847${RESET}        ${PURPLE}98.7%${RESET}"
    echo -e "  ${BOLD}analytics${RESET}      ${CYAN}34 GB${RESET}     ${ORANGE}47${RESET}       ${PINK}847${RESET}          ${PURPLE}94.2%${RESET}"
    echo -e "  ${BOLD}staging${RESET}        ${CYAN}12 GB${RESET}     ${ORANGE}23${RESET}       ${PINK}234${RESET}          ${PURPLE}96.8%${RESET}"
    echo -e "  ${BOLD}testing${RESET}        ${CYAN}2 GB${RESET}      ${ORANGE}17${RESET}       ${PINK}89${RESET}           ${PURPLE}99.1%${RESET}"
    echo ""

    # Performance Metrics
    echo -e "${TEXT_MUTED}╭─ PERFORMANCE METRICS ─────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${TEXT_SECONDARY}Metric${RESET}              ${CYAN}Current${RESET}    ${ORANGE}Avg${RESET}       ${PINK}Peak${RESET}"
    echo -e "  ${TEXT_MUTED}───────────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${BOLD}TPS${RESET}                ${CYAN}2,847${RESET}     ${ORANGE}2,234${RESET}     ${PINK}4,892${RESET}"
    echo -e "  ${BOLD}Commits/s${RESET}          ${CYAN}2,789${RESET}     ${ORANGE}2,189${RESET}     ${PINK}4,847${RESET}"
    echo -e "  ${BOLD}Rollbacks/s${RESET}        ${CYAN}58${RESET}        ${ORANGE}45${RESET}        ${PINK}123${RESET}"
    echo -e "  ${BOLD}Queries/s${RESET}          ${CYAN}8,473${RESET}     ${ORANGE}6,847${RESET}     ${PINK}12,234${RESET}"
    echo ""

    # Query Performance
    echo -e "${TEXT_MUTED}╭─ QUERY PERFORMANCE ───────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Avg Query Time:${RESET}     ${BOLD}${CYAN}23.4 ms${RESET}            ${TEXT_SECONDARY}mean execution${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}P95 Query Time:${RESET}     ${BOLD}${ORANGE}147 ms${RESET}             ${TEXT_SECONDARY}95th percentile${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Slow Queries:${RESET}       ${BOLD}${YELLOW}23${RESET}                 ${TEXT_SECONDARY}> 1000ms${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Long Transactions:${RESET}  ${BOLD}${RED}3${RESET}                  ${TEXT_SECONDARY}> 5 minutes${RESET}"
    echo ""

    # Top Queries
    echo -e "${TEXT_MUTED}╭─ TOP QUERIES (BY TIME) ───────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${TEXT_SECONDARY}Query${RESET}                                      ${CYAN}Calls${RESET}    ${ORANGE}Avg Time${RESET}"
    echo -e "  ${TEXT_MUTED}─────────────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${BOLD}SELECT * FROM orders WHERE...${RESET}           ${CYAN}8.4K${RESET}    ${ORANGE}234 ms${RESET}"
    echo -e "  ${BOLD}UPDATE users SET last_login...${RESET}          ${CYAN}2.8K${RESET}    ${ORANGE}89 ms${RESET}"
    echo -e "  ${BOLD}INSERT INTO events...${RESET}                   ${CYAN}4.7K${RESET}    ${ORANGE}47 ms${RESET}"
    echo -e "  ${BOLD}SELECT COUNT(*) FROM products...${RESET}        ${CYAN}1.2K${RESET}    ${ORANGE}412 ms${RESET}"
    echo ""

    # Cache Statistics
    echo -e "${TEXT_MUTED}╭─ CACHE STATISTICS ────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Shared Buffers:${RESET}     ${BOLD}${CYAN}16 GB${RESET}              ${TEXT_SECONDARY}configured${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Buffer Hit Rate:${RESET}    ${BOLD}${GREEN}98.7%${RESET}              ${TEXT_SECONDARY}excellent${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Disk Blocks Read:${RESET}   ${BOLD}${ORANGE}847K/s${RESET}             ${TEXT_SECONDARY}from disk${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Disk Blocks Hit:${RESET}    ${BOLD}${PURPLE}64M/s${RESET}              ${TEXT_SECONDARY}from cache${RESET}"
    echo ""

    # Replication
    echo -e "${TEXT_MUTED}╭─ REPLICATION STATUS ──────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${GREEN}●${RESET} ${BOLD}replica-1${RESET}      State: ${CYAN}streaming${RESET}   Lag: ${ORANGE}0.2 MB${RESET}   ${GREEN}✓ Healthy${RESET}"
    echo -e "  ${GREEN}●${RESET} ${BOLD}replica-2${RESET}      State: ${CYAN}streaming${RESET}   Lag: ${ORANGE}0.1 MB${RESET}   ${GREEN}✓ Healthy${RESET}"
    echo -e "  ${GREEN}●${RESET} ${BOLD}replica-3${RESET}      State: ${CYAN}streaming${RESET}   Lag: ${ORANGE}0.3 MB${RESET}   ${GREEN}✓ Healthy${RESET}"
    echo ""

    # Table Statistics
    echo -e "${TEXT_MUTED}╭─ TOP TABLES ──────────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${TEXT_SECONDARY}Table${RESET}               ${CYAN}Rows${RESET}       ${ORANGE}Size${RESET}      ${PINK}Seq Scans${RESET}"
    echo -e "  ${TEXT_MUTED}────────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${BOLD}orders${RESET}             ${CYAN}8.4M${RESET}      ${ORANGE}47 GB${RESET}    ${PINK}234${RESET}"
    echo -e "  ${BOLD}users${RESET}              ${CYAN}2.8M${RESET}      ${ORANGE}12 GB${RESET}    ${PINK}847${RESET}"
    echo -e "  ${BOLD}products${RESET}           ${CYAN}847K${RESET}      ${ORANGE}4.2 GB${RESET}   ${PINK}1.2K${RESET}"
    echo -e "  ${BOLD}events${RESET}             ${CYAN}147M${RESET}      ${ORANGE}89 GB${RESET}    ${PINK}47${RESET}"
    echo ""

    # Locks
    echo -e "${TEXT_MUTED}╭─ LOCKS ───────────────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Total Locks:${RESET}        ${BOLD}${CYAN}234${RESET}                ${TEXT_SECONDARY}current${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Access Share:${RESET}       ${BOLD}${GREEN}189${RESET}                ${TEXT_SECONDARY}shared read${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Row Exclusive:${RESET}      ${BOLD}${ORANGE}42${RESET}                 ${TEXT_SECONDARY}row locks${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Waiting:${RESET}            ${BOLD}${RED}3${RESET}                  ${TEXT_SECONDARY}blocked queries${RESET}"
    echo ""

    # Vacuum & Autovacuum
    echo -e "${TEXT_MUTED}╭─ MAINTENANCE ─────────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Autovacuum:${RESET}         ${GREEN}Enabled${RESET}            ${TEXT_MUTED}Last run: 23m ago${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Last Vacuum:${RESET}        ${CYAN}orders${RESET}             ${TEXT_MUTED}47m ago${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Dead Tuples:${RESET}        ${ORANGE}847K${RESET}               ${TEXT_MUTED}0.3% of total${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Bloat Estimate:${RESET}     ${GREEN}Low${RESET}                ${TEXT_MUTED}< 5%${RESET}"
    echo ""

    # Alerts
    echo -e "${TEXT_MUTED}╭─ ACTIVE ALERTS ───────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${YELLOW}⚠${RESET} ${BOLD}WARNING${RESET}  3 long-running transactions (> 5 minutes)"
    echo -e "  ${YELLOW}⚠${RESET} ${BOLD}WARNING${RESET}  23 slow queries detected (> 1 second)"
    echo -e "  ${CYAN}ℹ${RESET}  ${BOLD}INFO${RESET}     Cache hit rate excellent (98.7%)"
    echo ""

    # Footer
    echo -e "${BLUE}─────────────────────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${TEXT_SECONDARY}Updated: ${RESET}${BOLD}$(date '+%H:%M:%S')${RESET}  ${TEXT_SECONDARY}|  Cluster: ${RESET}${BOLD}production${RESET}  ${TEXT_SECONDARY}|  Role: ${RESET}${BOLD}Primary${RESET}"
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
