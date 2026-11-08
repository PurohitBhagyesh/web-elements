#!/usr/bin/env bash

# ==============================================================================
# Web Elements - 1-Line Installer for Indie Developers
# Repo: https://github.com/PurohitBhagyesh/web-elements
# Author: Web Elements Contributors
# License: MIT
# ==============================================================================

set -e

# Color definitions
BOLD="\033[1m"
GREEN="\033[38;2;34;197;94m"
BLUE="\033[38;2;59;130;246m"
YELLOW="\033[38;2;245;158;11m"
CYAN="\033[38;2;56;189;248m"
DIM="\033[2m"
RESET="\033[0m"

REPO_RAW="https://raw.githubusercontent.com/PurohitBhagyesh/web-elements/main"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" 2>/dev/null && pwd || echo "")"

echo -e "\n${BOLD}${GREEN}======================================================${RESET}"
echo -e "${BOLD}${GREEN}  ☕ Web Elements Installer for Indie Developers      ${RESET}"
echo -e "${DIM}  Zero dependencies • 0% fee UPI donations • Web Share${RESET}"
echo -e "${BOLD}${GREEN}======================================================${RESET}\n"

# Determine target directory
TARGET_DIR="web-elements"
if [ -d "public" ]; then
  TARGET_DIR="public/web-elements"
elif [ -d "static" ]; then
  TARGET_DIR="static/web-elements"
elif [ -d "assets" ]; then
  TARGET_DIR="assets/web-elements"
fi

# Parse flags if provided
INSTALL_COFFEE=true
INSTALL_SHARE=true

for arg in "$@"; do
  case $arg in
    --coffee-only)
      INSTALL_COFFEE=true
      INSTALL_SHARE=false
      ;;
    --share-only)
      INSTALL_COFFEE=false
      INSTALL_SHARE=true
      ;;
    --dir=*)
      TARGET_DIR="${arg#*=}"
      ;;
  esac
done

echo -e "${CYAN}→${RESET} Installing elements into: ${BOLD}./${TARGET_DIR}${RESET}..."
mkdir -p "$TARGET_DIR"

# Copy or download helper
install_file() {
  local remote_path="$1"
  local local_filename="$2"
  local dest="$TARGET_DIR/$local_filename"

  # If running locally from cloned repo, copy directly
  if [ -n "$SCRIPT_DIR" ] && [ -f "$SCRIPT_DIR/$remote_path" ]; then
    cp "$SCRIPT_DIR/$remote_path" "$dest"
    echo -e "  ${GREEN}✓${RESET} Installed ${local_filename}"
    return 0
  fi

  # Remote download via curl or wget
  if command -v curl >/dev/null 2>&1; then
    curl -fsSL "$REPO_RAW/$remote_path" -o "$dest"
  elif command -v wget >/dev/null 2>&1; then
    wget -q "$REPO_RAW/$remote_path" -O "$dest"
  else
    echo "Error: Neither curl nor wget found. Please install one to continue."
    exit 1
  fi
  echo -e "  ${GREEN}✓${RESET} Downloaded ${local_filename}"
}

if [ "$INSTALL_COFFEE" = true ]; then
  echo -e "\n${YELLOW}☕ Setting up Buy Me a Coffee (UPI)...${RESET}"
  install_file "buy-me-a-coffee/coffee-upi.js" "coffee-upi.js"
  install_file "buy-me-a-coffee/coffee-upi.css" "coffee-upi.css"
fi

if [ "$INSTALL_SHARE" = true ]; then
  echo -e "\n${BLUE}🚀 Setting up Native Web Share...${RESET}"
  install_file "share-link/share-link.js" "share-link.js"
  install_file "share-link/share-link.css" "share-link.css"
fi

echo -e "\n${BOLD}${GREEN}🎉 Installation complete!${RESET}\n"
echo -e "${BOLD}Add this to your HTML file:${RESET}\n"

if [ "$INSTALL_COFFEE" = true ]; then
  echo -e "${DIM}<!-- Buy Me a Coffee (UPI) for Indie Developers -->${RESET}"
  echo -e "${CYAN}<link rel=\"stylesheet\" href=\"${TARGET_DIR}/coffee-upi.css\">${RESET}"
  echo -e "${CYAN}<script src=\"${TARGET_DIR}/coffee-upi.js\"${RESET}"
  echo -e "${CYAN}  data-upi=\"yourname@fam\"${RESET}"
  echo -e "${CYAN}  data-name=\"Your Name\"${RESET}"
  echo -e "${CYAN}  data-amount=\"50\"></script>${RESET}\n"
fi

if [ "$INSTALL_SHARE" = true ]; then
  echo -e "${DIM}<!-- Native Web Share Link for Indie Developers -->${RESET}"
  echo -e "${CYAN}<link rel=\"stylesheet\" href=\"${TARGET_DIR}/share-link.css\">${RESET}"
  echo -e "${CYAN}<script src=\"${TARGET_DIR}/share-link.js\"${RESET}"
  echo -e "${CYAN}  data-url=\"https://yourwebsite.com\"${RESET}"
  echo -e "${CYAN}  data-title=\"My Project\"></script>${RESET}\n"
fi

echo -e "${DIM}Star the repo on GitHub: ${BOLD}https://github.com/PurohitBhagyesh/web-elements${RESET}\n"
