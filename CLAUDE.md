# CLAUDE.md - AI Assistant Guide for BlackRoad Dashboards

## Repository Overview

**BlackRoad Dashboards** is a collection of 117 terminal-based dashboard scripts for monitoring BlackRoad OS infrastructure. All dashboards are written in pure Bash and display rich terminal UIs using ANSI escape codes with 24-bit RGB color support.

**Owner:** BlackRoad OS, Inc.
**CEO:** Alexa Amundson
**License:** Proprietary (testing/evaluation purposes only)
**Contact:** blackroad.systems@gmail.com

## Quick Reference

```bash
# Main launcher (interactive menu)
./br-dashboards.sh

# Recommended starting point
./blackroad-master-control.sh

# Setup wizard
./setup.sh

# Interactive dashboard launcher
./launch.sh
```

## Repository Structure

```
blackroad-dashboards/
├── .github/workflows/     # GitHub Actions CI/CD
│   ├── core-ci.yml        # Main CI pipeline
│   ├── deploy.yml         # Cloudflare Pages deployment
│   ├── auto-label.yml     # PR auto-labeling
│   ├── failure-issue.yml  # CI failure tracking
│   └── project-sync.yml   # Project board sync
├── *.sh                   # 117 dashboard scripts
├── README.md              # Main documentation
├── CONTRIBUTING.md        # Contribution guidelines
├── QUICK_START.md         # Quick start guide
├── STATUS.md              # System status documentation
├── LICENSE                # Proprietary license
└── CLAUDE.md              # This file
```

## Dashboard Categories

### Core Dashboards
| Script | Description |
|--------|-------------|
| `blackroad-dashboard.sh` | Basic agent status dashboard |
| `blackroad-live-dashboard.sh` | Live infrastructure monitoring |
| `blackroad-full-system.sh` | Enhanced system monitor with progress bars |
| `blackroad-ultimate.sh` | Full-featured with sound, APIs, SSH menu |
| `blackroad-master-control.sh` | Unified control center (recommended) |
| `blackroad-beautiful-os.sh` | Modern card-based UI |
| `blackroad-os95.sh` | Windows 95 retro UI |

### Device-Specific Dashboards
| Script | Description |
|--------|-------------|
| `device-raspberry-pi.sh` | Raspberry Pi cluster monitoring |
| `device-cloudflare.sh` | Cloudflare zones, Pages, KV, D1 |
| `device-github.sh` | GitHub repos and organizations |
| `device-railway.sh` | Railway deployment status |

### Utility Dashboards
| Script | Description |
|--------|-------------|
| `agent-detail.sh` | Individual agent inspection |
| `setup.sh` | Interactive configuration wizard |
| `launch.sh` | Dashboard selector menu |

## Shell Script Conventions

### Color Definitions
All scripts use consistent 24-bit RGB ANSI colors:

```bash
# Background colors
BG_DEEP="\033[48;2;10;10;18m"
BG_SURFACE="\033[48;2;18;18;31m"
BG_ELEVATED="\033[48;2;26;26;46m"

# Accent colors (primary palette)
ORANGE="\033[38;2;247;147;26m"      # #f7931a - Bitcoin orange
PINK="\033[38;2;233;30;140m"        # #e91e8c - Primary brand
PURPLE="\033[38;2;153;69;255m"      # #9945ff - Solana purple
BLUE="\033[38;2;20;241;149m"        # #14f195 - Teal/cyan
CYAN="\033[38;2;0;212;255m"         # #00d4ff

# Text colors
TEXT_PRIMARY="\033[38;2;255;255;255m"
TEXT_SECONDARY="\033[38;2;153;153;153m"
TEXT_MUTED="\033[38;2;77;77;77m"

# Control codes
RESET="\033[0m"
BOLD="\033[1m"
DIM="\033[2m"
```

### Script Structure Pattern
```bash
#!/bin/bash

# Script title and description comment
# Color definitions (as above)

# Clear screen
clear

# Header with gradient logo
echo -e "${BOLD}${ORANGE}╔════════════════════════════════════════════════════════════════════════╗${RESET}"
echo -e "${BOLD}${ORANGE}║${RESET}  ${BOLD}${ORANGE}👻${RESET}  ${BOLD}${ORANGE}B${PINK}L${PURPLE}A${BLUE}C${CYAN}K${ORANGE}R${PINK}O${PURPLE}A${BLUE}D${RESET} ${TEXT_SECONDARY}OS${RESET}                                              ${BOLD}${ORANGE}║${RESET}"
echo -e "${BOLD}${ORANGE}╚════════════════════════════════════════════════════════════════════════╝${RESET}"

# Content sections with separators
echo -e "${TEXT_MUTED}SECTION TITLE${RESET}"
echo -e "${PINK}─────────────────────────────────────────────────────────────────────────${RESET}"

# Footer with timestamp
echo -e "${TEXT_SECONDARY}Time: ${RESET}${BOLD}$(date '+%H:%M:%S')${RESET}"
```

### Common CLI Patterns
- `--watch` flag: Auto-refresh every 5 seconds
- `--boot` flag: Show boot animation (Windows 95 edition)
- Interactive controls: `q` quit, `s` SSH menu, `r` refresh, `1-6` tab switching

## Infrastructure Monitored

### Raspberry Pi Network
- Lucidia Prime: `192.168.4.38`
- BlackRoad Pi: `192.168.4.64`
- Lucidia Alt: `192.168.4.99`
- iPhone Koder: `192.168.4.68:8080`

