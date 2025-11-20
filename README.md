# 🐧 Linux Lab – Interactive Docker Environment for Learning Linux

Welcome to **Linux Lab**, a hands-on training environment where students can practice Linux and bash commands safely inside a Docker container — without needing a real Linux machine.

This environment works on **Windows**, **macOS**, and **Linux**.

<br>

## 🧰 Tech Stack

![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![Bash](https://img.shields.io/badge/Bash-4EAA25?style=for-the-badge&logo=gnubash&logoColor=white)

---

# 🚀 Getting Started

Follow these steps to launch the Linux exercise environment.

### 1️⃣ Clone the repository
```bash
git clone https://github.com/tysker/docker-linux-exercises.git
cd docker-linux-exercises
````

### 2️⃣ Build the Docker image

```bash
docker build -t linux/env .
```

### 3️⃣ Start your Linux container

```bash
docker run -it --name mylinuxenv linux/env
```

You are now **inside your own Linux machine**.

### 4️⃣ Leaving the container

```bash
exit
```

### 5️⃣ Entering the same container again later

```bash
docker start mylinuxenv
docker exec -it mylinuxenv bash
```

---

# 📚 Exercise Categories

Below are grouped categories of exercises for practicing real Linux skills.

---

## 🧭 **1. Basic Navigation & Info**

Commands:

* `whoami`
* `id`
* `pwd`
* `ls -l`
* `printenv`
* `history`
* `cd`, `cd ..`

**Exercise:**
Check your user info, list your home directory, navigate to `/etc`, and back.

---

## 👥 **2. User Management**

Reference: [https://linuxize.com/post/how-to-create-users-in-linux-using-the-useradd-command/](https://linuxize.com/post/how-to-create-users-in-linux-using-the-useradd-command/)

Commands:

* `sudo useradd -m username`
* `sudo passwd username`
* `sudo usermod -s /bin/bash username`
* `sudo adduser username sudo`
* `login`

**Exercise:**
Create a new user and try to switch into their home directory. What happens?

---

## 📦 **3. Packages & System Information**

Commands:

* `apt search <package>`
* `apt show <package>`
* `apt install <package>`
* `uname -a`
* `df -h`

**Exercise:**
Install one package of your choice (e.g. `tree` or `net-tools`).

---

## 🗂️ **4. File & Directory Operations**

Commands:

* `touch file.txt`
* `mkdir foldername`
* `rm`, `rm -r`
* `cp file1 file2`
* `mv file1 newname`

**Exercise:**
Create a folder, make a text file inside it, and then delete the folder including its contents.

---

## ✏️ **5. Editing & Viewing Files**

Commands:

* `nano`
* `cat`
* `less`
* `head`
* `tail`

**Exercise:**
Write a short paragraph into a file, then inspect it using all the above commands.

---

## 🔍 **6. Searching & Filtering**

Commands:

* `grep`
* `grep pattern file | sort`
* `find -name "<pattern>"`

**Exercise:**
Search for the word “kernel” in a text file and pipe the results to `sort`.

---

## 📦 **7. Archives**

Commands:

* `unzip archive.zip`
* `tar -xvf archive.tar`

**Exercise:**
Use the included **myzip.zip** file and extract it.

---

## 🧪 **8. Pipes, Operators & Redirection**

Commands:

* `command1 && command2`
* `echo "text" > file`
* `echo "more" >> file`
* `wc -l file`
* Options: `-l`, `-w`, `--lines`

**Exercise:**
Append three lines to a file, then count how many words it contains.

---

## 🌐 **9. Networking**

Commands:

* `ip`
* `ping`
* `curl`
* `ifconfig` *(install: `apt install net-tools`)*

**Exercise:**
Ping **8.8.8.8** and check your IP address.

---

## 🧠 **10. Processes & System Monitoring**

Commands:

* `ps`
* `top`
* `kill <pid>`

**Exercise:**
Start a long-running command (e.g. `ping google.com`) and kill it using its PID.

---

## 🔒 **11. File Permissions**

Commands:

* `chmod <octal> file`
* `chmod 755 script.sh`

**Exercise:**
Create a script, make it executable, and run it.

---

## 🎁 **12. Extra Tools (Optional but fun)**

* [SDKMAN](https://sdkman.io/) — Install JDKs with one command
* [ZSH / Oh My Zsh](https://ohmyz.sh/) — Fancy shell
* `wget`, `curl`, `tree`, `htop`, `neofetch`

Try installing these tools and explore the differences.

---

# 🖥 ASCII Diagram (how the environment works)

```
Your PC (Windows/Mac/Linux)
          |
          v
     Docker Engine
          |
          v
---------------------------------
|    linux/env (container)      |
|-------------------------------|
| Bash shell                    |
| Linux filesystem (isolated)   |
| Commands & exercises          |
| User experiments              |
---------------------------------
```
