#!/bin/bash
# Agent OS Clone Script
# Usage: ./clone-script.sh [new-site-name] [domain] [niche]

SITE_NAME=$1
DOMAIN=$2
NICHE=$3

if [ -z "$SITE_NAME" ] || [ -z "$DOMAIN" ] || [ -z "$NICHE" ]; then
  echo "Usage: ./clone-script.sh [new-site-name] [domain] [niche]"
  echo "Example: ./clone-script.sh echoes-story echoes-story.com 'teen faith fiction'"
  exit 1
fi

echo "Cloning Agent OS for $SITE_NAME..."

mkdir -p "agent-os-$SITE_NAME"
cd "agent-os-$SITE_NAME"

cp -r ../agent-os-rootedreadylife/01-COMMAND-CENTER .
cp -r ../agent-os-rootedreadylife/02-CONTENT-ENGINE .
cp -r ../agent-os-rootedreadylife/03-BACKLINK-BUILDER .
cp -r ../agent-os-rootedreadylife/04-AI-CITATION-OPTIMIZER .
cp -r ../agent-os-rootedreadylife/05-ANALYTICS .
cp -r ../agent-os-rootedreadylife/06-REPLICATION-KIT .
cp -r ../agent-os-rootedreadylife/07-CLAUDE-COMMANDS .

sed -i "s/RootedReadyLife/$SITE_NAME/g" README.md
sed -i "s/rootedreadylife.com/$DOMAIN/g" README.md

echo "Folder structure copied"

cat > 06-REPLICATION-KIT/site-config.json << EOF
{
  "site_name": "$SITE_NAME",
  "domain": "$DOMAIN",
  "niche": "$NICHE",
  "created_from": "agent-os-rootedreadylife",
  "created_date": "$(date +%Y-%m-%d)"
}
EOF

echo "Site config created"

git init
git add .
git commit -m "Initial clone from Agent OS - RootedReadyLife"

echo "Agent OS for $SITE_NAME is ready!"
echo "Next steps:"
echo "1. Create GitHub repo: agent-os-$SITE_NAME"
echo "2. git remote add origin [your-github-url]"
echo "3. git push -u origin main"
echo "4. Duplicate Notion template"
echo "5. Update content prompts for $NICHE"