### Cloud Services
- **DigitalOcean:** Codex Infinity (`159.65.43.12`)
- **Cloudflare:** 16 zones, 8 Pages, 8 KV namespaces, 1 D1 database
- **GitHub:** 15 organizations, 66+ repositories
- **Railway:** 12+ active projects

### Crypto Portfolio
- Bitcoin: 0.1 BTC (Coinbase)
- Ethereum: 2.5 ETH (MetaMask)
- Solana: 100 SOL (Phantom)

## Development Workflow

### Commit Message Format
Use conventional commits with emojis:
```
✨ feat: Add new feature
🐛 fix: Fix bug in component
📝 docs: Update documentation
🎨 style: Improve styling
♻️ refactor: Refactor code
✅ test: Add tests
🔧 chore: Update config
```

### Pull Request Process
1. Fork and clone the repository
2. Create a feature branch
3. Make changes following brand guidelines
4. Test across multiple terminals
5. Submit PR with screenshots for UI changes

### CI/CD Pipeline
- **core-ci.yml:** Runs on PRs and pushes to main/master
- **deploy.yml:** Auto-deploys to Cloudflare Pages on main branch
- **auto-label.yml:** Labels PRs as "core" or "labs"
- **failure-issue.yml:** Creates issues on CI failures
- **project-sync.yml:** Syncs PRs to project board

## Brand Compliance

### Allowed Colors (use these)
```css
--amber: #F5A623
--hot-pink: #FF1D6C      /* Primary Brand Color */
--electric-blue: #2979FF
--violet: #9C27B0
--black: #000000
--white: #FFFFFF
```

### Legacy Colors (in existing code)
```
#FF9D00, #FF6B00, #FF0066, #FF006B, #D600AA, #7700FF, #0066FF
#f7931a (Bitcoin orange), #e91e8c (pink), #9945ff (Solana purple)
#14f195 (teal), #00d4ff (cyan)
```

### Spacing System (Golden Ratio)
```css
--space-xs: 8px      /* Base */
--space-sm: 13px     /* 8 × φ */
--space-md: 21px     /* 13 × φ */
--space-lg: 34px     /* 21 × φ */
--space-xl: 55px     /* 34 × φ */
```

## Testing Guidelines

Before submitting changes:
1. Test script execution: `bash -n script.sh` (syntax check)
2. Test in multiple terminal emulators (iTerm2, Terminal.app, etc.)
3. Verify 24-bit color rendering
4. Test `--watch` mode if applicable
5. Check keyboard controls work correctly

## Common Tasks for AI Assistants

### Adding a New Dashboard
1. Copy an existing dashboard as template (e.g., `blackroad-dashboard.sh`)
2. Use consistent color definitions at the top
3. Follow the header/section/footer pattern
4. Add `--watch` support if live updates needed
5. Update `br-dashboards.sh` launcher menu
6. Document in README.md

### Modifying Colors
1. Update color variables at script top
2. Ensure hex values match brand guidelines
3. Test in truecolor-capable terminal

### Adding Interactive Controls
```bash
# Standard watch loop pattern
if [ "$1" = "--watch" ]; then
    while true; do
        render_dashboard
        read -t 5 -n 1 key
        case $key in
            q) exit 0 ;;
            r) continue ;;
            s) show_ssh_menu ;;
        esac
    done
fi
```

### Sound Effects (macOS only)
```bash
afplay /System/Library/Sounds/Tink.aiff &>/dev/null &
afplay /System/Library/Sounds/Glass.aiff &>/dev/null &
```

## Environment Variables

| Variable | Description |
|----------|-------------|
| `CF_TOKEN` | Cloudflare API token for live stats |
| `GITHUB_TOKEN` | GitHub API access |
| `HOME/.blackroad-config` | Local configuration file |

## Key Files Reference

| File | Purpose |
|------|---------|
| `setup.sh` | Interactive setup wizard, creates `~/.blackroad-config` |
| `launch.sh` | Dashboard selection menu |
| `br-dashboards.sh` | Main launcher with all dashboard options |
| `blackroad-master-control.sh` | Unified control center |

## Notes for AI Assistants

1. **Pure Bash:** All dashboards are pure bash scripts with no external dependencies beyond standard Unix tools
2. **Truecolor Required:** Dashboards assume 24-bit color support
3. **macOS Sound:** Sound effects use `afplay` (macOS only, silently fails elsewhere)
4. **Network Checks:** Many dashboards ping real IP addresses - expect timeouts on offline networks
5. **No Package Manager:** No npm, pip, or other package managers needed
6. **Unicode Support:** Scripts use Unicode box-drawing characters and emojis
7. **Line Width:** Target 76-80 character width for terminal compatibility

## Corporate Structure

BlackRoad OS operates with autonomous AI agents in executive roles:
- **CEO:** Alexa (Human + AI Augmented)
- **CTO:** Cecilia (Claude-powered)
- **CFO:** Silas (Grok-powered)
- **COO:** Cadence (ChatGPT-powered)
- **CMO:** Aria (Multi-AI powered)

See `AUTOMATED_CORPORATE_STRUCTURE.md` for full organizational details.

## Links

- **Email:** blackroad.systems@gmail.com
- **GitHub:** blackboxprogramming organization
- **Cloudflare Pages:** Auto-deployed from main branch
