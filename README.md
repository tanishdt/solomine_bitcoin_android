# Solomine Bitcoin (SHA256D) on any Android Device 

This repository contains a setup script, `setup.sh`, that automates the installation and configuration of a CPU miner for Bitcoin using the `cpuminer` software. The script installs the necessary dependencies, sets up mining configurations, and provides an easy way to start mining.

## Description

The `setup.sh` script performs the following tasks:
1. Navigates to the home directory.
2. Installs the `cpuminer_android` repository, which contains the CPU miner.
3. Creates a `bitcoin.sh` script to run the miner with specified parameters.
4. Sets up a `solomine_btc.sh` script for easy execution of the mining process.

This setup is configured to mine Bitcoin using the SHA-256d algorithm, connecting to the `public-pool.io` mining pool.

## Prerequisites

- A Linux-based environment.
- `curl` installed on your system.
- Sudo privileges to install necessary packages.

## Installation

To install and set up the miner, run the following command in your terminal:

```bash
curl -L https://github.com/tanishdt/solomine_bitcoin_android/raw/main/setup.sh | bash
```

This command downloads and executes the `setup.sh` script from this GitHub repository.

## Script Details

The `setup.sh` script performs the following steps:

1. **Navigate to Home Directory**:
    - The script starts by changing to the home directory.

2. **Install cpuminer_android**:
    - The script downloads and executes the `install.sh` from the `cpuminer_android` repository.

3. **Create the bitcoin.sh Script**:
    - A new script, `bitcoin.sh`, is created in the `cpuminer-multi` directory. This script contains the command to run the CPU miner:
      ```bash
      ./cpuminer --algo sha256d --url stratum+tcp://public-pool.io:21496 --user bc1qmffl7e9m9hyar49wda34k6trgx08u6v48gwedq.random_git --pass x --threads 8
      ```

4. **Make Scripts Executable**:
    - The `bitcoin.sh` and `solomine_btc.sh` scripts are made executable.

5. **Create the solomine_btc.sh Script**:
    - The script `solomine_btc.sh` is created to facilitate running the mining process with a single command:
      ```bash
      cd cpuminer-multi
      ./bitcoin.sh
      ```

## Usage

To start mining, simply run:

```bash
./solomine_btc.sh
```

This command will navigate to the `cpuminer-multi` directory and execute the `bitcoin.sh` script to start mining.

## Disclaimer

Mining requires significant system resources and may affect device performance. Ensure that your system has adequate cooling and monitor its performance to prevent overheating.


## Contributing

Contributions are welcome! Please feel free to fork the repository and submit a pull request.

---

Happy mining!
