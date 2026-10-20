# C U Vivek — Portfolio Website

> Senior Performance Engineer at American Express | Scaling Distributed Systems (6,000 TPS) & Building Autonomous AI Performance Agents

Live portfolio: **[cuvivek.github.io](https://cuvivek.github.io)**

---

## Highlights

- **American Express Centurion Award 2025 Winner**: Top internal recognition for engineering excellence, system resiliency leadership, and high-impact delivery.
- **AI Performance Agent (LangGraph & RAG)**: Autonomous agent built at Amex to execute tests, analyze run telemetry, and query historical defect patterns via conversational chat.
- **High-Throughput Scalability**: Tuned and scaled American Express Payment Network Authorization systems to **6,000+ Transactions Per Second (TPS)**.
- **Chaos Engineering & Toxiproxy**: Containerized Toxiproxy for latency injection, jitter, and network failure emulation to uncover distributed system resiliency gaps.
- **Shift-Left CI/CD**: Automated performance quality gates within GitHub Actions pipelines.

---

## Tech Stack

- **Site Generator**: [Jekyll](https://jekyllrb.com/) (hosted on GitHub Pages)
- **Styling**: SCSS (Custom dark-theme design tokens, CSS Grid & Flexbox)
- **Asset Pipeline**: Gulp 4 (Dart Sass, Uglify, BrowserSync)
- **Interactive UI**: Particles.js, SweetScroll
- **Icons**: Font Awesome, Devicon

---

## Local Development

1. **Clone the repository:**
   ```bash
   git clone https://github.com/cuvivek/cuvivek.github.io.git
   cd cuvivek.github.io
   ```

2. **Install dependencies:**
   ```bash
   yarn install
   ```

3. **Compile assets:**
   ```bash
   npx gulp sass   # Compiles SCSS to assets/css/main.css
   npx gulp js     # Minifies JS to assets/js/main.js
   ```

4. **Run development server:**
   ```bash
   npx gulp        # Watches for file changes and auto-reloads
   ```

---

## License

MIT License. Designed and maintained by [C U Vivek](https://github.com/cuvivek).
