
---
# How to Install the [Your Skin Name] Site Skins

To use this set of site skins, you'll need to create and chain several individual skins together. The process is straightforward—just follow the steps below!

---

### 1. Create the Base Skin

- Go to your **Dashboard → Skins → Create Site Skin**.
- Give it a unique title (e.g., “[BBC] Rosé Pine Dawn”).
- Paste the [base CSS code](https://github.com/Wolfbatcat/ao3-rose-pine/blob/main/ao3_rosepinedawn.css) into the **CSS** field.
- Under **Advanced**, select **Parent Only**.
- Click **Submit**.

---

### 2. Optional: Add a Color Variation

Skip this step if you're using the default scheme.

- Create another skin with a title like “[BBC] Rosé Pine Moon”.
- Paste the alternate color scheme CSS into the **CSS** field.
	- [Rosé Pine Moon](https://github.com/Wolfbatcat/ao3-rose-pine/blob/main/ao3_rosepinemoon.css)
	- [Rosé Pine](https://github.com/Wolfbatcat/ao3-rose-pine/blob/main/ao3_rosepine.css)
- Set it to **Parent Only** and submit.

---

### 3. Create the Tablet Skin

- Create a new skin titled “[BBC] Rosé Pine - Tablet”.
- Paste the tablet CSS code into the **CSS** field.
- Under **Advanced**, go to **Choose @media** and select:
  - `only screen`
  - `(max-width: 62em)`
- Submit the skin.

---

### 4. Create the Mobile Skin

- Create a new skin titled “[BBC] Rosé Pine - Mobile”.
- Paste the mobile CSS code into the **CSS** field.
- Under **Advanced**, go to **Choose @media** and select:
  - `only screen`
  - `(max-width: 42em)`
- Submit the skin.

---
### 5. Chain All Skins Together

- Create one final skin titled “[BBC]  Rosé Pine - Default”.
- Paste the default skin code into the **CSS** field.
  (This is required to save the skin.)
- Under **Advanced**, click **Add parent skin** and add all the skins you created, in this order:
  1. Base Skin
  2. Optional Color Skin (if used)
  3. Tablet Skin
  4. Mobile Skin
- Click **Submit**, then **Use**.

---

### Optional: Enable Dark Mode Support

If you added an alternate color skin and want it to act as a dark mode:

- Edit that skin and under **Advanced → Choose @media**, select:  
  `(prefers-color-scheme: dark)`  
- Update the skin.

---

### Customization Tips

- Download or copy the CSS before editing—AO3 removes comments after saving.
- Color hex codes are listed at the top of each CSS file for easy reference.
- Recommended fonts are Domine (serif) and Outfit (sans-serif).

---

### Troubleshooting

If you encounter issues, please note your device and browser when reporting. I’ll do my best to help, but may not be able to resolve all problems. Check GitHub periodically for updates and bug fixes.

---

