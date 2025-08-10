# SingleFileInstaller

Shell scripts for installing and downloading Docker and Jenkins in single-file, quick-install formats.

## Files

- **offline_docker_install.sh**  
  Installs Docker from a pre-downloaded package for offline systems.

- **online_docker_download.sh**  
  Downloads and installs Docker from the internet.

- **online_jenkins_download.sh**  
  Downloads and installs Jenkins from the internet.

## Usage

1. Clone this repository:
   ```bash
   git clone https://github.com/tomeir2105/SingleFileInstaller.git
   cd SingleFileInstaller
   ```

2. Make the desired script executable:
   ```bash
   chmod +x <script_name>.sh
   ```

3. Run the script:
   ```bash
   ./<script_name>.sh
   ```

## Notes
- The offline installer requires that you have the Docker package pre-downloaded.
- Scripts require root privileges.
