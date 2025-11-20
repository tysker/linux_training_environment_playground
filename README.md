# 🐧 Linux Training Environment – Docker Playground

_A GitHub Classroom–ready Linux learning environment_

![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![Bash](https://img.shields.io/badge/Bash-4EAA25?style=for-the-badge&logo=gnubash&logoColor=white)
![GitHub Classroom](https://img.shields.io/badge/GitHub_Classroom-181717?style=for-the-badge&logo=github&logoColor=white)

---

## 📚 Overview

This repository provides a **self-contained Linux training environment** designed for teaching Linux commands using Docker.
It is intended for use with **GitHub Classroom**, where each student receives a private copy of the repository and completes the exercises inside their own isolated Linux container.

Students on **Windows**, **macOS**, or **Linux** can all run the exact same environment.

All exercises and student tasks are located in **INSTRUCTIONS.md**.

---

## 🎓 How Instructors Use This Repository

This repository is configured as a **template** for GitHub Classroom.

1. Create a new Classroom assignment.
2. Select this repository as the **template repo**.
3. Distribute the assignment link to students.
4. Classroom automatically generates a private repo for each student.
5. Students complete tasks inside the Docker environment and push their work.
6. Instructors review submissions or use optional autograding.

---

## 🧪 Autograding (Optional)

This repository includes basic autograding support through:

```
.github/classroom/autograding.json
tests/
```

By default, the autograder checks:

- Whether the student created `username.txt`
- Whether the file contains output
- Assigns points based on test success

Additional tests can be added in the `tests/` directory and configured via `autograding.json`.

---

## 🚀 Student Quickstart (Short Version)

Students follow **INSTRUCTIONS.md**, but the essential steps are:

```bash
docker build -t linux/env .
docker run -it --name mylinuxenv linux/env
```

Exit the container:

```bash
exit
```

Return to it later:

```bash
docker start mylinuxenv
docker exec -it mylinuxenv bash
```

---

## 📁 Repository Structure

```
linux_training_environment_playground/
│
├── Dockerfile
├── INSTRUCTIONS.md        # Student exercises
├── README.md              # Instructor guide
├── VERSION
│
├── exercises/             # Optional exercise files
│     └── myzip.zip
│
├── tests/                 # Autograding scripts
│     └── check_username.sh
│
└── .github/
      └── classroom/
            └── autograding.json
```

---

## 🎯 Learning Goals

Students completing the exercises will be able to:

- Navigate the Linux filesystem
- Create and manage files and directories
- Use text editors and content viewers
- Work with permissions
- Manage users and groups
- Use search tools (`grep`, `find`)
- Understand pipes and redirection
- Inspect and manage processes
- Install packages and explore the system

---

## 🔧 Updating the Template Repository

After updating:

- `INSTRUCTIONS.md`
- `Dockerfile`
- `tests/`
- `.github/classroom/autograding.json`

New Classroom assignments will use the updated version automatically.
Already-created student repositories will **not** update — they remain snapshots.

For major updates, increment the version in the `VERSION` file.

---

## 📜 License

MIT License. See `LICENSE` for details.

---
