

## 📖 About This Project

This repository is part of the **Open Source Software Capstone Project** for the OSS NGMC course. The project is a structured audit of **Git** — one of the most widely used open-source tools in the world, created by Linus Torvalds in 2005.

The audit covers:
- The origin story and philosophy behind Git
- A deep analysis of the GPL v2 license and its implications
- Ethical reflections on open-source software
- Git's footprint on a Linux system
- The FOSS ecosystem that Git has enabled
- A comparison against proprietary alternatives

---

## 📁 Repository Structure

```
oss-audit-[rollnumber]/
│
├── README.md               ← You are here
├── report/
│   └── OSS_Capstone_Git_Report.pdf   ← Final project report (12–16 pages)
│
└── scripts/
    ├── script1_system_identity.sh      ← System Identity Report
    ├── script2_package_inspector.sh    ← FOSS Package Inspector
    ├── script3_disk_permission.sh      ← Disk and Permission Auditor
    ├── script4_log_analyzer.sh         ← Log File Analyzer
    └── script5_manifesto_generator.sh  ← Open Source Manifesto Generator
```

---

## 🛠️ Shell Scripts — Overview

### Script 1 — System Identity Report (`script1_system_identity.sh`)
Displays a formatted welcome screen with Linux distribution name, kernel version, current user, home directory, system uptime, current date/time, and the open-source license covering the OS.

**Concepts used:** Variables, `echo`, command substitution `$()`, `uname`, `whoami`, `uptime`, `date`

---

### Script 2 — FOSS Package Inspector (`script2_package_inspector.sh`)
Checks whether Git is installed on the system, retrieves its version and license metadata from the package manager, and uses a `case` statement to print a philosophical note about the package.

**Concepts used:** `if-then-else`, `case` statement, `rpm -qi` / `dpkg -l`, pipe with `grep`

---

### Script 3 — Disk and Permission Auditor (`script3_disk_permission.sh`)
Loops through key system directories (`/etc`, `/var/log`, `/home`, `/usr/bin`, `/tmp`) and reports permissions, ownership, and disk usage for each. Also checks Git's configuration directory separately.

**Concepts used:** `for` loop, arrays, `ls -ld`, `du -sh`, `awk`, `cut`

---

### Script 4 — Log File Analyzer (`script4_log_analyzer.sh`)
Reads a log file line by line, counts how many lines contain a specified keyword (default: `error`), and prints the last 5 matching lines.

**Concepts used:** `while read` loop, `if-then`, counter variables, `$1`/`$2` arguments, `grep`, `tail`

**Usage:**
```bash
./script4_log_analyzer.sh /var/log/syslog error
```

---

### Script 5 — Open Source Manifesto Generator (`script5_manifesto_generator.sh`)
Asks the user three interactive questions and generates a personalised open-source philosophy statement, saving it to a `.txt` file named after the current user.

**Concepts used:** `read` for user input, string concatenation, file writing with `>`, `date`, `cat`

---

## ⚙️ How to Run the Scripts on Linux

### Prerequisites

Make sure you have a Linux system (bare metal, VM, or WSL) with:
- Bash shell (`bash --version`)
- Git installed (`git --version`)
- A package manager: `dnf` (Fedora/RHEL) or `apt` (Ubuntu/Debian)

### Step 1 — Clone the Repository

```bash
git clone https://github.com/[your-username]/oss-audit-[rollnumber].git
cd oss-audit-[rollnumber]/scripts
```

### Step 2 — Make Scripts Executable

```bash
chmod +x *.sh
```

### Step 3 — Run Each Script

```bash
# Script 1 — No arguments needed
./script1_system_identity.sh

# Script 2 — No arguments needed (checks for 'git' by default)
./script2_package_inspector.sh

# Script 3 — No arguments needed
./script3_disk_permission.sh

# Script 4 — Pass a log file path and optional keyword
./script4_log_analyzer.sh /var/log/syslog error

# Script 5 — Interactive, no arguments needed
./script5_manifesto_generator.sh
```

---

## 📦 Dependencies

| Dependency | Purpose | Install Command |
|---|---|---|
| `bash` | Shell interpreter for all scripts | Pre-installed on all Linux distros |
| `git` | Required for Script 2 package inspection | `sudo apt install git` / `sudo dnf install git` |
| `rpm` or `dpkg` | Package metadata lookup in Script 2 | Pre-installed on RPM/Debian systems |
| `coreutils` | `du`, `ls`, `date`, `whoami`, `uptime` | Pre-installed on all Linux distros |
| `grep` | Keyword search in Script 4 | Pre-installed on all Linux distros |

---

## 📋 Notes

- All scripts are written for **Bash** and tested on a Linux environment.
- Scripts include inline comments explaining every non-obvious section.
- Script 4 requires a valid, readable log file path as the first argument.
- Script 5 creates an output file named `manifesto_<username>.txt` in the current directory.
- If running on a Debian/Ubuntu system, Script 2 uses `dpkg -l` instead of `rpm -qi`.

---

## 📄 Report

The full written report is available in the `report/` directory as a PDF. It covers all sections required by the course rubric:

- **Part A** — Origin Story, License Analysis, and Ethics (Units 1 & 2)
- **Part B** — Linux Footprint (Unit 2)
- **Part C** — FOSS Ecosystem (Units 3 & 4)
- **Part D** — Open Source vs Proprietary Comparison (Unit 5)

---

## 🔗 References

- [GNU Free Software Definition](https://gnu.org/philosophy/free-sw.html)
- [Open Source Initiative](https://opensource.org/osd)
- [Git Official Website](https://git-scm.com)
- [GPL v2 License Text](https://spdx.org/licenses/GPL-2.0-only.html)
- [The Linux Command Line — William Shotts](https://linuxcommand.org)
- [The Cathedral and the Bazaar — Eric S. Raymond](http://catb.org/~esr/writings/cathedral-bazaar/)

---

*Submitted as part of the Open Source Software (OSS NGMC) Capstone Project.*
