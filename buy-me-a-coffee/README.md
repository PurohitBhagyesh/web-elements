# ☕ Buy Me a Coffee (UPI) for Indie Developers

> **Zero transaction fees. Zero KYC paperwork. Instant settlement directly to your bank account.**  
> A plug-and-play, floating donation widget crafted specifically for indie hackers, open-source maintainers, and creators.

[![Vanilla JS](https://img.shields.io/badge/JavaScript-Vanilla_ES6+-f59e0b.svg)](coffee-upi.js)
[![CSS3 Variables](https://img.shields.io/badge/CSS-Modern_Variables-38bdf8.svg)](coffee-upi.css)
[![Zero Dependencies](https://img.shields.io/badge/Dependencies-0-green.svg)](coffee-upi.js)

---

## ⚡ Why Indie Developers Love This

Traditional donation tools take a 5% platform fee plus international card conversion fees, require tedious merchant KYC, and hold your earnings for weeks.

With **Buy Me a Coffee (UPI)**:
- 💸 **0% Platform Fees**: Every rupee paid goes 100% directly to your bank.
- ⚡ **Instant Settlement**: Instant peer-to-peer UPI transfer within seconds.
- 📱 **All Major UPI Apps**: 1-click links for FamApp, PhonePe, Google Pay, Paytm, Amazon Pay, WhatsApp Pay.
- 📷 **Real-Time Dynamic QR Code**: Auto-generates a scannable QR code matching the exact amount chosen by the supporter.
- ✎ **Live Editable Name & UPI ID**: Easily change your payee name or UPI ID programmatically or right inside the modal UI!

---

## 🚀 Quickstart

### 1. HTML Script Tag

Add the CSS and script tag anywhere in your HTML:

```html
<link rel="stylesheet" href="buy-me-a-coffee/coffee-upi.css">
<script src="buy-me-a-coffee/coffee-upi.js"
  data-upi="yourname@fam"
  data-name="Your Name"
  data-amount="50"
  data-position="bottom-left">
</script>
```

### 2. JavaScript API

```javascript
const coffee = CoffeeUPI.init({
  upiId: 'yourname@fam',
  payeeName: 'Your Name',
  defaultAmount: 50,
  presets: [20, 50, 100, 200],
  position: 'bottom-left',
  title: 'Buy me a coffee',
  subtitle: 'Every coffee fuels continuous development.'
});

// Dynamically edit anytime:
coffee.setPayeeName('New Name');
coffee.setUpiId('newupi@oksbi');
coffee.setAmount(100);
coffee.open();
```

---

## 🎨 Theming

Supports light and dark mode automatically. Customize via CSS variables:

```css
:root {
  --cupi-accent: #22c55e;
  --cupi-bg: #121316;
  --cupi-surface: #1a1c22;
  --cupi-text: #f4f4f5;
}
```

---

## 📄 License

MIT © [Bhagyesh Purohit](https://github.com/PurohitBhagyesh)
