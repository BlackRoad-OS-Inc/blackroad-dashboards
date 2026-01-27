#!/bin/bash

# BlackRoad OS - Terminal Color Palette
# Display terminal color schemes and ANSI color codes

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
    echo -e "${BOLD}${CYAN}║${RESET}  ${PURPLE}🎨${RESET} ${BOLD}TERMINAL COLOR PALETTE${RESET}                                           ${BOLD}${CYAN}║${RESET}"
    echo -e "${BOLD}${CYAN}╚════════════════════════════════════════════════════════════════════════╝${RESET}"
    echo ""

    # BlackRoad OS Color Scheme
    echo -e "${TEXT_MUTED}╭─ BLACKROAD OS COLORS ─────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${ORANGE}██████${RESET}  ${BOLD}Orange${RESET}     ${CYAN}#f7931a${RESET}  ${TEXT_MUTED}RGB(247,147,26)${RESET}   ${ORANGE}Primary accent${RESET}"
    echo -e "  ${BOLD}${PINK}██████${RESET}  ${BOLD}Pink${RESET}       ${CYAN}#e91e8c${RESET}  ${TEXT_MUTED}RGB(233,30,140)${RESET}   ${PINK}Secondary accent${RESET}"
    echo -e "  ${BOLD}${PURPLE}██████${RESET}  ${BOLD}Purple${RESET}     ${CYAN}#9945ff${RESET}  ${TEXT_MUTED}RGB(153,69,255)${RESET}   ${PURPLE}Tertiary accent${RESET}"
    echo -e "  ${BOLD}${BLUE}██████${RESET}  ${BOLD}Blue${RESET}       ${CYAN}#14f195${RESET}  ${TEXT_MUTED}RGB(20,241,149)${RESET}   ${BLUE}Success/Active${RESET}"
    echo -e "  ${BOLD}${CYAN}██████${RESET}  ${BOLD}Cyan${RESET}       ${CYAN}#00d4ff${RESET}  ${TEXT_MUTED}RGB(0,212,255)${RESET}    ${CYAN}Info/Data${RESET}"
    echo ""

    # Standard 16 Colors
    echo -e "${TEXT_MUTED}╭─ STANDARD 16 COLORS ──────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}Normal Colors${RESET}"
    echo -e "  \033[30m██\033[0m \033[31m██\033[0m \033[32m██\033[0m \033[33m██\033[0m \033[34m██\033[0m \033[35m██\033[0m \033[36m██\033[0m \033[37m██\033[0m"
    echo -e "  ${TEXT_MUTED}0  1  2  3  4  5  6  7${RESET}"
    echo ""
    echo -e "  ${BOLD}Bright Colors${RESET}"
    echo -e "  \033[90m██\033[0m \033[91m██\033[0m \033[92m██\033[0m \033[93m██\033[0m \033[94m██\033[0m \033[95m██\033[0m \033[96m██\033[0m \033[97m██\033[0m"
    echo -e "  ${TEXT_MUTED}8  9  10 11 12 13 14 15${RESET}"
    echo ""

    # 256 Color Palette Preview
    echo -e "${TEXT_MUTED}╭─ 256 COLOR PALETTE PREVIEW ───────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}Grayscale Ramp${RESET}"
    echo -ne "  "
    for i in {232..255}; do
        echo -ne "\033[48;5;${i}m  \033[0m"
    done
    echo ""
    echo ""
    echo -e "  ${BOLD}Color Cube Sample (RGB)${RESET}"
    echo -ne "  "
    for i in {196..201}; do echo -ne "\033[48;5;${i}m  \033[0m"; done
    echo -e "  ${TEXT_MUTED}Red range${RESET}"
    echo -ne "  "
    for i in {46..51}; do echo -ne "\033[48;5;${i}m  \033[0m"; done
    echo -e "  ${TEXT_MUTED}Green range${RESET}"
    echo -ne "  "
    for i in {21..26}; do echo -ne "\033[48;5;${i}m  \033[0m"; done
    echo -e "  ${TEXT_MUTED}Blue range${RESET}"
    echo ""

    # RGB True Color Demo
    echo -e "${TEXT_MUTED}╭─ TRUE COLOR (24-BIT RGB) ─────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}Gradient Examples${RESET}"
    echo ""
    echo -ne "  "
    for r in {0..255..8}; do
        echo -ne "\033[48;2;${r};100;200m \033[0m"
    done
    echo -e "  ${TEXT_MUTED}Red gradient${RESET}"
    echo ""
    echo -ne "  "
    for g in {0..255..8}; do
        echo -ne "\033[48;2;100;${g};200m \033[0m"
    done
    echo -e "  ${TEXT_MUTED}Green gradient${RESET}"
    echo ""
    echo -ne "  "
    for b in {0..255..8}; do
        echo -ne "\033[48;2;100;200;${b}m \033[0m"
    done
    echo -e "  ${TEXT_MUTED}Blue gradient${RESET}"
    echo ""

    # Text Styles
    echo -e "${TEXT_MUTED}╭─ TEXT STYLES ─────────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}Normal text${RESET}           ${CYAN}\033[0m${RESET}          ${TEXT_MUTED}Default${RESET}"
    echo -e "  ${BOLD}Bold text${RESET}             ${CYAN}\033[1m${RESET}          ${BOLD}Emphasized${RESET}"
    echo -e "  \033[2mDim text\033[0m              ${CYAN}\033[2m${RESET}          ${TEXT_MUTED}Faded${RESET}"
    echo -e "  \033[3mItalic text\033[0m           ${CYAN}\033[3m${RESET}          ${TEXT_SECONDARY}Slanted${RESET}"
    echo -e "  \033[4mUnderlined text\033[0m       ${CYAN}\033[4m${RESET}          ${TEXT_SECONDARY}With line${RESET}"
    echo -e "  \033[9mStrikethrough\033[0m         ${CYAN}\033[9m${RESET}          ${TEXT_MUTED}Crossed out${RESET}"
    echo ""

    # Color Combinations
    echo -e "${TEXT_MUTED}╭─ COLOR COMBINATIONS ──────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${ORANGE}●${RESET} ${BOLD}${ORANGE}Orange on black${RESET}      ${TEXT_MUTED}High contrast${RESET}"
    echo -e "  ${PINK}●${RESET} ${BOLD}${PINK}Pink on black${RESET}        ${TEXT_MUTED}Vibrant${RESET}"
    echo -e "  ${PURPLE}●${RESET} ${BOLD}${PURPLE}Purple on black${RESET}      ${TEXT_MUTED}Rich${RESET}"
    echo -e "  ${CYAN}●${RESET} ${BOLD}${CYAN}Cyan on black${RESET}        ${TEXT_MUTED}Cool${RESET}"
    echo -e "  ${GREEN}●${RESET} ${BOLD}${GREEN}Green on black${RESET}       ${TEXT_MUTED}Fresh${RESET}"
    echo ""

    # ANSI Escape Sequences
    echo -e "${TEXT_MUTED}╭─ ANSI ESCAPE SEQUENCES ───────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}Basic Colors${RESET}"
    echo -e "  ${CYAN}\\033[30m${RESET} - Black      ${CYAN}\\033[31m${RESET} - Red"
    echo -e "  ${CYAN}\\033[32m${RESET} - Green      ${CYAN}\\033[33m${RESET} - Yellow"
    echo -e "  ${CYAN}\\033[34m${RESET} - Blue       ${CYAN}\\033[35m${RESET} - Magenta"
    echo -e "  ${CYAN}\\033[36m${RESET} - Cyan       ${CYAN}\\033[37m${RESET} - White"
    echo ""
    echo -e "  ${BOLD}256 Colors${RESET}"
    echo -e "  ${CYAN}\\033[38;5;COLORm${RESET} - Set foreground (0-255)"
    echo -e "  ${CYAN}\\033[48;5;COLORm${RESET} - Set background (0-255)"
    echo ""
    echo -e "  ${BOLD}RGB Colors${RESET}"
    echo -e "  ${CYAN}\\033[38;2;R;G;Bm${RESET} - Set RGB foreground"
    echo -e "  ${CYAN}\\033[48;2;R;G;Bm${RESET} - Set RGB background"
    echo ""

    # Color Theory
    echo -e "${TEXT_MUTED}╭─ COLOR USAGE GUIDE ───────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${GREEN}●${RESET} ${BOLD}Green${RESET}      Success, positive, active, healthy"
    echo -e "  ${BLUE}●${RESET} ${BOLD}Blue${RESET}       Information, neutral, data, stable"
    echo -e "  ${YELLOW}●${RESET} ${BOLD}Yellow${RESET}     Warning, caution, attention needed"
    echo -e "  ${ORANGE}●${RESET} ${BOLD}Orange${RESET}     Important, moderate priority"
    echo -e "  ${RED}●${RESET} ${BOLD}Red${RESET}        Error, critical, danger, stopped"
    echo -e "  ${PURPLE}●${RESET} ${BOLD}Purple${RESET}     Special, unique, highlighted"
    echo -e "  ${TEXT_MUTED}●${RESET} ${BOLD}Gray${RESET}       Disabled, inactive, metadata"
    echo ""

    # Rainbow Demo
    echo -e "${TEXT_MUTED}╭─ RAINBOW DEMO ────────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  \033[38;2;255;0;0m█\033[38;2;255;64;0m█\033[38;2;255;128;0m█\033[38;2;255;192;0m█\033[38;2;255;255;0m█\033[38;2;192;255;0m█\033[38;2;128;255;0m█\033[38;2;64;255;0m█\033[38;2;0;255;0m█\033[38;2;0;255;64m█\033[38;2;0;255;128m█\033[38;2;0;255;192m█\033[38;2;0;255;255m█\033[38;2;0;192;255m█\033[38;2;0;128;255m█\033[38;2;0;64;255m█\033[38;2;0;0;255m█\033[38;2;64;0;255m█\033[38;2;128;0;255m█\033[38;2;192;0;255m█\033[38;2;255;0;255m█\033[38;2;255;0;192m█\033[38;2;255;0;128m█\033[38;2;255;0;64m█\033[0m"
    echo -e "  ${TEXT_MUTED}Full spectrum color transition${RESET}"
    echo ""

    # Footer
    echo -e "${CYAN}─────────────────────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${TEXT_SECONDARY}Terminal Color Reference${RESET}  ${TEXT_MUTED}|${RESET}  ${TEXT_SECONDARY}BlackRoad OS Design System${RESET}"
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
