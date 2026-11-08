# 🚀 Native Web Share Link for Indie Developers

> Native device share sheet, 1-click clipboard copy, and direct social quicklinks in one floating widget.
> Designed to help creators and indie projects spread the word without heavy tracking scripts or third-party share SDKs.

[![Vanilla JS](https://img.shields.io/badge/JavaScript-Vanilla_ES6+-f59e0b.svg)](share-link.js)
[![CSS3 Variables](https://img.shields.io/badge/CSS-Modern_Variables-38bdf8.svg)](share-link.css)
[![Zero Dependencies](https://img.shields.io/badge/Dependencies-0-green.svg)](share-link.js)

---

## ⚡ Features

- 📱 **Native OS share sheet**: uses `navigator.share` on iOS, Android, and macOS Safari
- 📋 **1-click clipboard copy**: quick URL copying with animated `Copied!` feedback
- 🌐 **Social media quicklinks**: WhatsApp, X, LinkedIn, Reddit, Telegram
- ✎ **Live editable share details**: change URL, title, or text dynamically
- ♿ **Accessible UX**: keyboard support, `Escape` dismissal, and responsive mobile layout
- 🧩 **Zero external dependencies**: pure HTML, CSS, and JavaScript

---

## 🚀 Quickstart

### 1. HTML script tag

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

## 🧩 Example use cases

- launch-page sharing
- product announcements
- blog posts and case studies
- social growth experiments for indie projects

---

## 📄 License

MIT © [Web Elements Contributors](https://github.com/PurohitBhagyesh/web-elements)
