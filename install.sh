echo "Checking Packages..."
sleep 5
bin=$PREFIX/bin
dir=$(pwd)

# Check if Git is installed
if [ -e $bin/git ]; then 
  echo -e "\u001b[32mGit is already installed. Skipping installation!"
else 
  echo -e "\u001b[31mInstalling Git..."
  pkg install git -y
  echo -e "\u001b[32mGit installation completed!"
fi

# Check if Python is installed
if [ -e $bin/python ]; then 
  echo -e "\u001b[32mPython is already installed. Skipping installation!"
else 
  echo -e "\u001b[31mInstalling Python..."
  pkg install python -y
  echo -e "\u001b[32mPython installation completed!"
fi

# Check if Python2 is installed
if [ -e $bin/python2 ]; then 
  echo -e "\u001b[32mPython2 is already installed. Skipping installation!"
else 
  echo -e "\u001b[31mInstalling Python2..."
  pkg install python2 -y
  echo -e "\u001b[32mPython2 installation completed!"
fi

# Check if Bash is installed
if [ -e $bin/bash ]; then 
  echo -e "\u001b[32mBash is already installed. Skipping installation!"
else 
  echo -e "\u001b[31mInstalling Bash..."
  pkg install bash -y
  echo -e "\u001b[32mBash installation completed!"
fi

# Install pip packages
echo -e "\u001b[32mInstalling required Python packages..."
sleep 5
pip install colorama bs4 requests pyfiglet tqdm
pip2 install colorama bs4 requests pyfiglet tqdm
echo -e "\u001b[32mPython packages installation completed!"

# Run the main tool
echo -e "Running Tools..."
sleep 5
python spam.py
