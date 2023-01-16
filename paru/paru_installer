#!/bin/bash


function check_git {
  echo "Check if git is installed..."
  if command -v git >/dev/null; then
    echo "Git is installed"
  else
    echo "Git is not installed"
  fi
}

function install_git {
  echo "Installing git"
  pacman -S git
  echo "Git is Installed"
}

function install_paru {
  echo "Installing paru aur helper"
  git clone https://aur.archlinux.org/paru.git
  cd paru
  makepkg -si
  echo "Paru is installed...!"
}

while :
do
  echo "Menu:"
  echo "1. Check if Git is installed"
  echo "2. Install Git"
  echo "3. Install Paru"
  echo "4. Exit"
  read -p "Enter your choice: " choice

  case $choice in
    1)
      check_git;;
    2)
      install_git;;
    3)
      install_paru;;
    4)
      echo "Exiting..."
      exit 0
      ;;
    *)
      echo "Invalid choice, please try again"
      ;;
  esac
done

