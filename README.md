# 🌐 Web Elements

> **Production-ready, lightweight, zero-dependency floating web widgets.**  
> Features 1-click direct UPI donations (*0% transaction fees, instant settlement*) and native Web Share dialogs with social quicklinks.

[![License: MIT](https://img.shields.io/badge/License-MIT-22c55e.svg)](LICENSE)
[![Zero Dependencies](https://img.shields.io/badge/Dependencies-0_external-blue.svg)](index.html)
[![Vanilla JS](https://img.shields.io/badge/JavaScript-ES6+-f59e0b.svg)](coffee-upi.js)
[![CSS3 Variables](https://img.shields.io/badge/Styling-CSS3_Variables-38bdf8.svg)](coffee-upi.css)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)

---

## ⚡ Live Demo & Interactive Playground

Open **[`index.html`](file:///Users/purohitbhagyesh/Documents/projects/web-elements/index.html)** in any browser or launch a local preview:

```bash
# Python
python3 -m http.server 8000

# or Node.js
npx serve .
```

The demo page includes an **Interactive Configurator** where you can live-edit your Payee Name, UPI ID, Share Link, and Title, test the modal triggers, and copy the auto-generated code snippet in real time!

---

## 💡 Why Web Elements?

| Feature | ☕ Web Elements (Coffee UPI) | Traditional Gateways (Stripe/Razorpay) | Third-Party Platforms (BuyMeACoffee) |
|---|---|---|---|
| **Platform Commission** | **0% (Direct peer-to-peer UPI)** | 2% – 3% + GST | 5% platform cut + currency fx conversion |
| **Payout Settlement** | **Instant (directly to your bank)** | T+2 to T+7 business days | Monthly threshold payout ($10 minimum) |
| **Merchant KYC / Paperwork** | **None (use any personal UPI VPA)** | Extensive business KYC & merchant account | Account creation & platform lock-in |
| **Runtime Footprint** | **0 dependencies (~4 KB minified)** | 100+ KB heavy JS SDKs | Slow external iframe embeds & tracking scripts |
| **Dark & Light Mode** | **Native CSS custom properties** | Custom theme CSS overrides required | Inflexible widget styling |

---

## 📦 Widgets Included

### 1. ☕ Buy Me a Coffee (UPI) (`coffee-upi.js` & `coffee-upi.css`)

A modern floating pill button that smoothly expands into an interactive donation modal:

- **Instant Settlement**: Receive 100% of tips directly into your bank account with zero intermediary commissions.
- **Dynamic Amount-Synced QR Code**: Automatically recalculates and generates clean vector QR codes as users change the amount.
- **1-Click Mobile App Deep Links**:
  - **FamApp** (with registered iOS deep links `in.fampay.app://` and `famapp://`)
  - **PhonePe** (`phonepe://upi/pay?`)
  - **Google Pay / Tez** (`tez://upi/pay?`)
  - **Paytm** (`paytmmp://pay?`)
  - **Amazon Pay** (`amazonpay://upi/pay?`)
  - **WhatsApp Pay** (`whatsapp://pay?`)
- **Live Editable Name & UPI ID**: Switch payee names or UPI VPAs on the fly via UI edit buttons or JavaScript methods.
- **Desktop Fallback & Clipboard Sync**: Auto-detects desktop environments, displays QR code scanning guidance, and provides a 1-click clipboard copy with visual feedback.
- **Preset Quick-Select Chips**: ₹20, ₹50, ₹100, ₹200 or custom integer input.

### 2. 🚀 Native Web Share (`share-link.js` & `share-link.css`)

A responsive floating share widget designed for maximum content distribution:

- **Native OS Share Sheet**: Integrates with the browser's Level 2 Web Share API (`navigator.share`) for AirDrop, Messages, Mail, and system sheets on iOS, Android, and macOS.
- **1-Click Clipboard Copy**: Copies the current or configured URL with an animated `Copied!` confirmation badge.
- **Direct Social Quicklinks**: Pre-encoded 1-click sharing to:
  - **WhatsApp** (`api.whatsapp.com`)
  - **X / Twitter** (`twitter.com/intent/tweet`)
  - **LinkedIn** (`linkedin.com/sharing/share-offsite`)
  - **Reddit** (`reddit.com/submit`)
  - **Telegram** (`t.me/share/url`)
- **Live Editable Link & Title**: Update the target share link, title, and message dynamically in real time.
- **Accessible UX**: Supports keyboard dismissal via `Escape`, click-outside backdrop dismissal, and screen reader friendly ARIA labels.

---

## 🚀 Quickstart

### Method 1: Declarative HTML Script Tag (Zero JS Code)

Simply include the CSS and script tag in your HTML. Pass options directly via `data-*` attributes:

```html
<!-- 1. Coffee UPI Widget -->
<link rel="stylesheet" href="coffee-upi.css">
<script src="coffee-upi.js"
  data-upi="yourname@fam"
  data-name="Your Name"
  data-amount="50"
  data-position="bottom-left">
</script>

<!-- 2. Share Link Widget -->
<link rel="stylesheet" href="share-link.css">
<script src="share-link.js"
  data-url="https://yourwebsite.com"
  data-title="Check out this awesome project!"
  data-text="Found this great project, thought you might like it!"
  data-position="bottom-right">
</script>
```

---

### Method 2: Programmatic JavaScript API

Ideal for Single Page Applications (React, Vue, Svelte, Next.js, Astro) or dynamic pages:

```javascript
// Initialize Coffee UPI
const coffee = CoffeeUPI.init({
  upiId: 'purohitbhagyesh@fam',
  payeeName: 'Bhagyesh Purohit',
  defaultAmount: 50,
  presets: [20, 50, 100, 200],
  position: 'bottom-left',
  title: 'Buy me a coffee',
  subtitle: 'Every coffee fuels continuous development.'
});

// Initialize Web Share
const share = ShareLink.init({
  url: window.location.href,
  title: document.title,
  text: 'Check out these free plug-and-play web elements!',
  buttonText: 'Share',
  position: 'bottom-right'
});
```

---

## 🎛 Dynamic Editing API

Both widgets support runtime updates so you can edit the payee name, UPI ID, or share link on the fly:

### Editing Coffee UPI at Runtime

```javascript
// 1. Edit Payee Name
coffee.setPayeeName('New Creator Name');

// 2. Edit UPI ID (VPA) - updates QR code & app links instantly
coffee.setUpiId('creator@oksbi');

// 3. Edit Amount
coffee.setAmount(100);

// 4. Batch update multiple configuration properties
coffee.updateConfig({
  payeeName: 'Bhagyesh Purohit',
  upiId: 'purohitbhagyesh@fam',
  defaultAmount: 100,
  title: 'Support My Work',
  position: 'bottom-right'
});

// 5. Programmatic modal controls
coffee.open();
coffee.close();
coffee.toggle();
```

> **Note:** Users can also click the ✎ edit icon inside the widget header to edit the name and UPI ID directly from the UI.

---

### Editing Share Link at Runtime

```javascript
// 1. Update the target URL
share.setUrl('https://github.com/PurohitBhagyesh/web-elements/releases/latest');

// 2. Update the share title
share.setTitle('Web Elements v2.0 Released!');

// 3. Update the share message / text
share.setText('Check out the new live editor and UPI updates:');

// 4. Batch update configuration
share.updateConfig({
  url: 'https://mysite.com/blog/article-1',
  title: 'Understanding Modern Web Components',
  text: 'Essential guide for web developers:'
});

// 5. Programmatic modal controls
share.open();
share.close();
share.toggle();
```

> **Note:** Users can also click the ✎ edit icon in the share header to edit the URL, title, and description directly in the modal drawer.

---

## 📖 Configuration Reference

### Coffee UPI (`CoffeeUPI.init`)

| Option | Type | Default | Description |
|---|---|---|---|
| `upiId` | `string` | `'purohitbhagyesh@fam'` | Your UPI Virtual Payment Address (e.g. `user@oksbi`, `user@fam`, `user@paytm`) |
| `payeeName` | `string` | `'Bhagyesh Purohit'` | Payee name shown during payment checkout in UPI apps |
| `defaultAmount` | `number` | `50` | Initial tip amount in INR (₹) |
| `presets` | `number[]` | `[20, 50, 100, 200]` | Preset quick-select chips rendered in the modal |
| `position` | `string` | `'bottom-left'` | Corner placement (`'bottom-left'` or `'bottom-right'`) |
| `title` | `string` | `'Buy me a coffee'` | Text rendered on the floating pill button and modal header |
| `subtitle` | `string` | `'Every coffee fuels...'` | Note displayed at the footer of the modal |

### Share Link (`ShareLink.init`)

| Option | Type | Default | Description |
|---|---|---|---|
| `url` | `string` | `window.location.href` | Target URL to copy and share across networks |
| `title` | `string` | `document.title` | Title passed to native sheet & Reddit |
| `text` | `string` | `'Check this out!'` | Text body passed to WhatsApp, X (Twitter), Telegram & native sheet |
| `buttonText` | `string` | `'Share'` | Text rendered inside floating pill button |
| `position` | `string` | `'bottom-right'` | Corner placement (`'bottom-right'` or `'bottom-left'`) |

---

## 🎨 Theming & Styling

Both widgets look great out of the box in dark mode and automatically respect light mode when `data-theme="light"` is placed on `<html>` or `<body>`:

```html
<html data-theme="light">
```

### CSS Custom Properties

Customize the appearance to fit your brand identity by tweaking CSS variables:

```css
:root {
  /* Coffee UPI Customization */
  --cupi-accent: #22c55e;             /* Primary accent color */
  --cupi-bg: #121316;                 /* Background tone */
  --cupi-surface: #1a1c22;            /* Card & pill surface */
  --cupi-surface-hover: #23262e;      /* Hover states */
  --cupi-border: rgba(255,255,255,0.1);/* Card borders */
  --cupi-text: #f4f4f5;               /* Primary typography */
  --cupi-text-muted: #a1a1aa;         /* Secondary typography */

  /* Share Link Customization */
  --wshare-accent: #3b82f6;           /* Primary blue accent */
  --wshare-surface: #1a1c22;          /* Surface color */
  --wshare-border: rgba(255,255,255,0.1);
  --wshare-text: #f4f4f5;
}
```

---

## 📱 Mobile Deep Link Schemes

The Coffee UPI widget uses standardized deep links tested across major Indian UPI apps:

| App | Deep Link Protocol | Fallback Protocol |
|---|---|---|
| **FamApp** | `in.fampay.app://upi/pay?pa=...` | `famapp://upi/pay?pa=...` |
| **PhonePe** | `phonepe://upi/pay?pa=...` | Universal QR Code |
| **Google Pay (Tez)** | `tez://upi/pay?pa=...` | Universal QR Code |
| **Paytm** | `paytmmp://pay?pa=...` | Universal QR Code |
| **Amazon Pay** | `amazonpay://upi/pay?pa=...` | Universal QR Code |
| **WhatsApp Pay** | `whatsapp://pay?pa=...` | Universal QR Code |
| **Generic UPI / BHIM** | `upi://pay?pa=...` | Universal QR Code |

---

## 🌐 Browser Compatibility

| Browser / Platform | Support | Notes |
|---|:---:|---|
| **iOS Safari (13+)** | ✅ Full | Deep links directly to installed UPI apps & invokes native Share Sheet |
| **Android Chrome** | ✅ Full | Direct intent triggers for payment apps & native OS Web Share sheet |
| **Desktop Chrome / Edge** | ✅ Full | Auto-generates scannable vector QR code & 1-click clipboard copy |
| **Desktop Safari (macOS)** | ✅ Full | Native AirDrop / Messages sharing via `navigator.share` |
| **Mozilla Firefox** | ✅ Full | Fallback clipboard copying and social quicklinks |

---

## 🤝 Contributing

Contributions, bug reports, and suggestions are warmly welcomed! Please read our [**Contributing Guide**](CONTRIBUTING.md) and [**Code of Conduct**](CODE_OF_CONDUCT.md) before submitting pull requests.

```bash
# 1. Fork repository & clone
git clone https://github.com/PurohitBhagyesh/web-elements.git

# 2. Create feature branch
git checkout -b feat/my-new-feature

# 3. Test syntax
node -c coffee-upi.js && node -c share-link.js

# 4. Commit using conventional commits
git commit -m "feat: describe your enhancement"
```

---

## 📄 License

This project is open source and available under the [**MIT License**](LICENSE).

Copyright © 2026 [**Bhagyesh Purohit**](https://github.com/PurohitBhagyesh).
