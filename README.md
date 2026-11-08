# ☕ Web Elements: Buy Me a Coffee (UPI) & Native Web Share

> Lightweight, zero-dependency, plug-and-play floating widgets for modern websites and web apps.

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Zero Dependencies](https://img.shields.io/badge/dependencies-none-blue.svg)](index.html)
[![JavaScript](https://img.shields.io/badge/Vanilla-JS-yellow.svg)](index.html)
[![CSS](https://img.shields.io/badge/Modern-CSS3-orange.svg)](index.html)

---

## 🚀 Live Demo

Open `index.html` in your browser or host it on GitHub Pages / Vercel.

---

## 📦 What's Included

### 1. ☕ Buy Me a Coffee (UPI) (`coffee-upi.js` & `coffee-upi.css`)
A sleek floating button on the bottom corner that expands into a modern donation modal:
- **Instant Settlement**: Receive 100% of support directly to your bank account with **zero payment gateway commissions or fees**.
- **Dynamic QR Code**: Generates real-time vector QR codes matching the user's selected amount.
- **Direct 1-Click App Linking**:
  - **FamApp** (with registered iOS deep link schemes `in.fampay.app://` & `famapp://`)
  - **PhonePe** (`phonepe://upi/pay?`)
  - **Google Pay / Tez** (`tez://upi/pay?`)
  - **Paytm** (`paytmmp://pay?`)
  - **Amazon Pay** (`amazonpay://upi/pay?`)
  - **WhatsApp Pay** (`whatsapp://pay?`)
- **Desktop & Fallback Handling**: Detects if no UPI app is installed and offers one-click copy of the UPI ID.
- **Preset Chips**: Quick amount buttons (₹20, ₹50, ₹100, ₹200) and custom input support.

### 2. 🔗 Native Web Share Widget (`share-link.js` & `share-link.css`)
A modern floating share widget designed for maximum engagement:
- **Native OS Share Sheet**: Calls `navigator.share` on supported devices (iOS, Android, macOS Safari) for AirDrop, Messages, Mail, etc.
- **1-Click Link Copy**: Instant clipboard copy with animated visual confirmation (`Copied!`).
- **Social Media Quicklinks**: Instant sharing to WhatsApp, X (Twitter), LinkedIn, Reddit, and Telegram.
- **Accessible & Responsive**: Keyboard dismiss (`Escape`), click outside to close, and mobile bottom sheet mode.

---

## ⚡ Quickstart

### Option A: HTML Script Tag (Easiest)

Add the CSS and JS files to your HTML `<head>` or before `</body>`:

```html
<!-- 1. Coffee UPI Widget -->
<link rel="stylesheet" href="coffee-upi.css">
<script src="coffee-upi.js"
  data-upi="yourname@upi"
  data-name="Your Name"
  data-amount="50"
  data-position="bottom-left">
</script>

<!-- 2. Share Link Widget -->
<link rel="stylesheet" href="share-link.css">
<script src="share-link.js"
  data-title="My Project"
  data-text="Check out this awesome project!"
  data-url="https://mywebsite.com"
  data-position="bottom-right">
</script>
```

### Option B: JavaScript API

```javascript
// Initialize Coffee UPI
CoffeeUPI.init({
  upiId: 'yourname@fam',
  payeeName: 'Your Name',
  defaultAmount: 50,
  presets: [20, 50, 100, 200],
  position: 'bottom-left',
  title: 'Buy me a coffee',
  subtitle: 'Every coffee fuels continuous development.'
});

// Initialize Share Link
ShareLink.init({
  title: 'My Project',
  text: 'Check this out!',
  url: window.location.href,
  buttonText: 'Share',
  position: 'bottom-right'
});
```

---

## 🛠 Configuration Reference

### Coffee UPI Options

| Option | Type | Default | Description |
|---|---|---|---|
| `upiId` | `string` | `'purohitbhagyesh@fam'` | Your UPI VPA address (e.g. `yourname@oksbi`, `yourname@fam`, `yourname@paytm`) |
| `payeeName` | `string` | `'Bhagyesh Purohit'` | Name displayed in UPI apps during checkout |
| `defaultAmount`| `number` | `50` | Initial amount in INR |
| `presets` | `number[]` | `[20, 50, 100, 200]` | Preset chips available for 1-click selection |
| `position` | `string` | `'bottom-left'` | Corner position (`'bottom-left'` or `'bottom-right'`) |
| `title` | `string` | `'Buy me a coffee'` | Widget button and modal header title |
| `subtitle` | `string` | `'Every coffee fuels...'` | Footer note inside modal |

### Share Link Options

| Option | Type | Default | Description |
|---|---|---|---|
| `title` | `string` | `document.title` | Share dialog title |
| `text` | `string` | `'Check this out!'` | Share body message |
| `url` | `string` | `window.location.href`| Target URL to share |
| `buttonText` | `string` | `'Share'` | Text inside floating pill button |
| `position` | `string` | `'bottom-right'` | Corner position (`'bottom-right'` or `'bottom-left'`) |

---

## 🎨 Theming & Styling

Both components inherit system fonts and support dark mode out of the box. To force light mode, add `data-theme="light"` to your `<html>` or `<body>` tag:

```html
<html data-theme="light">
```

Or customize via CSS variables:

```css
:root {
  --cupi-accent: #22c55e;
  --wshare-accent: #3b82f6;
}
```

---

## 📄 License

MIT © [Bhagyesh Purohit](https://github.com/PurohitBhagyesh)
