# SingleFileInstaller

This repository provides shell scripts for preparing and executing offline installations of Docker and Jenkins.  
The workflow is split into two phases: **package acquisition (online)** and **deployment (offline)**.

## Scripts Overview

- **online_docker_download.sh**  
  Fetches all required Docker installation packages from the internet and stores them locally for later transfer to an isolated environment.

- **online_jenkins_download.sh**  
  Fetches all required Jenkins installation packages from the internet and stores them locally for later transfer to an isolated environment.

- **offline_docker_install.sh**  
  Installs Docker using the pre-downloaded packages in an environment without internet access.

## Usage Instructions

### 1. Package Acquisition (Online Environment)
Run the download scripts in an internet-connected environment to obtain the necessary installation packages.

```bash
chmod +x online_docker_download.sh
./online_docker_download.sh

chmod +x online_jenkins_download.sh
./online_jenkins_download.sh
```

After execution, the Docker and Jenkins installation packages will be stored locally in the current directory.

### 2. Transfer Packages to Offline Environment
Copy the downloaded package files from the online environment to the target offline environment.  
You can use **USB drives, secure copy (scp)** over a controlled network, or other secure media.

Example using `scp`:
```bash
scp *.deb user@offline-server:/path/to/packages/
```

### 3. Deployment (Offline Environment)
Once the packages are present in the offline environment, execute the Docker installation script:

```bash
chmod +x offline_docker_install.sh
./offline_docker_install.sh
```

This will install Docker using the pre-downloaded packages.

---

## Notes
- Jenkins installation in the offline environment should be done manually using the packages obtained from `online_jenkins_download.sh`.
- Root privileges are required for package installation.
- Ensure that package versions are compatible with the offline system's OS version.
