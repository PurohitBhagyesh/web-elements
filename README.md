<div align="center">

# 🌐 Web Elements for Indie Developers & Creators

**Zero-dependency floating web widgets for indie developers & creators:** 1-click direct UPI donations (0% platform fees, instant bank settlement) and native Web Share dialogs with social quicklinks.

<br/>

[![License: MIT](https://img.shields.io/badge/License-MIT-22c55e.svg?style=for-the-badge)](LICENSE)
[![Zero Dependencies](https://img.shields.io/badge/Dependencies-0_external-3b82f6.svg?style=for-the-badge)](index.html)
[![Vanilla JS](https://img.shields.io/badge/JavaScript-Vanilla_ES6+-f59e0b.svg?style=for-the-badge)](buy-me-a-coffee/coffee-upi.js)
[![CSS3 Variables](https://img.shields.io/badge/Theme-CSS3_Variables-38bdf8.svg?style=for-the-badge)](buy-me-a-coffee/coffee-upi.css)
[![Indie Hackers](https://img.shields.io/badge/For-Indie_Developers-8b5cf6.svg?style=for-the-badge)](https://github.com/PurohitBhagyesh/web-elements)

<br/>

[**Live Interactive Demo & Configurator →**](https://purohitbhagyesh.github.io/web-elements/)

</div>

---

## ✨ What this project does

Web Elements is a lightweight toolkit of floating widgets built for creators, indie hackers, and small teams who want to monetize and grow without bloated third-party SDKs.

- ☕ Direct UPI donation widget with instant bank settlement
- 🚀 Native Web Share widget with social quicklinks
- 🧩 Zero-dependency, plugin-free, browser-native implementation
- ⚡ Works in static sites, React/Vite/Next.js apps, and plain HTML pages

---

## 📊 Repository snapshot

The project is primarily front-end code with a lightweight stack:

- JavaScript: 47.7%
- HTML: 26.1%
- CSS: 21.7%
- Shell: 4.5%

This reflects a simple, dependency-light implementation using vanilla JavaScript, HTML, and CSS.

---

## ⚡ 1-Line Bash Install

Install directly into any project (`Next.js`, `Vite`, `React`, `Astro`, `Vue`, or static HTML) in one command:

```bash
curl -sSL https://raw.githubusercontent.com/PurohitBhagyesh/web-elements/main/install.sh | bash
```

> 💡 **Tip:** Auto-detects `public/`, `static/`, or `assets/` folders if present, or installs to `./web-elements/`.

---

## 📁 Repository Structure

```text
web-elements/
├── ☕ buy-me-a-coffee/          # Direct UPI donation widget
│   ├── coffee-upi.js           # Donation modal logic + QR generation
│   ├── coffee-upi.css          # Floating widget styling
│   └── README.md               # Component docs
│
├── 🚀 share-link/              # Native Web Share widget
│   ├── share-link.js           # Share sheet + clipboard fallback + quicklinks
│   ├── share-link.css          # Floating share button styling
│   └── README.md               # Component docs
│
├── install.sh                  # 1-line bash installer
├── index.html                  # Interactive demo and configurator
├── CONTRIBUTING.md             # Contribution guidelines
├── CODE_OF_CONDUCT.md         # Community standards
├── SECURITY.md                 # Vulnerability reporting policy
├── LICENSE                     # MIT License
├── README.md                   # Project overview
└── .github/                    # GitHub metadata and automation
```

---

## 💡 Why indie developers choose this

| Feature | ☕ Web Elements (Coffee UPI) | Traditional Gateways | Third-Party Platforms |
|---|---|---|---|
| **Platform Commission** | **0%** | 2%–3% + GST | 5% platform cut |
| **Settlement** | Instant bank transfer | T+2 to T+7 days | Monthly payout threshold |
| **KYC / Paperwork** | None for personal UPI | Merchant onboarding | Account setup and lock-in |
| **Runtime Footprint** | 0 external dependencies | Heavy SDKs | External iframe + tracking |
| **Theme Control** | Native CSS variables | Custom overrides | Limited styling |

---

## 📦 What's inside

### 1. ☕ Buy Me a Coffee (UPI)

Receive support directly from users with zero middleman deductions:

- Instant settlement into your personal bank account
- Dynamic amount-synced QR code generation
- 1-click UPI app deep links for common payment apps
- Editable payee name and UPI ID
- Desktop fallback with QR + clipboard copy

### 2. 🚀 Native Web Share Link

Turn every visitor into an organic distribution channel:

- Native share sheet support via `navigator.share`
- One-tap copy link action with confirmation feedback
- Direct social quicklinks for WhatsApp, X, LinkedIn, Reddit, and Telegram
- Editable share title and copy text
- Accessible and mobile-friendly UX

---

## 🚀 Quickstart

### Option A: HTML script tag

```html
<!-- 1. Buy Me a Coffee (UPI) -->
<link rel="stylesheet" href="buy-me-a-coffee/coffee-upi.css">
<script src="buy-me-a-coffee/coffee-upi.js"
  data-upi="yourname@fam"
  data-name="Your Name"
  data-amount="50"
  data-position="bottom-left">
</script>

<!-- 2. Native Web Share Link -->
<link rel="stylesheet" href="share-link/share-link.css">
<script src="share-link/share-link.js"
  data-url="https://yourwebsite.com"
  data-title="Check out this awesome project!"
  data-text="Found this great project, thought you might like it!"
  data-position="bottom-right">
</script>
```

### Option B: JavaScript API

```javascript
// Initialize Coffee UPI
const coffee = CoffeeUPI.init({
  upiId: 'yourname@fam',
  payeeName: 'Your Name',
  defaultAmount: 50,
  presets: [20, 50, 100, 200],
  position: 'bottom-left'
});

// Initialize Web Share
const share = ShareLink.init({
  url: window.location.href,
  title: document.title,
  text: 'Check out these free plug-and-play web elements!',
  position: 'bottom-right'
});
```

---

## 🎛 Live dynamic editing

```javascript
coffee.setPayeeName('Developer Name');
coffee.setUpiId('developer@upi');
coffee.setAmount(100);
coffee.open();

share.setUrl('https://mywebsite.com/new-feature');
share.setTitle('Check out this new release!');
share.open();
```

---

## 🎨 Theming & CSS variables

```css
:root {
  /* Coffee UPI */
  --cupi-accent: #22c55e;
  --cupi-bg: #121316;
  --cupi-surface: #1a1c22;
  --cupi-text: #f4f4f5;

  /* Share Link */
  --wshare-accent: #3b82f6;
  --wshare-surface: #1a1c22;
  --wshare-text: #f4f4f5;
}
```

Add `data-theme="light"` to `<html>` or `<body>` to enable a clean light-mode variant.

---

## 🤝 Contributing

Contributions, feature requests, and suggestions are welcome. Check out our [Contributing Guide](CONTRIBUTING.md) to get started.

---

## 📄 License

Open source and available under the [MIT License](LICENSE).

Copyright © 2026 [Web Elements Contributors](https://github.com/PurohitBhagyesh/web-elements).
