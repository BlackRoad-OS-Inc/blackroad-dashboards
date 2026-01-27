#!/bin/bash

# BlackRoad OS - AWS Resources Dashboard
# Monitor AWS cloud resources, costs, and service health

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
    echo -e "${BOLD}${ORANGE}╔════════════════════════════════════════════════════════════════════════╗${RESET}"
    echo -e "${BOLD}${ORANGE}║${RESET}  ${YELLOW}☁️${RESET}  ${BOLD}AWS RESOURCES DASHBOARD${RESET}                                          ${BOLD}${ORANGE}║${RESET}"
    echo -e "${BOLD}${ORANGE}╚════════════════════════════════════════════════════════════════════════╝${RESET}"
    echo ""

    # Account Overview
    echo -e "${TEXT_MUTED}╭─ ACCOUNT OVERVIEW ────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Account ID:${RESET}         ${BOLD}${CYAN}123456789012${RESET}       ${TEXT_MUTED}Production${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Region:${RESET}             ${BOLD}${ORANGE}us-east-1${RESET}          ${TEXT_MUTED}Primary${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Status:${RESET}             ${GREEN}●${RESET} ${BOLD}${GREEN}ACTIVE${RESET}            ${TEXT_MUTED}All services operational${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}IAM Users:${RESET}          ${BOLD}${PURPLE}47${RESET}                 ${TEXT_MUTED}active${RESET}"
    echo ""

    # Cost Overview
    echo -e "${TEXT_MUTED}╭─ COST OVERVIEW ───────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}MTD Spend:${RESET}          ${BOLD}${ORANGE}\$28,470${RESET}            ${TEXT_SECONDARY}month to date${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Projected:${RESET}          ${BOLD}${CYAN}\$34,200${RESET}            ${TEXT_SECONDARY}end of month${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Budget:${RESET}             ${BOLD}${PURPLE}\$40,000${RESET}            ${TEXT_SECONDARY}monthly limit${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Remaining:${RESET}          ${BOLD}${GREEN}\$5,800${RESET}             ${TEXT_SECONDARY}14.5% buffer${RESET}"
    echo ""
    echo -e "  ${ORANGE}████████████████████████████████${TEXT_MUTED}████████${RESET}  ${BOLD}85.5%${RESET} of budget"
    echo ""

    # EC2 Instances
    echo -e "${TEXT_MUTED}╭─ EC2 INSTANCES ───────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${TEXT_SECONDARY}Status${RESET}          ${CYAN}Count${RESET}    ${ORANGE}Type${RESET}           ${PINK}Cost/day${RESET}"
    echo -e "  ${TEXT_MUTED}──────────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${GREEN}●${RESET} ${BOLD}Running${RESET}      ${CYAN}47${RESET}       ${ORANGE}Mixed${RESET}         ${PINK}\$847${RESET}"
    echo -e "  ${RED}●${RESET} ${BOLD}Stopped${RESET}      ${CYAN}12${RESET}       ${ORANGE}Various${RESET}       ${PINK}\$0${RESET}"
    echo -e "  ${YELLOW}●${RESET} ${BOLD}Terminated${RESET}   ${CYAN}8${RESET}        ${ORANGE}—${RESET}             ${PINK}\$0${RESET}"
    echo ""

    # Top EC2 Instances
    echo -e "${TEXT_MUTED}╭─ TOP EC2 INSTANCES ───────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${TEXT_SECONDARY}Instance${RESET}            ${CYAN}Type${RESET}       ${ORANGE}CPU${RESET}      ${PINK}Cost/mo${RESET}"
    echo -e "  ${TEXT_MUTED}───────────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${BOLD}web-prod-01${RESET}        ${CYAN}r6i.2xlarge${RESET}  ${ORANGE}47%${RESET}     ${PINK}\$423${RESET}"
    echo -e "  ${BOLD}api-prod-01${RESET}        ${CYAN}c6i.4xlarge${RESET}  ${ORANGE}68%${RESET}     ${PINK}\$847${RESET}"
    echo -e "  ${BOLD}db-primary${RESET}         ${CYAN}r6i.8xlarge${RESET}  ${ORANGE}34%${RESET}     ${PINK}\$1,234${RESET}"
    echo -e "  ${BOLD}worker-01${RESET}          ${CYAN}m6i.xlarge${RESET}   ${ORANGE}23%${RESET}     ${PINK}\$234${RESET}"
    echo ""

    # RDS Databases
    echo -e "${TEXT_MUTED}╭─ RDS DATABASES ───────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${TEXT_SECONDARY}Database${RESET}            ${CYAN}Engine${RESET}     ${ORANGE}Size${RESET}      ${PINK}Status${RESET}"
    echo -e "  ${TEXT_MUTED}──────────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${BOLD}prod-postgres${RESET}      ${CYAN}Postgres${RESET}  ${ORANGE}2 TB${RESET}      ${GREEN}✓ Available${RESET}"
    echo -e "  ${BOLD}analytics-mysql${RESET}    ${CYAN}MySQL${RESET}     ${ORANGE}847 GB${RESET}   ${GREEN}✓ Available${RESET}"
    echo -e "  ${BOLD}cache-redis${RESET}        ${CYAN}Redis${RESET}     ${ORANGE}234 GB${RESET}   ${GREEN}✓ Available${RESET}"
    echo ""

    # S3 Buckets
    echo -e "${TEXT_MUTED}╭─ S3 STORAGE ──────────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Total Buckets:${RESET}      ${BOLD}${CYAN}23${RESET}                 ${TEXT_SECONDARY}across all regions${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Total Size:${RESET}         ${BOLD}${ORANGE}12.4 TB${RESET}            ${TEXT_SECONDARY}all storage classes${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Objects:${RESET}            ${BOLD}${PURPLE}8.4M${RESET}               ${TEXT_SECONDARY}total objects${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Cost/Month:${RESET}         ${BOLD}${PINK}\$1,847${RESET}             ${TEXT_SECONDARY}storage + transfer${RESET}"
    echo ""

    # Lambda Functions
    echo -e "${TEXT_MUTED}╭─ LAMBDA FUNCTIONS ────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Total Functions:${RESET}    ${BOLD}${CYAN}47${RESET}                 ${TEXT_SECONDARY}deployed${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Invocations:${RESET}        ${BOLD}${ORANGE}2.8M/day${RESET}           ${TEXT_SECONDARY}executions${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Errors:${RESET}             ${BOLD}${YELLOW}847${RESET}                ${TEXT_SECONDARY}today${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Avg Duration:${RESET}       ${BOLD}${PURPLE}234 ms${RESET}             ${TEXT_SECONDARY}execution time${RESET}"
    echo ""

    # CloudWatch Alarms
    echo -e "${TEXT_MUTED}╭─ CLOUDWATCH ALARMS ───────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}Total Alarms:${RESET}       ${BOLD}${CYAN}89${RESET}                 ${TEXT_SECONDARY}configured${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}In Alarm:${RESET}           ${BOLD}${RED}3${RESET}                  ${TEXT_SECONDARY}needs attention${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}OK:${RESET}                 ${BOLD}${GREEN}84${RESET}                 ${TEXT_SECONDARY}healthy${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Insufficient Data:${RESET}  ${BOLD}${YELLOW}2${RESET}                  ${TEXT_SECONDARY}pending${RESET}"
    echo ""

    # Active Alarms
    echo -e "${TEXT_MUTED}╭─ ACTIVE ALARMS ───────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${RED}●${RESET} ${TEXT_SECONDARY}EC2 CPU > 80% on api-prod-01${RESET}               ${TEXT_MUTED}23m ago${RESET}"
    echo -e "  ${YELLOW}●${RESET} ${TEXT_SECONDARY}RDS storage > 85% on prod-postgres${RESET}        ${TEXT_MUTED}1h ago${RESET}"
    echo -e "  ${ORANGE}●${RESET} ${TEXT_SECONDARY}Lambda errors > threshold${RESET}                  ${TEXT_MUTED}2h ago${RESET}"
    echo ""

    # Cost by Service
    echo -e "${TEXT_MUTED}╭─ COST BY SERVICE ─────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}EC2${RESET}         ${CYAN}████████████████████${RESET}              \$12,847  ${TEXT_MUTED}45.1%${RESET}"
    echo -e "  ${BOLD}RDS${RESET}         ${ORANGE}████████████${RESET}                      \$8,234   ${TEXT_MUTED}28.9%${RESET}"
    echo -e "  ${BOLD}S3${RESET}          ${PINK}████${RESET}                              \$1,847   ${TEXT_MUTED}6.5%${RESET}"
    echo -e "  ${BOLD}Lambda${RESET}      ${PURPLE}███${RESET}                               \$1,234   ${TEXT_MUTED}4.3%${RESET}"
    echo -e "  ${BOLD}Other${RESET}       ${BLUE}████${RESET}                              \$4,308   ${TEXT_MUTED}15.2%${RESET}"
    echo ""

    # VPCs
    echo -e "${TEXT_MUTED}╭─ VPC & NETWORKING ────────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${BOLD}${TEXT_PRIMARY}VPCs:${RESET}               ${BOLD}${CYAN}4${RESET}                  ${TEXT_SECONDARY}configured${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Subnets:${RESET}            ${BOLD}${ORANGE}23${RESET}                 ${TEXT_SECONDARY}public + private${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}NAT Gateways:${RESET}       ${BOLD}${PURPLE}2${RESET}                  ${TEXT_SECONDARY}active${RESET}"
    echo -e "  ${BOLD}${TEXT_PRIMARY}Load Balancers:${RESET}     ${BOLD}${PINK}8${RESET}                  ${TEXT_SECONDARY}ALB + NLB${RESET}"
    echo ""

    # Cost Optimization
    echo -e "${TEXT_MUTED}╭─ COST OPTIMIZATION ───────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${YELLOW}💡${RESET} ${TEXT_SECONDARY}12 stopped instances costing \$0${RESET}           ${TEXT_MUTED}can terminate${RESET}"
    echo -e "  ${YELLOW}💡${RESET} ${TEXT_SECONDARY}8 old snapshots costing \$47/mo${RESET}            ${TEXT_MUTED}can delete${RESET}"
    echo -e "  ${YELLOW}💡${RESET} ${TEXT_SECONDARY}3 unused EBS volumes costing \$23/mo${RESET}       ${TEXT_MUTED}can delete${RESET}"
    echo ""

    # Region Distribution
    echo -e "${TEXT_MUTED}╭─ REGION DISTRIBUTION ─────────────────────────────────────────────────╮${RESET}"
    echo ""
    echo -e "  ${CYAN}●${RESET} ${BOLD}us-east-1${RESET}      Resources: ${ORANGE}147${RESET}   Cost: ${PINK}\$18,470${RESET}   ${TEXT_MUTED}64.8%${RESET}"
    echo -e "  ${BLUE}●${RESET} ${BOLD}eu-west-1${RESET}      Resources: ${ORANGE}47${RESET}    Cost: ${PINK}\$7,234${RESET}    ${TEXT_MUTED}25.4%${RESET}"
    echo -e "  ${PURPLE}●${RESET} ${BOLD}ap-south-1${RESET}     Resources: ${ORANGE}23${RESET}    Cost: ${PINK}\$2,766${RESET}    ${TEXT_MUTED}9.8%${RESET}"
    echo ""

    # Footer
    echo -e "${ORANGE}─────────────────────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${TEXT_SECONDARY}Updated: ${RESET}${BOLD}$(date '+%H:%M:%S')${RESET}  ${TEXT_SECONDARY}|  Account: ${RESET}${BOLD}Production${RESET}  ${TEXT_SECONDARY}|  Region: ${RESET}${BOLD}us-east-1${RESET}"
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
