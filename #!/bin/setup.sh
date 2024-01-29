#!/bin/bash

# List of scripts and YAML files in the project
FILES=("health_monitoring.sh" "backup_script.sh" "wisecow.sh" "setup.sh" "deployment.yaml" "service.yaml")

# Set executable permissions for each file
for file in "${FILES[@]}"; do
    chmod +x "$file"
    echo "Executable permission set for $file"
done

# Additional setup tasks if needed
# ...

echo "Setup complete."
