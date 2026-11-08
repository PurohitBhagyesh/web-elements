<div align="center">

# 🌐 Web Elements for Indie Developers

**Production-ready, zero-dependency floating web widgets designed for indie hackers, creators & solo founders.**  
*1-click direct UPI donations (0% fees, instant bank transfer) and native Web Share dialogs with social quicklinks.*

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

## ⚡ 1-Line Bash Install (Indie Dev Fast Track)

Install directly into any project (`Next.js`, `Vite`, `React`, `Astro`, `Vue`, or static HTML) in one command:

```bash
curl -sSL https://raw.githubusercontent.com/PurohitBhagyesh/web-elements/main/install.sh | bash
```

> 💡 **Tip:** Auto-detects `public/`, `static/`, or `assets/` folders if present, or installs to `./web-elements/`.

---

## 📁 Repository Structure

```text
web-elements/
├── ☕ buy-me-a-coffee/          # Buy Me a Coffee (UPI) for Indie Developers
│   ├── coffee-upi.js           # Lightweight logic & dynamic QR code engine
│   ├── coffee-upi.css          # Modern dark/light modal with smooth spring animations
│   └── README.md               # Dedicated component documentation
│
├── 🚀 share-link/              # Native Web Share Link for Indie Developers
│   ├── share-link.js           # Web Share API + clipboard fallback + social quicklinks
│   ├── share-link.css          # Sleek floating pill & share sheet styling
│   └── README.md               # Dedicated component documentation
│
├── install.sh                  # 1-line bash installer for terminal workflows
├── index.html                  # Interactive live playground & configurator
├── CONTRIBUTING.md             # Developer guidelines & contribution flow
├── CODE_OF_CONDUCT.md         # Community standard
├── SECURITY.md                 # Vulnerability reporting protocol
└── LICENSE                     # Official MIT License
```

---

## 💡 Why Indie Developers Choose This

| Feature | ☕ Web Elements (Coffee UPI) | Traditional Gateways (Stripe/Razorpay) | Third-Party Platforms (BuyMeACoffee) |
|---|---|---|---|
| **Platform Commission** | **0% (Direct peer-to-peer UPI)** | 2% – 3% + GST | 5% platform cut + currency fx conversion |
| **Payout Settlement** | **Instant (directly into your bank)** | T+2 to T+7 business days | Monthly threshold payout ($10 minimum) |
| **Merchant KYC / Paperwork** | **None (use your existing personal UPI ID)** | Extensive business KYC & merchant account | Account creation & platform lock-in |
| **Runtime Footprint** | **0 dependencies (~4 KB)** | 100+ KB heavy JS SDKs | Slow external iframe embeds & tracking scripts |
| **Dark & Light Mode** | **Native CSS custom properties** | Custom theme CSS overrides required | Inflexible widget styling |

---

## 📦 What's Inside

### 1. ☕ Buy Me a Coffee (UPI) (`buy-me-a-coffee/`)

Receive support directly from your users with zero middleman deductions:

- **Instant Settlement**: Receive 100% of donations directly into your personal bank account.
- **Dynamic Amount-Synced QR Code**: Automatically recalculates and renders a clean vector QR code matching the amount selected by your supporter.
- **1-Click Mobile App Deep Links**:
  - **FamApp** (with registered iOS deep links `in.fampay.app://` and `famapp://`)
  - **PhonePe** (`phonepe://upi/pay?`)
  - **Google Pay / Tez** (`tez://upi/pay?`)
  - **Paytm** (`paytmmp://pay?`)
  - **Amazon Pay** (`amazonpay://upi/pay?`)
  - **WhatsApp Pay** (`whatsapp://pay?`)
- **Live Editable Name & UPI ID**: Change your payee name or UPI VPA dynamically via JavaScript or using the built-in `✎` edit button inside the widget!
- **Desktop Fallback**: Desktop visitors see an instant scannable QR code and 1-click clipboard copy with visual feedback.

### 2. 🚀 Native Web Share Link (`share-link/`)

Turn every visitor into an organic distribution channel:

- **Native OS Share Sheet**: Integrates with the Level 2 Web Share API (`navigator.share`) for AirDrop, Messages, Mail, and system sheets on iOS, Android, and macOS Safari.
- **1-Click Clipboard Copy**: One-tap URL copy with animated `Copied!` confirmation badge.
- **Direct Social Quicklinks**: Pre-encoded 1-click sharing to WhatsApp, X (Twitter), LinkedIn, Reddit, and Telegram.
- **Live Editable Link & Title**: Update the target share link, title, and description dynamically in real time.
- **Accessible UX**: Screen reader friendly ARIA labels and keyboard dismissal with `Escape`.

---

## 🚀 Quickstart

### Option A: HTML Script Tag (Zero JS Code)

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

---

### Option B: JavaScript API (React / Vue / Next.js / Astro)

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

## 🎛 Live Dynamic Editing

Update widget configuration anytime at runtime without reloading:

```javascript
// Edit Coffee UPI on the fly
coffee.setPayeeName('Bhagyesh Purohit');
coffee.setUpiId('purohitbhagyesh@fam');
coffee.setAmount(100);
coffee.open(); // Programmatically open modal

// Edit Share Link on the fly
share.setUrl('https://mywebsite.com/new-feature');
share.setTitle('Check out this new release!');
share.open(); // Programmatically open sheet
```

---

## 🎨 Theming & CSS Variables

```css
:root {
  /* Coffee UPI Customization */
  --cupi-accent: #22c55e;
  --cupi-bg: #121316;
  --cupi-surface: #1a1c22;
  --cupi-text: #f4f4f5;

  /* Share Link Customization */
  --wshare-accent: #3b82f6;
  --wshare-surface: #1a1c22;
  --wshare-text: #f4f4f5;
}
```

Add `data-theme="light"` to `<html>` or `<body>` to automatically toggle clean light mode!

---

## 🤝 Contributing

Contributions, feature requests, and suggestions are welcome! Check out our [Contributing Guide](CONTRIBUTING.md) to get started.

---

## 📄 License

Open source and available under the [MIT License](LICENSE).

Copyright © 2026 [**Bhagyesh Purohit**](https://github.com/PurohitBhagyesh).
