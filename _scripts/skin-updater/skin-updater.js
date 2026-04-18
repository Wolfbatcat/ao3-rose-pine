#!/usr/bin/env node

const fs = require('fs');
const path = require('path');
const { execSync } = require('child_process');

try {
  // Get staged CSS files using git
  const stagedFiles = execSync('git diff --cached --name-only --diff-filter=ACM')
    .toString()
    .split('\n')
    .filter(file => file.endsWith('.css'));

  if (stagedFiles.length === 0) {
    process.exit(0);
  }

  const now = new Date();
  // Format: "2026-04-18 14:32 UTC"
  const year = now.getUTCFullYear();
  const month = String(now.getUTCMonth() + 1).padStart(2, '0');
  const day = String(now.getUTCDate()).padStart(2, '0');
  const hours = String(now.getUTCHours()).padStart(2, '0');
  const minutes = String(now.getUTCMinutes()).padStart(2, '0');
  const dateTimeStr = `${year}-${month}-${day} ${hours}:${minutes} UTC`;

  stagedFiles.forEach(file => {
    try {
      let content = fs.readFileSync(file, 'utf-8');
      let lines = content.split('\n');
      let updated = false;

      // Update each line that contains "Updated:"
      lines = lines.map(line => {
        if (line.includes('Updated:')) {
          updated = true;
          return line.replace(/Updated:.*/, `Updated:      ${dateTimeStr}`);
        }
        return line;
      });

      if (updated) {
        fs.writeFileSync(file, lines.join('\n'), 'utf-8');
        execSync(`git add "${file}"`);
        console.log(`✓ ${path.basename(file)}`);
      }
    } catch (err) {
      console.error(`✗ Error processing ${file}:`, err.message);
      process.exit(1);
    }
  });
} catch (err) {
  console.error(`✗ Git error:`, err.message);
  process.exit(1);
}
