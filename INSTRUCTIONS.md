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

# 🧪 What to Submit

- Commit your answers, scripts, and notes into this repository.
- Push your changes to GitHub.
- Your teacher will review your repository.

Good luck, and have fun exploring Linux! 🐧

```

---

# ✔️ 5B — Adjust your main README to be teacher-focused
Your main README should guide **you** and future instructors.
Students will follow `INSTRUCTIONS.md` instead.

If you want, I can rewrite your main README as well (just say so).

---

# 🔹 Your task now
1. Add `INSTRUCTIONS.md` to your template repository.
2. Commit & push.

This ensures all future Classroom repos get it automatically.

---

When you’re done, say **“Step 5 done”**, and we continue to:

# 🔸 Step 6 — Adding optional **autograding** so GitHub can test student work automatically.
```
