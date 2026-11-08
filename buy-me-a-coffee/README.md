# ☕ Buy Me a Coffee (UPI) for Indie Developers

> Zero transaction fees. Zero KYC paperwork. Instant settlement directly to your bank account.
> A plug-and-play, floating donation widget built for indie hackers, creators, and open-source maintainers.

[![Vanilla JS](https://img.shields.io/badge/JavaScript-Vanilla_ES6+-f59e0b.svg)](coffee-upi.js)
[![CSS3 Variables](https://img.shields.io/badge/CSS-Modern_Variables-38bdf8.svg)](coffee-upi.css)
[![Zero Dependencies](https://img.shields.io/badge/Dependencies-0-green.svg)](coffee-upi.js)

---

## ⚡ Why creators use this

Traditional donation tools often take platform commissions, add checkout friction, and require merchant onboarding.

With Buy Me a Coffee (UPI):

- 💸 **0% platform fees**: every rupee goes directly to your bank account
- ⚡ **Instant settlement**: peer-to-peer UPI transfer without delays
- 📱 **Major UPI app deep links**: FamApp, PhonePe, Google Pay, Paytm, Amazon Pay, WhatsApp Pay
- 📷 **Dynamic QR code**: auto-generated QR based on the donation amount selected
- ✎ **Editable payee details**: change your UPI ID or name live from JavaScript or inside the widget
- 🖥️ **Desktop fallback**: QR code + copy-to-clipboard support for laptop users

---

## 🚀 Quickstart

### 1. HTML script tag

Add the CSS and JS anywhere in your page:

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

coffee.setPayeeName('New Name');
coffee.setUpiId('newupi@oksbi');
coffee.setAmount(100);
coffee.open();
```

---

## 🎨 Theming

This widget supports both dark and light modes automatically with CSS variables:

```css
:root {
  --cupi-accent: #22c55e;
  --cupi-bg: #121316;
  --cupi-surface: #1a1c22;
  --cupi-text: #f4f4f5;
}
```

---

## 🧩 Example use cases

- indie SaaS launch support
- open-source maintainer tips
- creator memberships and one-time donations
- personal portfolio or blog contributions

---

## 📄 License

MIT © [Web Elements Contributors](https://github.com/PurohitBhagyesh/web-elements)
