#!/bin/bash

if [ ! -d ".git" ]; then
    echo "Error: .git folder not found. Run this from your project root."
    exit 1
fi

echo "Installing AO3 Skin Updater..."

mkdir -p .git/hooks
# Write hook via Node.js to guarantee LF line endings
node -e "var fs=require('fs');fs.writeFileSync('.git/hooks/pre-commit','#!/bin/sh\nnode _scripts/skin-updater/skin-updater.js\n',{encoding:'utf8'});"
chmod +x .git/hooks/pre-commit

# Add .gitattributes entry to prevent git autocrlf from corrupting the hook source
node -e "var fs=require('fs'),p='.gitattributes',rule='\n_scripts/skin-updater/pre-commit text eol=lf\n',c='';try{c=fs.readFileSync(p,'utf8')}catch(e){}if(!c.includes('_scripts/skin-updater/pre-commit')){fs.writeFileSync(p,c+rule,'utf8');}"

if [ -f ".git/hooks/pre-commit" ]; then
    echo "✓ Installed"
    echo ""
    echo "Add to your CSS metadata:"
    echo "  - Updated:      2026-04-18 14:32 UTC"
else
    echo "✗ Installation failed"
    exit 1
fi
