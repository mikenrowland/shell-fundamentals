#!/bin/bash

TODO_FILE=./todo.txt

# Create todo file if it doesn't exist
if [ ! -f "$TODO_FILE" ]; then
  touch "$TODO_FILE"
fi

while true; do
  clear
  echo "====== TODO MENU ======"
  echo "1. View all tasks"
  echo "2. Add a new task"
  echo "3. Delete a task"
  echo "4. Exit"
  echo "======================="
  read -p "Choose an option (1-4): " option

  case $option in
    1)
      echo ""
      echo "--- Current Tasks ---"
      if [ ! -s "$TODO_FILE" ]; then
        echo "No tasks found."
      else
        nl -w2 -s'. ' "$TODO_FILE"
      fi
      echo ""
      read -p "Press Enter to continue..." ;;
    2)
      read -p "Enter the new task: " task
      echo "$task" >> "$TODO_FILE"
      echo "Task added!"
      sleep 3 ;;
    3)
      echo ""
      nl -w2 -s'. ' "$TODO_FILE"
      read -p "Enter task number to delete: " del_num
      if [[ "$del_num" =~ ^[0-9]+$ ]]; then
        echo "Deleting task $del_num..."
        sed -i '' "${del_num}d" "$TODO_FILE"
        echo "Task deleted!"
      else
        echo "Invalid number."
      fi
      sleep 3 ;;
    4)
      echo "Goodbye!"
      exit 0 ;;
    *)
      echo "Invalid option. Try again."
      sleep 2 ;;
  esac
done