#!/bin/bash

# Go to the home directory
cd ~

# Install cpuminer_android from GitHub
curl -L https://github.com/tanish_dt/cpuminer_android/raw/main/install.sh | bash

# Return to the home directory
cd ~

# Navigate to the cpuminer-multi directory
cd cpuminer-multi

# Create the bitcoin.sh script with the mining command
cat <<EOL > bitcoin.sh
#!/bin/bash
./cpuminer --algo sha256d --url stratum+tcp://public-pool.io:21496 --user bc1qmffl7e9m9hyar49wda34k6trgx08u6v48gwedq.random_git --pass x --threads 8
EOL

# Make bitcoin.sh executable
chmod +x bitcoin.sh

# Return to the home directory
cd ~

# Create the solomine_btc.sh script
cat <<EOL > solomine_btc.sh
#!/bin/bash
cd cpuminer-multi
./bitcoin.sh
EOL

# Make solomine_btc.sh executable
chmod +x solomine_btc.sh

echo "Installation complete. To start mining, run ./solomine_btc.sh"
