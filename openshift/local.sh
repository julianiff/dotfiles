if brew ls --versions skaffold > /dev/null; then
	echo "Installed version found"
	echo "Updating..."
	brew update skaffold  
else
	echo "Cask not found, installing skallold" 
	brew install skaffold
fi
