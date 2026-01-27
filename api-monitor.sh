#!/bin/bash

# BlackRoad OS - API Endpoint Monitor
# Monitor REST API endpoints, response times, and health

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
    echo -e "${BOLD}${PURPLE}╔════════════════════════════════════════════════════════════════════════╗${RESET}"
    echo -e "${BOLD}${PURPLE}║${RESET}  ${CYAN}🔌${RESET} ${BOLD}API ENDPOINT MONITOR${RESET}                                             ${BOLD}${PURPLE}║${RESET}"
    echo -e "${BOLD}${PURPLE}╚════════════════════════════════════════════════════════════════════════╝${RESET}"
    echo ""

    # API Overview
    echo -e "${TEXT_MUTED}╭─ API OVERVIEW ────────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Base URL:${RESET}           ${BOLD}${CYAN}https://api.example.com${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Status:${RESET}             ${GREEN}●${RESET} ${BOLD}${GREEN}OPERATIONAL${RESET}       ${TEXT_MUTED}All endpoints healthy${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Total Endpoints:${RESET}    ${BOLD}${ORANGE}47${RESET}                 ${TEXT_SECONDARY}monitored${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Requests/s:${RESET}         ${BOLD}${PURPLE}8,473${RESET}              ${TEXT_SECONDARY}current load${RESET}"
    echo ""

    # Endpoint Health
    echo -e "${TEXT_MUTED}╭─ ENDPOINT HEALTH ─────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${TEXT_SECONDARY}Status${RESET}          ${CYAN}Count${RESET}    ${ORANGE}Uptime${RESET}     ${PINK}Avg Resp${RESET}"
    echo -e "  ${TEXT_MUTED}───────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${GREEN}●${RESET} ${BOLD}Healthy${RESET}      ${CYAN}44${RESET}       ${ORANGE}99.9%${RESET}     ${PINK}234 ms${RESET}"
    echo -e "  ${YELLOW}●${RESET} ${BOLD}Degraded${RESET}     ${CYAN}2${RESET}        ${ORANGE}98.7%${RESET}     ${PINK}847 ms${RESET}"
    echo -e "  ${RED}●${RESET} ${BOLD}Down${RESET}         ${CYAN}1${RESET}        ${ORANGE}0%${RESET}        ${PINK}—${RESET}"
    echo ""

    # Top Endpoints
    echo -e "${TEXT_MUTED}╭─ TOP ENDPOINTS (BY TRAFFIC) ──────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${TEXT_SECONDARY}Endpoint${RESET}                ${CYAN}Req/s${RESET}    ${ORANGE}Latency${RESET}    ${PINK}Status${RESET}"
    echo -e "  ${TEXT_MUTED}──────────────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${BOLD}GET /api/users${RESET}         ${CYAN}2,847${RESET}   ${ORANGE}89 ms${RESET}     ${GREEN}200${RESET}"
    echo -e "  ${BOLD}POST /api/orders${RESET}       ${CYAN}1,234${RESET}   ${ORANGE}234 ms${RESET}    ${GREEN}201${RESET}"
    echo -e "  ${BOLD}GET /api/products${RESET}      ${CYAN}847${RESET}     ${ORANGE}147 ms${RESET}    ${GREEN}200${RESET}"
    echo -e "  ${BOLD}PUT /api/users/:id${RESET}     ${CYAN}423${RESET}     ${ORANGE}312 ms${RESET}    ${GREEN}200${RESET}"
    echo -e "  ${BOLD}DELETE /api/items${RESET}      ${CYAN}189${RESET}     ${ORANGE}89 ms${RESET}     ${GREEN}204${RESET}"
    echo ""

    # Response Time Distribution
    echo -e "${TEXT_MUTED}╭─ RESPONSE TIME DISTRIBUTION ──────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${GREEN}< 100ms${RESET}     ${GREEN}████████████████████████${RESET}          54.2%"
    echo -e "  ${CYAN}100-300ms${RESET}   ${CYAN}████████████${RESET}                      28.7%"
    echo -e "  ${ORANGE}300-500ms${RESET}   ${ORANGE}████${RESET}                              9.8%"
    echo -e "  ${YELLOW}500-1s${RESET}      ${YELLOW}██${RESET}                                5.4%"
    echo -e "  ${RED}> 1s${RESET}        ${RED}█${RESET}                                 1.9%"
    echo ""

    # Status Codes
    echo -e "${TEXT_MUTED}╭─ STATUS CODE DISTRIBUTION ────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${GREEN}2xx${RESET}         ${GREEN}███████████████████████████████${RESET}   94.7%  ${TEXT_MUTED}(success)${RESET}"
    echo -e "  ${CYAN}3xx${RESET}         ${CYAN}██${RESET}                                2.3%   ${TEXT_MUTED}(redirect)${RESET}"
    echo -e "  ${ORANGE}4xx${RESET}         ${ORANGE}█${RESET}                                 2.1%   ${TEXT_MUTED}(client error)${RESET}"
    echo -e "  ${RED}5xx${RESET}         ${RED}█${RESET}                                 0.9%   ${TEXT_MUTED}(server error)${RESET}"
    echo ""

    # Endpoint Details
    echo -e "${TEXT_MUTED}╭─ ENDPOINT DETAILS ────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${GREEN}✓${RESET} ${BOLD}GET /api/users${RESET}"
    echo -e "     ${TEXT_SECONDARY}Requests:${RESET} ${CYAN}2,847/s${RESET}  ${TEXT_SECONDARY}P95:${RESET} ${ORANGE}147ms${RESET}  ${TEXT_SECONDARY}Success:${RESET} ${GREEN}99.8%${RESET}"
    echo ""
    echo -e "  ${GREEN}✓${RESET} ${BOLD}POST /api/orders${RESET}"
    echo -e "     ${TEXT_SECONDARY}Requests:${RESET} ${CYAN}1,234/s${RESET}  ${TEXT_SECONDARY}P95:${RESET} ${ORANGE}423ms${RESET}  ${TEXT_SECONDARY}Success:${RESET} ${GREEN}99.2%${RESET}"
    echo ""
    echo -e "  ${YELLOW}⚠${RESET} ${BOLD}GET /api/analytics${RESET}"
    echo -e "     ${TEXT_SECONDARY}Requests:${RESET} ${CYAN}234/s${RESET}    ${TEXT_SECONDARY}P95:${RESET} ${ORANGE}1,234ms${RESET} ${TEXT_SECONDARY}Success:${RESET} ${YELLOW}98.1%${RESET}"
    echo ""

    # Failed Endpoints
    echo -e "${TEXT_MUTED}╭─ PROBLEMATIC ENDPOINTS ───────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${RED}✗${RESET} ${BOLD}GET /api/legacy/data${RESET}      Errors: ${RED}847${RESET}   Last: ${TEXT_MUTED}2m ago${RESET}"
    echo -e "  ${YELLOW}⚠${RESET} ${BOLD}POST /api/batch${RESET}           Slow: ${ORANGE}2.4s${RESET}   P99: ${TEXT_MUTED}3.2s${RESET}"
    echo -e "  ${ORANGE}●${RESET} ${BOLD}GET /api/reports${RESET}          Timeout: ${ORANGE}23${RESET}  Rate: ${TEXT_MUTED}2.8%${RESET}"
    echo ""

    # Performance Metrics
    echo -e "${TEXT_MUTED}╭─ PERFORMANCE METRICS ─────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${TEXT_SECONDARY}Metric${RESET}              ${CYAN}Current${RESET}    ${ORANGE}P95${RESET}       ${PINK}P99${RESET}"
    echo -e "  ${TEXT_MUTED}───────────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${BOLD}Response Time${RESET}      ${CYAN}234 ms${RESET}    ${ORANGE}847 ms${RESET}   ${PINK}1.2 s${RESET}"
    echo -e "  ${BOLD}DNS Lookup${RESET}         ${CYAN}12 ms${RESET}     ${ORANGE}23 ms${RESET}    ${PINK}47 ms${RESET}"
    echo -e "  ${BOLD}TCP Connect${RESET}        ${CYAN}23 ms${RESET}     ${ORANGE}47 ms${RESET}    ${PINK}89 ms${RESET}"
    echo -e "  ${BOLD}TLS Handshake${RESET}      ${CYAN}47 ms${RESET}     ${ORANGE}89 ms${RESET}    ${PINK}147 ms${RESET}"
    echo ""

    # Rate Limiting
    echo -e "${TEXT_MUTED}╭─ RATE LIMITING ───────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Limit:${RESET}              ${BOLD}${CYAN}10,000/hour${RESET}        ${TEXT_SECONDARY}per API key${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Current Usage:${RESET}      ${BOLD}${ORANGE}8,473${RESET}              ${TEXT_SECONDARY}84.7% used${RESET}"
    echo -e "  ${CYAN}████████████████████████████████████${TEXT_MUTED}██████${RESET}  ${BOLD}85%${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Throttled:${RESET}          ${BOLD}${YELLOW}23${RESET}                 ${TEXT_SECONDARY}last hour${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Blocked:${RESET}            ${BOLD}${RED}8${RESET}                  ${TEXT_SECONDARY}exceeded limit${RESET}"
    echo ""

    # Authentication
    echo -e "${TEXT_MUTED}╭─ AUTHENTICATION ──────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Active Keys:${RESET}        ${BOLD}${CYAN}234${RESET}                ${TEXT_SECONDARY}API keys${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Authenticated:${RESET}      ${BOLD}${GREEN}99.7%${RESET}              ${TEXT_SECONDARY}success rate${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Failed Auth:${RESET}        ${BOLD}${RED}47${RESET}                 ${TEXT_SECONDARY}last hour${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Expired Tokens:${RESET}     ${BOLD}${YELLOW}12${RESET}                 ${TEXT_SECONDARY}need refresh${RESET}"
    echo ""

    # Geographic Distribution
    echo -e "${TEXT_MUTED}╭─ GEOGRAPHIC DISTRIBUTION ─────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${CYAN}●${RESET} ${BOLD}North America${RESET}  ${ORANGE}47.2%${RESET}  ${PINK}234ms avg${RESET}"
    echo -e "  ${BLUE}●${RESET} ${BOLD}Europe${RESET}         ${ORANGE}28.9%${RESET}  ${PINK}312ms avg${RESET}"
    echo -e "  ${PURPLE}●${RESET} ${BOLD}Asia${RESET}           ${ORANGE}18.7%${RESET}  ${PINK}423ms avg${RESET}"
    echo -e "  ${PINK}●${RESET} ${BOLD}Other${RESET}          ${ORANGE}5.2%${RESET}   ${PINK}547ms avg${RESET}"
    echo ""

    # Alerts
    echo -e "${TEXT_MUTED}╭─ ACTIVE ALERTS ───────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${RED}●${RESET} ${BOLD}CRITICAL${RESET}  GET /api/legacy/data returning 500 errors"
    echo -e "  ${YELLOW}⚠${RESET} ${BOLD}WARNING${RESET}   POST /api/batch response time > 2s"
    echo -e "  ${ORANGE}●${RESET} ${BOLD}NOTICE${RESET}    Rate limit approaching (84.7% used)"
    echo ""

    # Footer
    echo -e "${PURPLE}─────────────────────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${TEXT_SECONDARY}Updated: ${RESET}${BOLD}$(date '+%H:%M:%S')${RESET}  ${TEXT_SECONDARY}|  API: ${RESET}${BOLD}Production${RESET}  ${TEXT_SECONDARY}|  Health: ${RESET}${BOLD}${GREEN}94%${RESET}"
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
