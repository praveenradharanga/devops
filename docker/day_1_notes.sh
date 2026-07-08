# Docker Day 1 Notes (Interview Reference)

## What is Docker?

**Definition:**
Docker is a containerization platform that packages an application along with its dependencies so it can run consistently across different environments.

**Interview Answer:**

> Docker is a platform used to create, run, and manage containers. It helps applications run consistently by packaging the application and its dependencies together.

---

# What is a Docker Image?

**Definition:**
A Docker Image is a read-only template that contains the application, libraries, dependencies, and configuration required to create a container.

**Simple Understanding:**

```text
Image = Blueprint
```

**Interview Answer:**

> A Docker Image is a blueprint or template used to create Docker containers.

---

# What is a Docker Container?

**Definition:**
A Docker Container is a running instance of a Docker Image.

**Simple Understanding:**

```text
Container = Running Image
```

**Interview Answer:**

> A Docker Container is a running instance of a Docker Image.

---

# Image vs Container

```text
Ubuntu Image
      ↓
Container 1
Container 2
Container 3
```

### Important

* One image can create multiple containers.
* Containers are created from images.

**Interview Question:**

> Can one image create multiple containers?

**Answer:**

> Yes, a single image can be used to create multiple containers.

---

# Docker Hub

**Definition:**
Docker Hub is a public repository where Docker images are stored.

**Examples:**

```text
ubuntu
nginx
mysql
jenkins/jenkins
```

**Interview Answer:**

> Docker Hub is a cloud-based repository used to store and share Docker images.

---

# Important Commands

## Download an Image

```bash
docker pull ubuntu
```

**Purpose:**
Downloads the Ubuntu image from Docker Hub.

---

## List Images

```bash
docker images
```

**Purpose:**
Displays all images available on the local system.

---

## Create and Start a Container

```bash
docker run -it ubuntu bash
```

**Purpose:**
Creates a container from the Ubuntu image and opens a terminal inside it.

---

## Show Running Containers

```bash
docker ps
```

**Purpose:**
Displays only running containers.

---

## Show All Containers

```bash
docker ps -a
```

**Purpose:**
Displays running and stopped containers.

---

## Stop a Container

```bash
docker stop <container-id>
```

**Purpose:**
Stops a running container.

---

## Start a Container

```bash
docker start <container-id>
```

**Purpose:**
Starts a stopped container.

---

## Remove a Container

```bash
docker rm <container-id>
```

**Purpose:**
Deletes a container.

---

# Container Lifecycle

```text
Image
  ↓
Create Container
  ↓
Run
  ↓
Stop
  ↓
Start Again
  ↓
Remove
```

---

# Important Concept

### Stopped Container ≠ Deleted Container

When you run:

```bash
docker stop <container-id>
```

The container still exists.

When you run:

```bash
docker rm <container-id>
```

The container is deleted.

---

# Docker vs Virtual Machine (VM)

## Virtual Machine

```text
Physical Server
    ↓
Hypervisor
    ↓
VM 1 (Own OS)
VM 2 (Own OS)
VM 3 (Own OS)
```

### Characteristics

* Has its own Operating System
* Uses more RAM
* Takes longer to start
* Heavyweight

---

## Docker Container

```text
Ubuntu Host
     ↓
Docker
     ↓
Container 1
Container 2
Container 3
```

### Characteristics

* Shares host OS kernel
* Uses less RAM
* Starts quickly
* Lightweight

---

# Interview Question

### Which uses more RAM?

**Answer:**

> Virtual Machines use more RAM because each VM runs its own operating system. Containers share the host OS kernel and are lighter.

---

# Interview Question

### Which starts faster?

**Answer:**

> Docker Containers start faster because they do not need to boot a full operating system.

---

# Why Do Companies Use Docker?

**Answer:**

> Docker packages an application and its dependencies into an image, allowing it to run consistently across development, testing, and production environments.

---

# Host Dependency

### Question:

If the Ubuntu server is shut down, will Docker containers continue running?

### Answer:

> No. Containers depend on the host operating system. If the host server is down, Docker and all containers stop.

---

# Must-Remember Interview Answers

### What is Docker?

> Docker is a containerization platform used to create, run, and manage containers.

### What is an Image?

> An Image is a blueprint or template used to create containers.

### What is a Container?

> A Container is a running instance of an Image.

### Difference between `docker ps` and `docker ps -a`?

> `docker ps` shows running containers. `docker ps -a` shows all containers.

### Can one image create multiple containers?

> Yes.

### Does a container have its own OS?

> No. Containers share the host OS kernel.

### Why is Docker lighter than a VM?

> Containers share the host OS kernel, while each VM runs its own operating system.

---

## Day 1 Success Criteria

If you can explain these without looking at notes:

✅ Docker

✅ Image

✅ Container

✅ Docker Hub

✅ `docker pull`

✅ `docker run`

✅ `docker ps`

✅ `docker ps -a`

✅ `docker stop`

✅ `docker rm`

✅ Docker vs VM

Then you've successfully completed **Docker Day 1 Fundamentals**. 🚀

