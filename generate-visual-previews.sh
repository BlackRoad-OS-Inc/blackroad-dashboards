#!/bin/bash

# BlackRoad OS - Dashboard Visual Preview Generator
# Generates ASCII art previews for each dashboard template

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PREVIEW_DIR="$SCRIPT_DIR/previews/screenshots"

mkdir -p "$PREVIEW_DIR"

# Colors
CYAN="\033[38;2;0;212;255m"
GREEN="\033[38;2;20;241;149m"
ORANGE="\033[38;2;247;147;26m"
PINK="\033[38;2;233;30;140m"
PURPLE="\033[38;2;153;69;255m"
RESET="\033[0m"
BOLD="\033[1m"

echo -e "${BOLD}${PURPLE}╔════════════════════════════════════════════════════════════════════════╗${RESET}"
echo -e "${BOLD}${PURPLE}║${RESET}  ${ORANGE}📸${RESET} ${BOLD}Visual Preview Generator${RESET}                                         ${BOLD}${PURPLE}║${RESET}"
echo -e "${BOLD}${PURPLE}╚════════════════════════════════════════════════════════════════════════╝${RESET}"
echo ""

# Generate a visual preview by executing dashboard with timeout
generate_preview() {
    local script_file=$1
    local output_file=$2
    local script_name=$(basename "$script_file" .sh)
    
    echo -ne "  ${ORANGE}•${RESET} Capturing ${BOLD}${script_name}${RESET}..."
    
    # Run the script with timeout and capture output
    timeout 2s bash "$script_file" > "$output_file" 2>/dev/null || true
    
    # If output is empty or very small, create a placeholder
    if [ ! -s "$output_file" ] || [ $(wc -c < "$output_file") -lt 100 ]; then
        cat > "$output_file" <<EOF
╔════════════════════════════════════════════════════════════════════╗
║  📊 ${script_name}
╚════════════════════════════════════════════════════════════════════╝

Preview not available for this dashboard.

To run this dashboard, execute:
  ./${script_name}.sh

Features: $(grep -c "echo" "$script_file" 2>/dev/null || echo "N/A") output lines
EOF
    else
        # Limit to first 40 lines
        head -40 "$output_file" > "${output_file}.tmp"
        mv "${output_file}.tmp" "$output_file"
    fi
    
    echo -e " ${GREEN}✓${RESET}"
}

# Generate previews for featured dashboards
echo -e "${CYAN}📝 Generating visual previews for featured dashboards...${RESET}"
echo ""

featured=(
    "blackroad-dashboard.sh"
    "blackroad-live-dashboard.sh"
    "blackroad-full-system.sh"
    "blackroad-ultimate.sh"
    "blackroad-os95.sh"
    "blackroad-beautiful-os.sh"
    "agent-detail.sh"
    "live-crypto-tracker.sh"
    "neural-network-viz.sh"
    "quantum-simulator.sh"
)

for dashboard in "${featured[@]}"; do
    if [ -f "$SCRIPT_DIR/$dashboard" ]; then
        output="${PREVIEW_DIR}/$(basename "$dashboard" .sh).txt"
        generate_preview "$SCRIPT_DIR/$dashboard" "$output"
    fi
done

echo ""
echo -e "${GREEN}✓ Visual previews generated!${RESET}"
echo -e "${CYAN}📁 Location: ${BOLD}$PREVIEW_DIR${RESET}"
echo ""
