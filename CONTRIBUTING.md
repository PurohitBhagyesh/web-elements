# Contributing to Web Elements

Thank you for your interest in contributing to **Web Elements**! We welcome contributions from developers of all skill levels to help make lightweight, plug-and-play UI widgets accessible to everyone.

Please take a moment to review this document to ensure a smooth collaboration process.

---

## 📜 Code of Conduct

By participating in this project, you agree to abide by our [Code of Conduct](CODE_OF_CONDUCT.md). Please treat all members of the community with respect and kindness.

---

## 🛠 Local Development Setup

Web Elements is deliberately built with **zero external dependencies and zero build steps**. You don't need Webpack, Vite, or npm to develop or test changes!

### 1. Clone the Repository

```bash
git clone https://github.com/PurohitBhagyesh/web-elements.git
cd web-elements
```

### 2. Run a Local Server

You can open `index.html` directly in your browser, or spin up a local development server:

Using Python:
```bash
python3 -m http.server 8000
```

Using Node (`npx`):
```bash
npx serve .
```

Open `http://localhost:8000` (or the printed port) in your browser to test the interactive playground and widgets.

---

## 🧩 Architectural Principles

When writing or modifying components, please adhere to these core design rules:

1. **Zero Runtime Dependencies**: Every element must be 100% self-contained in standard Vanilla JavaScript and CSS3. Do not add heavy npm libraries or polyfills.
2. **CSS Variables for Theming**: All styling must expose clear, prefixed CSS custom properties (e.g. `--cupi-accent`, `--wshare-surface`) so developers can customize without overriding internal class rules.
3. **Accessibility First (a11y)**:
   - Provide meaningful `aria-label`, `aria-expanded`, and `role` attributes.
   - Support keyboard navigation (e.g., closing modals with the `Escape` key).
   - Ensure high contrast in both light and dark modes.
4. **Mobile & Cross-Platform Parity**:
   - Provide deep-link URI schemes for mobile apps while including smooth fallbacks (QR code, clipboard copy) for desktop environments.
5. **Dynamic Runtime Configuration**:
   - Components should support initial declarative initialization (via HTML `data-*` attributes) and programmatic API configuration (`init()`, `updateConfig()`, `open()`, `close()`).

---

## 🌿 Git Workflow & Branching

### 1. Branch Naming

Use descriptive branch names with appropriate prefixes:

- `feat/feature-name`: New components, widget capabilities, or API additions
- `fix/bug-description`: Bug fixes and platform compatibility corrections
- `docs/doc-update`: Documentation, examples, or README improvements
- `refactor/scope`: Code cleanup or performance improvements without altering functionality

### 2. Commit Message Conventions

We follow the [Conventional Commits](https://www.conventionalcommits.org/) specification:

- `feat:` A new feature or component option
- `fix:` A bug fix or deep-link correction
- `docs:` Documentation only changes
- `style:` Formatting, missing semi colons, CSS cleanups
- `refactor:` Code restructuring without user-facing changes
- `perf:` Performance improvements (e.g., image loading, bundle size)
- `chore:` Maintenance, GitHub actions, or meta files

*Example:*
```bash
git commit -m "feat(coffee-upi): add dynamic payee name and UPI ID edit methods"
```

---

## 🚀 Submitting a Pull Request (PR)

1. Fork the repository and create your branch from `main`.
2. Make your changes and test them across:
   - Modern Desktop browsers (Chrome, Firefox, Safari/Edge)
   - Mobile viewports (iOS Safari and Android Chrome via DevTools)
3. Ensure no syntax errors:
   ```bash
   node -c coffee-upi.js && node -c share-link.js
   ```
4. Push your branch to your fork:
   ```bash
   git push origin feat/my-new-feature
   ```
5. Open a Pull Request against the `main` branch of `PurohitBhagyesh/web-elements`.
6. Fill out the PR template with a clear explanation of what was changed and how you tested it.

---

## 📄 License Notice

By contributing to Web Elements, you agree that your contributions will be licensed under the project's [MIT License](LICENSE).
