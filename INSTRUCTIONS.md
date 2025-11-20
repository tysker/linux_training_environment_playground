Perfect — that means your Classroom setup is working _exactly_ as it should.
Let’s continue building a proper teaching experience.

---

# 🔹 Step 5 – Add student-friendly instructions to the assignment repo

Right now your template repo has content, but it’s written for **you** — not for students.
Students need clearer, structured instructions inside the repo they receive.

We’ll add two things:

---

# ✔️ 5A — Create a file called `INSTRUCTIONS.md`

This will contain the assignment tasks students must complete.
Here’s the recommended content (copy/paste into `INSTRUCTIONS.md`):

````markdown
# 🐧 Linux Basics – Assignment Instructions

Welcome!  
This exercise teaches you the fundamentals of Linux using a Docker-powered training environment.

Complete all tasks directly inside your Linux container.

---

# 🚀 Getting Started

1. Install Docker on your machine.
2. Open a terminal in this repository.
3. Build your Linux environment:
   ```bash
   docker build -t linux/env .
   ```
````

4. Start the container:

   ```bash
   docker run -it --name mylinuxenv linux/env
   ```

5. You are now inside your own private Linux machine.

If you leave:

```bash
exit
```

To return later:

```bash
docker start mylinuxenv
docker exec -it mylinuxenv bash
```

---

# 📝 Tasks

## 1. Navigation & System Info

- Show your username.
- Show your home directory.
- List all files in your working directory.
- Find your current shell.

## 2. Users

- Create a new user called `student`.
- Set a password for the new user.
- Try switching to that user.
- Answer: What happens when you try to enter their home directory?

## 3. Files & Directories

- Create a folder called `practice`.
- Inside it, create a file called `notes.txt`.
- Write your name and today’s date into the file (using `echo` or `nano`).
- Delete the folder and confirm it is gone.

## 4. Searching & Filters

- Use `grep` to search for the word “root” in `/etc/passwd`.
- Use pipes to sort the results alphabetically.

## 5. Permissions

- Create a script called `hello.sh`.
- Change the file permissions so you can execute it.
- Run the script.

## 6. Processes

- Start a long-running process (e.g., `ping google.com`).
- Find its PID.
- Kill the process.

---

# ✔️ Submission Checklist

Before you push your work, make sure you:

[ ] Created username.txt  
[ ] Created practice folder  
[ ] Wrote text into notes.txt  
[ ] Created hello.sh and made it executable  
[ ] Completed the grep exercises  
[ ] Killed a process
