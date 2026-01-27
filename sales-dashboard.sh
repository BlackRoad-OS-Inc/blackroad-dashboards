#!/bin/bash

# BlackRoad OS - Sales Dashboard
# Track sales metrics, pipeline, targets, and revenue

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
    echo -e "${BOLD}${GREEN}║${RESET}  ${ORANGE}💰${RESET} ${BOLD}SALES DASHBOARD${RESET}                                                  ${BOLD}${GREEN}║${RESET}"
    echo -e "${BOLD}${GREEN}╚════════════════════════════════════════════════════════════════════════╝${RESET}"
    echo ""

    # Revenue Overview
    echo -e "${TEXT_MUTED}╭─ REVENUE OVERVIEW ────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Monthly Revenue:${RESET}    ${BOLD}${GREEN}\$2,847,234${RESET}        ${GREEN}↑ 23.4%${RESET} vs last month"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Quarterly:${RESET}          ${BOLD}${CYAN}\$8,234,567${RESET}        ${TEXT_MUTED}Q1 2026${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Annual (YTD):${RESET}       ${BOLD}${PURPLE}\$24.7M${RESET}            ${GREEN}↑ 47.2%${RESET} YoY"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Target:${RESET}             ${BOLD}${ORANGE}\$30M${RESET}              ${TEXT_MUTED}82.3% achieved${RESET}"
    echo ""

    # Target Progress
    echo -e "${TEXT_MUTED}╭─ TARGET PROGRESS ─────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}Annual Target${RESET}"
    echo -e "  ${GREEN}████████████████████████████████${TEXT_MUTED}████████${RESET}  ${BOLD}82.3%${RESET} (\$24.7M / \$30M)"
    echo ""
    echo -e "  ${BOLD}Monthly Target${RESET}"
    echo -e "  ${CYAN}██████████████████████████████████████${TEXT_MUTED}██${RESET}  ${BOLD}94.9%${RESET} (\$2.85M / \$3M)"
    echo ""

    # Sales Pipeline
    echo -e "${TEXT_MUTED}╭─ SALES PIPELINE ──────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${TEXT_SECONDARY}Stage${RESET}               ${CYAN}Deals${RESET}      ${ORANGE}Value${RESET}        ${PINK}Win Rate${RESET}"
    echo -e "  ${TEXT_MUTED}──────────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${BOLD}Prospecting${RESET}        ${CYAN}234${RESET}        ${ORANGE}\$847K${RESET}       ${PINK}12%${RESET}"
    echo -e "  ${BOLD}Qualification${RESET}      ${CYAN}147${RESET}        ${ORANGE}\$1.2M${RESET}       ${PINK}34%${RESET}"
    echo -e "  ${BOLD}Proposal${RESET}           ${CYAN}89${RESET}         ${ORANGE}\$2.4M${RESET}       ${PINK}56%${RESET}"
    echo -e "  ${BOLD}Negotiation${RESET}        ${CYAN}47${RESET}         ${ORANGE}\$3.8M${RESET}       ${PINK}78%${RESET}"
    echo -e "  ${BOLD}Closed Won${RESET}         ${CYAN}23${RESET}         ${ORANGE}\$2.1M${RESET}       ${PINK}100%${RESET}"
    echo ""

    # Pipeline Value
    echo -e "${TEXT_MUTED}╭─ PIPELINE VALUE ──────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Total Pipeline:${RESET}     ${BOLD}${CYAN}\$10.3M${RESET}             ${TEXT_SECONDARY}across 540 deals${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Weighted:${RESET}           ${BOLD}${ORANGE}\$4.8M${RESET}              ${TEXT_SECONDARY}probability adjusted${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Avg Deal Size:${RESET}      ${BOLD}${PURPLE}\$19,074${RESET}            ${TEXT_SECONDARY}per deal${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Conversion:${RESET}         ${BOLD}${GREEN}23.4%${RESET}              ${TEXT_SECONDARY}close rate${RESET}"
    echo ""

    # Top Performers
    echo -e "${TEXT_MUTED}╭─ TOP PERFORMERS ──────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${TEXT_SECONDARY}Rep${RESET}                 ${CYAN}Closed${RESET}     ${ORANGE}Revenue${RESET}      ${PINK}Quota${RESET}"
    echo -e "  ${TEXT_MUTED}───────────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${BOLD}Sarah Johnson${RESET}      ${CYAN}12${RESET}         ${ORANGE}\$847K${RESET}       ${PINK}142%${RESET} ${GREEN}⭐${RESET}"
    echo -e "  ${BOLD}Mike Chen${RESET}          ${CYAN}9${RESET}          ${ORANGE}\$623K${RESET}       ${PINK}124%${RESET} ${GREEN}⭐${RESET}"
    echo -e "  ${BOLD}Alex Rodriguez${RESET}     ${CYAN}8${RESET}          ${ORANGE}\$547K${RESET}       ${PINK}109%${RESET}"
    echo -e "  ${BOLD}Emma Wilson${RESET}        ${CYAN}7${RESET}          ${ORANGE}\$489K${RESET}       ${PINK}98%${RESET}"
    echo -e "  ${BOLD}David Lee${RESET}          ${CYAN}6${RESET}          ${ORANGE}\$412K${RESET}       ${PINK}82%${RESET}"
    echo ""

    # Deal Velocity
    echo -e "${TEXT_MUTED}╭─ DEAL VELOCITY ───────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Avg Sales Cycle:${RESET}    ${BOLD}${CYAN}47 days${RESET}            ${GREEN}↓ 8 days${RESET} vs last quarter"
    echo -e "  ${BOLD}${TEXT_PRIMARY}New Leads:${RESET}          ${BOLD}${ORANGE}847${RESET}                ${TEXT_SECONDARY}this month${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Meetings Set:${RESET}       ${BOLD}${PURPLE}234${RESET}                ${TEXT_SECONDARY}qualified calls${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Proposals Sent:${RESET}     ${BOLD}${PINK}89${RESET}                 ${TEXT_SECONDARY}pending review${RESET}"
    echo ""

    # Revenue Breakdown
    echo -e "${TEXT_MUTED}╭─ REVENUE BY PRODUCT ──────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}Enterprise${RESET}  ${CYAN}██████████████████████${RESET}           \$1.8M  ${TEXT_MUTED}63.2%${RESET}"
    echo -e "  ${BOLD}Pro${RESET}         ${ORANGE}████████${RESET}                         \$547K  ${TEXT_MUTED}19.2%${RESET}"
    echo -e "  ${BOLD}Starter${RESET}     ${PINK}█████${RESET}                            \$312K  ${TEXT_MUTED}11.0%${RESET}"
    echo -e "  ${BOLD}Add-ons${RESET}     ${PURPLE}████${RESET}                             \$189K  ${TEXT_MUTED}6.6%${RESET}"
    echo ""

    # Revenue by Region
    echo -e "${TEXT_MUTED}╭─ REVENUE BY REGION ───────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${CYAN}●${RESET} ${BOLD}North America${RESET}  \$1.4M  ${ORANGE}49.2%${RESET}  ${GREEN}↑ 28%${RESET}"
    echo -e "  ${ORANGE}●${RESET} ${BOLD}EMEA${RESET}           \$847K  ${ORANGE}29.8%${RESET}  ${GREEN}↑ 21%${RESET}"
    echo -e "  ${PINK}●${RESET} ${BOLD}APAC${RESET}           \$423K  ${ORANGE}14.9%${RESET}  ${GREEN}↑ 47%${RESET}"
    echo -e "  ${PURPLE}●${RESET} ${BOLD}LATAM${RESET}          \$177K  ${ORANGE}6.1%${RESET}   ${GREEN}↑ 12%${RESET}"
    echo ""

    # Recent Wins
    echo -e "${TEXT_MUTED}╭─ RECENT WINS ─────────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${GREEN}🎉${RESET} ${BOLD}Acme Corp${RESET}         \$847K  ${TEXT_SECONDARY}Enterprise • 3-year${RESET}    ${TEXT_MUTED}@sarah • 2h${RESET}"
    echo -e "  ${GREEN}🎉${RESET} ${BOLD}TechStart Inc${RESET}     \$234K  ${TEXT_SECONDARY}Pro • Annual${RESET}           ${TEXT_MUTED}@mike • 5h${RESET}"
    echo -e "  ${GREEN}🎉${RESET} ${BOLD}Global Systems${RESET}    \$412K  ${TEXT_SECONDARY}Enterprise • 2-year${RESET}    ${TEXT_MUTED}@alex • 1d${RESET}"
    echo ""

    # Monthly Trend
    echo -e "${TEXT_MUTED}╭─ MONTHLY REVENUE TREND ───────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  Jan  ${CYAN}████████████████${RESET}                  \$2.1M"
    echo -e "  Feb  ${CYAN}██████████████████${RESET}                \$2.3M"
    echo -e "  Mar  ${GREEN}████████████████████${RESET}              \$2.6M"
    echo -e "  Apr  ${GREEN}██████████████████████${RESET}            \$2.8M  ${TEXT_MUTED}(current)${RESET}"
    echo ""

    # Forecast
    echo -e "${TEXT_MUTED}╭─ FORECAST ────────────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Next Month:${RESET}         ${BOLD}${CYAN}\$3.2M${RESET}              ${TEXT_SECONDARY}projected${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Next Quarter:${RESET}       ${BOLD}${ORANGE}\$9.8M${RESET}              ${GREEN}↑ 19%${RESET} vs Q1"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Year End:${RESET}           ${BOLD}${PURPLE}\$34.2M${RESET}             ${GREEN}↑ 14%${RESET} over target"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Confidence:${RESET}         ${BOLD}${GREEN}87%${RESET}                ${TEXT_SECONDARY}based on pipeline${RESET}"
    echo ""

    # Footer
    echo -e "${GREEN}─────────────────────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${TEXT_SECONDARY}Updated: ${RESET}${BOLD}$(date '+%H:%M:%S')${RESET}  ${TEXT_SECONDARY}|  Period: ${RESET}${BOLD}April 2026${RESET}  ${TEXT_SECONDARY}|  Team: ${RESET}${BOLD}12 reps${RESET}"
    echo ""
}

# Main loop
if [[ "$1" == "--watch" ]]; then
    while true; do
        show_dashboard
        sleep 5
    done
else
    show_dashboard
fi
