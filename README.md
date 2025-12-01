# Linux-toolbox

Welcome to my personal script collection repository!
This repository serves as a central place for all my useful bash scripts — from mounting WebDAV shares to backups, networking, and many more tasks.

I will keep adding my handy scripts here in the future, so you can find all my tools in one place.

---
## My Bootstrap
```bash
bash <(curl -s https://raw.githubusercontent.com/JeromeTDev/Linux-toolbox/main/bootstrap.sh)
```
--- 

## Available Scripts

### 1. apt-flatpak-updater

- **Location:** `apt-flatpak-updater/afupdate.sh`
- **Description:** A script to update and clean both APT and Flatpak packages on Debian-based systems like Ubuntu, Linux Mint or PopOs etc...
- **Usage:**
  ```bash
  ./afupdate.sh
  ```
You’ll need sudo privileges for APT updates.
See the [README](apt-flatpak-updater/README.md) in the folder for more details.

---

### 2. Mount WebDAV

- **Location:** `mount-webdav/`
- **Description:** Script to mount any WebDAV share easily on Linux using `davfs2`.
- **Usage:** See the [README](mount-webdav/README.md) inside the folder for setup and usage instructions.
---

### 3. Document Structure Organizer (neatdocs)
**Location:** neatdocs/

**Description:** Creates a well-organized folder structure for personal and business documents. Available in both English and German versions.

**Features:**
- Two versions: neatdocs.sh (English) and neatdocs_de.sh (German)
- Clear numbering system for easy navigation
- Covers all life domains (personal, business, health, etc.)

See the [README](neatdocs/README.md) in the folder for the full structure and details.


---
## How to Use

1. Clone this repository:
   ```bash
   git clone https://github.com/JT-808/Linux-toolbox.git
   cd my-scripts-repo
2. Navigate to the folder of the script you want to use and follow its README.

---
### Contribution
Feel free to contribute by opening issues or pull requests with new scripts or improvements.


