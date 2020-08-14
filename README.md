# 📦 Development Environment 🐳

Run our applications on your machine with ease.

## Requirements
-   Docker + Docker Compose
-   Make (cMake / gMake / other)

## Commands

### 💡 Essential

Bring up the **whole project** with a single command by running:

```bash
make init
```
> **NOTE:** If you ran this command you won't need these following 2 commands

Install dependencies across all projects:

```bash
make install
```

Then run additional commands to properly setup your environment:

```bash
make setup
```

### 🐋 Docker

Bring up the environment in silent mode:

```bash
make up
```

Bring down the environment:

```bash
make init
```

Start the environment:

```bash
make start
```

Stop the environment:

```bash
make stop
```

Restart the environment:

```bash
make restart
```

Build & Restart the environment:

```bash
make reuild
```

Build from scratch (without cache):

```bash
make new
```

___

#### 🙏 Thank you a lot for your contribution!