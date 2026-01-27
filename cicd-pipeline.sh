#!/bin/bash

# BlackRoad OS - CI/CD Pipeline Visualizer
# Track build pipelines, deployments, and release automation

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
    echo -e "${BOLD}${BLUE}║${RESET}  ${GREEN}🚀${RESET} ${BOLD}CI/CD PIPELINE DASHBOARD${RESET}                                         ${BOLD}${BLUE}║${RESET}"
    echo -e "${BOLD}${BLUE}╚════════════════════════════════════════════════════════════════════════╝${RESET}"
    echo ""

    # Pipeline Status
    echo -e "${TEXT_MUTED}╭─ PIPELINE STATUS ─────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Active Pipelines:${RESET}   ${BOLD}${CYAN}12${RESET}                 ${TEXT_SECONDARY}running now${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Success Rate:${RESET}       ${BOLD}${GREEN}94.7%${RESET}              ${TEXT_SECONDARY}last 24h${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Avg Duration:${RESET}       ${BOLD}${ORANGE}8.4 min${RESET}            ${TEXT_SECONDARY}all stages${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Queue Length:${RESET}       ${BOLD}${PURPLE}3${RESET}                  ${TEXT_SECONDARY}pending builds${RESET}"
    echo ""

    # Current Builds
    echo -e "${TEXT_MUTED}╭─ RUNNING PIPELINES ───────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${TEXT_SECONDARY}Pipeline${RESET}            ${CYAN}Stage${RESET}          ${ORANGE}Progress${RESET}    ${PINK}Time${RESET}"
    echo -e "  ${TEXT_MUTED}───────────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${BOLD}api-backend${RESET}        ${CYAN}Test${RESET}           ${ORANGE}67%${RESET}         ${PINK}3m 24s${RESET}"
    echo -e "  ${BOLD}web-frontend${RESET}       ${CYAN}Build${RESET}          ${ORANGE}89%${RESET}         ${PINK}2m 12s${RESET}"
    echo -e "  ${BOLD}mobile-app${RESET}         ${CYAN}Deploy${RESET}         ${ORANGE}45%${RESET}         ${PINK}1m 47s${RESET}"
    echo ""

    # Pipeline Visualization
    echo -e "${TEXT_MUTED}╭─ PIPELINE STAGES ─────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}api-backend (main branch)${RESET}"
    echo -e "  ${GREEN}✓${RESET} Checkout ${TEXT_MUTED}────${RESET}${GREEN}✓${RESET} Build ${TEXT_MUTED}────${RESET}${CYAN}◐${RESET} Test ${TEXT_MUTED}────${RESET}${TEXT_MUTED}○${RESET} Deploy ${TEXT_MUTED}────${RESET}${TEXT_MUTED}○${RESET} Release"
    echo -e "    ${TEXT_MUTED}47s          2m 12s       3m 24s${RESET}"
    echo ""
    echo -e "  ${BOLD}web-frontend (feature/new-ui)${RESET}"
    echo -e "  ${GREEN}✓${RESET} Checkout ${TEXT_MUTED}────${RESET}${CYAN}◐${RESET} Build ${TEXT_MUTED}────${RESET}${TEXT_MUTED}○${RESET} Test ${TEXT_MUTED}────${RESET}${TEXT_MUTED}○${RESET} Deploy"
    echo -e "    ${TEXT_MUTED}32s          2m 12s${RESET}"
    echo ""

    # Recent Builds
    echo -e "${TEXT_MUTED}╭─ RECENT BUILDS ───────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${GREEN}✓${RESET} ${BOLD}api-backend #847${RESET}        ${TEXT_SECONDARY}main${RESET}       ${GREEN}8m 23s${RESET}     ${TEXT_MUTED}@alex • 2h${RESET}"
    echo -e "  ${GREEN}✓${RESET} ${BOLD}web-frontend #234${RESET}       ${TEXT_SECONDARY}main${RESET}       ${GREEN}6m 47s${RESET}     ${TEXT_MUTED}@sarah • 3h${RESET}"
    echo -e "  ${RED}✗${RESET} ${BOLD}mobile-app #89${RESET}          ${TEXT_SECONDARY}develop${RESET}    ${RED}Failed${RESET}     ${TEXT_MUTED}@mike • 5h${RESET}"
    echo -e "  ${GREEN}✓${RESET} ${BOLD}data-pipeline #456${RESET}     ${TEXT_SECONDARY}main${RESET}       ${GREEN}12m 34s${RESET}    ${TEXT_MUTED}@emma • 8h${RESET}"
    echo ""

    # Build Statistics
    echo -e "${TEXT_MUTED}╭─ BUILD STATISTICS (24H) ──────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Total Builds:${RESET}       ${BOLD}${CYAN}147${RESET}                ${TEXT_SECONDARY}completed${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Successful:${RESET}         ${BOLD}${GREEN}139${RESET}                ${TEXT_SECONDARY}(94.6%)${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Failed:${RESET}             ${BOLD}${RED}8${RESET}                  ${TEXT_SECONDARY}(5.4%)${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Avg Build Time:${RESET}     ${BOLD}${ORANGE}8.4 min${RESET}            ${GREEN}↓ 1.2 min${RESET}"
    echo ""

    # Build Success Rate
    echo -e "${TEXT_MUTED}╭─ SUCCESS RATE TREND ──────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  Mon  ${GREEN}████████████████████████${RESET}          96.2%"
    echo -e "  Tue  ${GREEN}██████████████████████████${RESET}        98.1%"
    echo -e "  Wed  ${GREEN}███████████████████████${RESET}           95.4%"
    echo -e "  Thu  ${CYAN}█████████████████████${RESET}             92.7%"
    echo -e "  Fri  ${GREEN}████████████████████████${RESET}          96.8%"
    echo ""

    # Deployment Status
    echo -e "${TEXT_MUTED}╭─ DEPLOYMENT STATUS ───────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${TEXT_SECONDARY}Environment${RESET}     ${CYAN}Version${RESET}        ${ORANGE}Status${RESET}        ${PINK}Last Deploy${RESET}"
    echo -e "  ${TEXT_MUTED}────────────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${BOLD}Production${RESET}     ${CYAN}v2.3.1${RESET}        ${GREEN}✓ Healthy${RESET}     ${PINK}2h ago${RESET}"
    echo -e "  ${BOLD}Staging${RESET}        ${CYAN}v2.4.0-rc${RESET}     ${GREEN}✓ Healthy${RESET}     ${PINK}47m ago${RESET}"
    echo -e "  ${BOLD}Development${RESET}    ${CYAN}v2.5.0-dev${RESET}    ${GREEN}✓ Healthy${RESET}     ${PINK}23m ago${RESET}"
    echo -e "  ${BOLD}QA${RESET}             ${CYAN}v2.4.0-rc${RESET}     ${YELLOW}⚠ Testing${RESET}     ${PINK}1h ago${RESET}"
    echo ""

    # Test Coverage
    echo -e "${TEXT_MUTED}╭─ TEST COVERAGE ───────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Unit Tests:${RESET}         ${BOLD}${GREEN}94.7%${RESET}              ${TEXT_SECONDARY}(2,847 tests)${RESET}"
    echo -e "  ${CYAN}████████████████████████████████████${TEXT_MUTED}████${RESET}  ${BOLD}95%${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Integration:${RESET}        ${BOLD}${CYAN}87.2%${RESET}              ${TEXT_SECONDARY}(847 tests)${RESET}"
    echo -e "  ${CYAN}█████████████████████████████████${TEXT_MUTED}███████${RESET}  ${BOLD}87%${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}E2E Tests:${RESET}          ${BOLD}${ORANGE}78.4%${RESET}              ${TEXT_SECONDARY}(234 tests)${RESET}"
    echo -e "  ${ORANGE}███████████████████████████████${TEXT_MUTED}█████████${RESET}  ${BOLD}78%${RESET}"
    echo ""

    # Failed Tests
    echo -e "${TEXT_MUTED}╭─ RECENT FAILURES ─────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${RED}✗${RESET} ${TEXT_SECONDARY}Auth test: password reset flow${RESET}             ${TEXT_MUTED}api-backend • 5h${RESET}"
    echo -e "  ${RED}✗${RESET} ${TEXT_SECONDARY}UI test: checkout process${RESET}                  ${TEXT_MUTED}web-frontend • 8h${RESET}"
    echo -e "  ${YELLOW}⚠${RESET} ${TEXT_SECONDARY}Flaky: user profile load${RESET}                  ${TEXT_MUTED}mobile-app • 12h${RESET}"
    echo ""

    # Build Agents
    echo -e "${TEXT_MUTED}╭─ BUILD AGENTS ────────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${GREEN}●${RESET} ${BOLD}agent-1${RESET}     Load: ${CYAN}84%${RESET}   Jobs: ${ORANGE}3${RESET}   ${GREEN}✓ Active${RESET}"
    echo -e "  ${GREEN}●${RESET} ${BOLD}agent-2${RESET}     Load: ${CYAN}67%${RESET}   Jobs: ${ORANGE}2${RESET}   ${GREEN}✓ Active${RESET}"
    echo -e "  ${GREEN}●${RESET} ${BOLD}agent-3${RESET}     Load: ${CYAN}45%${RESET}   Jobs: ${ORANGE}1${RESET}   ${GREEN}✓ Active${RESET}"
    echo -e "  ${CYAN}●${RESET} ${BOLD}agent-4${RESET}     Load: ${CYAN}12%${RESET}   Jobs: ${ORANGE}0${RESET}   ${CYAN}⚡ Ready${RESET}"
    echo ""

    # Docker Images
    echo -e "${TEXT_MUTED}╭─ DOCKER REGISTRY ─────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Images Built:${RESET}       ${BOLD}${CYAN}47${RESET}                 ${TEXT_SECONDARY}today${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Registry Size:${RESET}      ${BOLD}${ORANGE}47.2 GB${RESET}            ${TEXT_SECONDARY}total${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Latest Tag:${RESET}         ${BOLD}${PURPLE}v2.3.1${RESET}             ${TEXT_SECONDARY}production${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Pulls Today:${RESET}        ${BOLD}${PINK}2,847${RESET}              ${TEXT_SECONDARY}deployments${RESET}"
    echo ""

    # Deployment Frequency
    echo -e "${TEXT_MUTED}╭─ DEPLOYMENT FREQUENCY ────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Today:${RESET}              ${BOLD}${CYAN}23${RESET}                 ${TEXT_SECONDARY}deployments${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}This Week:${RESET}          ${BOLD}${ORANGE}147${RESET}                ${TEXT_SECONDARY}deployments${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}This Month:${RESET}         ${BOLD}${PURPLE}847${RESET}                ${TEXT_SECONDARY}deployments${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Avg/Day:${RESET}            ${BOLD}${PINK}28${RESET}                 ${GREEN}↑ 12%${RESET} vs last month"
    echo ""

    # Footer
    echo -e "${BLUE}─────────────────────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${TEXT_SECONDARY}Updated: ${RESET}${BOLD}$(date '+%H:%M:%S')${RESET}  ${TEXT_SECONDARY}|  Platform: ${RESET}${BOLD}GitHub Actions${RESET}  ${TEXT_SECONDARY}|  Queue: ${RESET}${BOLD}3 pending${RESET}"
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
