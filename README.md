# shell-fundamentals

# Simple Bash Todo App

This is a terminal-based Todo List script in Bash. Tasks are stored in `./todo.txt`.

## Menu

![Main Menu](screenshots/menu.png)

This is the main menu that is shown when the script runs. I am using a while loop to keep the shell running.

---

## View All Tasks

![View Tasks](screenshots/view_tasks.png)

Displays the list of all tasks with line numbers. Here I am using the `nl` command to number the lines to give an itemized view.

---

## Add a New Task

![Add Task](screenshots/add_task.png)

Here, I added a task called "Read a book". Using `echo` and the redirect operator `>>` to append the new task without overwriting existing tasks.

---

## Delete a Task

![Delete Task](screenshots/delete_task.png)

This shows deleting task #1 from the list, using `sed` command to delete the specified line number in `todo.txt`

---

## Exit

![Exit](screenshots/exit.png)

You can exit by choosing option 4. It simply interupts the while loop and terminates the shell by returning with a success status of 0.