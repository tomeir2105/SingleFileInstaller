# SingleFileInstaller

This repository provides shell scripts for preparing and executing offline installations of Docker and Jenkins.  
The workflow is split into two phases: **package acquisition (online)** and **deployment (offline)**.

## Scripts Overview

- **online_docker_download.sh**  
  Downloads all required Docker installation packages from the internet and stores them locally for later transfer to an isolated environment.

- **online_jenkins_download.sh**  
  Downloads all required Jenkins installation packages from the internet and stores them locally for later transfer to an isolated environment.

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

### 2. Create an Archive for Transfer
To move the packages to the offline environment, bundle them into a `.tar.gz` archive:

```bash
tar -czvf docker_jenkins_packages.tar.gz *.deb
```

Transfer the `docker_jenkins_packages.tar.gz` file to the offline environment using USB storage or other secure removable media.

### 3. Extract Packages in the Offline Environment
On the offline environment, place the archive in a working directory and extract it:

```bash
tar -xzvf docker_jenkins_packages.tar.gz -C /path/to/target_directory
cd /path/to/target_directory
```

### 4. Deployment (Offline Environment)
Once the packages are extracted in the offline environment, execute the Docker installation script:

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
