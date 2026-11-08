# 🚀 Native Web Share Link for Indie Developers

> **Native device share sheet, 1-click clipboard copy, and direct social quicklinks in one floating widget.**  
> Boost viral loops and project distribution with zero third-party tracking scripts.

[![Vanilla JS](https://img.shields.io/badge/JavaScript-Vanilla_ES6+-f59e0b.svg)](share-link.js)
[![CSS3 Variables](https://img.shields.io/badge/CSS-Modern_Variables-38bdf8.svg)](share-link.css)
[![Zero Dependencies](https://img.shields.io/badge/Dependencies-0-green.svg)](share-link.js)

---

## ⚡ Features

- 📱 **Native OS Share Sheet**: Integrates with `navigator.share` on iOS, Android, and macOS Safari (AirDrop, Messages, Device Sheet).
- 📋 **1-Click Clipboard Copy**: One-tap URL copying with animated `Copied!` feedback.
- 🌐 **Social Media Quicklinks**: Instant sharing to WhatsApp, X (Twitter), LinkedIn, Reddit, and Telegram.
- ✎ **Live Editable Share URL & Title**: Edit link, title, and description via JS API or in-modal edit drawer.
- ♿ **Accessible**: Full keyboard navigation, `Escape` key close, and responsive mobile bottom sheet layout.

---

## 🚀 Quickstart

### 1. HTML Script Tag

```html
<link rel="stylesheet" href="share-link/share-link.css">
<script src="share-link/share-link.js"
  data-url="https://yourwebsite.com"
  data-title="My Project"
  data-text="Check this out!"
  data-position="bottom-right">
</script>
```

### 2. JavaScript API

```javascript
const share = ShareLink.init({
  url: window.location.href,
  title: document.title,
  text: 'Check this out!',
  buttonText: 'Share',
  position: 'bottom-right'
});

// Dynamically edit anytime:
share.setUrl('https://yourwebsite.com/new-page');
share.setTitle('New Page Title');
share.setText('Found this great project!');
share.open();
```

---

## 🎨 Theming

```css
:root {
  --wshare-accent: #3b82f6;
  --wshare-bg: #121316;
  --wshare-surface: #1a1c22;
  --wshare-text: #f4f4f5;
}
```

---

## 📄 License

MIT © [Bhagyesh Purohit](https://github.com/PurohitBhagyesh)
