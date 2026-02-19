# YDA GitHub Repository Setup Script
# Run this in PowerShell from the directory where you want the repo cloned

# Clone the repo



# ============================================================
# README.md
# ============================================================
@"
# Young's Digital Atelier

**Proprietary AI Platforms. Enterprise Software. Original Hardware.**
**Designed, engineered, and shipped from the ground up.**

Young's Digital Atelier (YDA) is a technology company headquartered in San Antonio, Texas, specializing in proprietary AI platform development, enterprise SaaS software, and original hardware product engineering. A subsidiary of Young's Multimedia Holdings LLC â€” a Texas-based holding company in continuous operation since 2014.

## About

YDA designs, builds, and ships commercial technology products entirely in-house. Our portfolio includes proprietary AI platforms built from the ground up, live enterprise software serving multiple client brands with intelligent workflow automation, and precision-engineered hardware products designed through advanced CAD modeling and manufactured via 3D printing and electronic assembly.

## Stack

- Pure HTML / CSS / JavaScript
- No frameworks. No dependencies. No build tools.
- Hosted on GitHub Pages

## Legal

- [Privacy Policy](https://youngsdigitalatelier.com/privacy.html)
- [Terms of Service](https://youngsdigitalatelier.com/terms.html)
- [Cookie Policy](https://youngsdigitalatelier.com/cookies.html)

## License

Copyright (c) 2025 Young's Digital Atelier LLC. All rights reserved.

---

A subsidiary of [Young's Multimedia Holdings LLC](https://youngsdigitalatelier.com)
"@ | Out-File -FilePath "README.md" -Encoding utf8

# ============================================================
# .gitignore
# ============================================================
@"
# OS files
.DS_Store
Thumbs.db
desktop.ini

# Editor files
.vscode/
.idea/
*.swp
*.swo
*~

# Logs
*.log

# Node (in case of future tooling)
node_modules/
npm-debug.log*

# Environment
.env
.env.local
.env.production

# Build output
dist/
build/
.cache/

# Misc
*.bak
*.tmp
*.orig
"@ | Out-File -FilePath ".gitignore" -Encoding utf8

# ============================================================
# LICENSE
# ============================================================
@"
Copyright (c) 2025 Young's Digital Atelier LLC. All rights reserved.

This source code and all associated files, designs, and assets are the
proprietary property of Young's Digital Atelier LLC, a subsidiary of
Young's Multimedia Holdings LLC.

No part of this repository may be reproduced, distributed, modified,
or transmitted in any form or by any means, including photocopying,
recording, or other electronic or mechanical methods, without the prior
written permission of Young's Digital Atelier LLC, except in the case
of brief quotations embodied in critical reviews and certain other
noncommercial uses permitted by copyright law.

For permission requests, contact:

Young's Digital Atelier LLC
San Antonio, Texas
legal@youngsdigitalatelier.com
"@ | Out-File -FilePath "LICENSE" -Encoding utf8

# ============================================================
# CNAME (for GitHub Pages custom domain)
# ============================================================
@"
youngsdigitalatelier.com
"@ | Out-File -FilePath "CNAME" -Encoding utf8 -NoNewline

# ============================================================
# index.html
# ============================================================
@"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Young's Digital Atelier â€” Proprietary AI Platforms, Enterprise Software & Hardware</title>
    <meta name="description" content="Young's Digital Atelier designs and builds proprietary AI platforms, enterprise software, and original hardware from the ground up. San Antonio, TX.">
    <meta name="keywords" content="AI platforms, enterprise software, hardware engineering, proprietary technology, applied research, San Antonio technology company">
    <meta property="og:title" content="Young's Digital Atelier">
    <meta property="og:description" content="Proprietary AI platforms. Original hardware. Enterprise software. Designed, engineered, and shipped from the ground up.">
    <meta property="og:type" content="website">
    <meta property="og:url" content="https://youngsdigitalatelier.com">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600&family=Raleway:wght@200;300;400;500;600&family=Playfair+Display:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">
    <style>
        :root {
            --navy: #1a1a3e;
            --navy-deep: #12122e;
            --navy-light: #242454;
            --gold: #c9a84c;
            --gold-light: #dfc06e;
            --gold-pale: #f0dfa0;
            --white: #f5f2ed;
            --white-pure: #ffffff;
            --gray: #8a8a9e;
            --gray-light: #b8b8cc;
        }

        * { margin: 0; padding: 0; box-sizing: border-box; }

        html {
            scroll-behavior: smooth;
            scrollbar-width: thin;
            scrollbar-color: var(--gold) var(--navy-deep);
        }

        body {
            font-family: 'Raleway', sans-serif;
            background: var(--navy-deep);
            color: var(--white);
            overflow-x: hidden;
            -webkit-font-smoothing: antialiased;
        }

        body::before {
            content: '';
            position: fixed;
            top: 0; left: 0; right: 0; bottom: 0;
            background-image: url("data:image/svg+xml,%3Csvg viewBox='0 0 256 256' xmlns='http://www.w3.org/2000/svg'%3E%3Cfilter id='noise'%3E%3CfeTurbulence type='fractalNoise' baseFrequency='0.9' numOctaves='4' stitchTiles='stitch'/%3E%3C/filter%3E%3Crect width='100%25' height='100%25' filter='url(%23noise)' opacity='0.03'/%3E%3C/svg%3E");
            pointer-events: none;
            z-index: 9999;
        }

        .cookie-banner {
            position: fixed;
            bottom: 0;
            left: 0;
            right: 0;
            background: var(--navy);
            border-top: 1px solid rgba(201, 168, 76, 0.3);
            padding: 20px 40px;
            z-index: 10000;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 30px;
            transform: translateY(100%);
            animation: slideUpBanner 0.6s ease forwards;
            animation-delay: 2s;
            backdrop-filter: blur(20px);
        }
        .cookie-banner.hidden { display: none; }
        @keyframes slideUpBanner {
            to { transform: translateY(0); }
        }
        .cookie-banner p {
            font-size: 0.85rem;
            color: var(--gray-light);
            line-height: 1.6;
            letter-spacing: 0.02em;
        }
        .cookie-banner a {
            color: var(--gold);
            text-decoration: none;
        }
        .cookie-btn-group { display: flex; gap: 12px; flex-shrink: 0; }
        .cookie-btn {
            padding: 10px 24px;
            border: 1px solid var(--gold);
            background: transparent;
            color: var(--gold);
            font-family: 'Raleway', sans-serif;
            font-size: 0.8rem;
            letter-spacing: 0.15em;
            text-transform: uppercase;
            cursor: pointer;
            transition: all 0.3s ease;
        }
        .cookie-btn:hover, .cookie-btn.accept {
            background: var(--gold);
            color: var(--navy-deep);
        }
        .cookie-btn.accept:hover {
            background: var(--gold-light);
        }

        nav {
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
            padding: 24px 60px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            transition: all 0.4s ease;
        }
        nav.scrolled {
            background: rgba(18, 18, 46, 0.95);
            backdrop-filter: blur(20px);
            padding: 16px 60px;
            border-bottom: 1px solid rgba(201, 168, 76, 0.15);
        }
        .nav-brand {
            font-family: 'Cormorant Garamond', serif;
            font-size: 1.3rem;
            font-weight: 500;
            color: var(--white);
            text-decoration: none;
            letter-spacing: 0.05em;
        }
        .nav-brand span { color: var(--gold); font-style: italic; }
        .nav-links { display: flex; gap: 40px; align-items: center; }
        .nav-links a {
            font-size: 0.75rem;
            letter-spacing: 0.2em;
            text-transform: uppercase;
            color: var(--gray-light);
            text-decoration: none;
            transition: color 0.3s ease;
            font-weight: 400;
        }
        .nav-links a:hover { color: var(--gold); }
        .nav-cta {
            padding: 10px 28px;
            border: 1px solid var(--gold);
            color: var(--gold) !important;
            transition: all 0.3s ease !important;
        }
        .nav-cta:hover {
            background: var(--gold);
            color: var(--navy-deep) !important;
        }

        .nav-toggle {
            display: none;
            flex-direction: column;
            gap: 5px;
            cursor: pointer;
            z-index: 1001;
        }
        .nav-toggle span {
            width: 24px;
            height: 1.5px;
            background: var(--gold);
            transition: all 0.3s ease;
        }

        .hero {
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            padding: 120px 60px 80px;
            position: relative;
            overflow: hidden;
        }
        .hero::before {
            content: '';
            position: absolute;
            top: -50%;
            left: -50%;
            width: 200%;
            height: 200%;
            background: radial-gradient(ellipse at 30% 20%, rgba(201, 168, 76, 0.06) 0%, transparent 50%),
                        radial-gradient(ellipse at 70% 80%, rgba(201, 168, 76, 0.04) 0%, transparent 50%);
            animation: ambientDrift 20s ease-in-out infinite;
        }
        @keyframes ambientDrift {
            0%, 100% { transform: translate(0, 0) rotate(0deg); }
            33% { transform: translate(2%, -1%) rotate(0.5deg); }
            66% { transform: translate(-1%, 1%) rotate(-0.3deg); }
        }

        .hero-logo {
            width: min(600px, 80vw);
            margin-bottom: 50px;
            opacity: 0;
            animation: fadeRise 1.2s ease forwards;
            animation-delay: 0.3s;
            filter: drop-shadow(0 4px 30px rgba(201, 168, 76, 0.15));
        }
        @keyframes fadeRise {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .hero-divider {
            width: 80px;
            height: 1px;
            background: linear-gradient(90deg, transparent, var(--gold), transparent);
            margin-bottom: 40px;
            opacity: 0;
            animation: fadeRise 1s ease forwards;
            animation-delay: 0.8s;
        }

        .hero-tagline {
            font-family: 'Cormorant Garamond', serif;
            font-size: clamp(1.1rem, 2.5vw, 1.6rem);
            font-weight: 300;
            color: var(--gray-light);
            letter-spacing: 0.08em;
            line-height: 1.8;
            max-width: 700px;
            opacity: 0;
            animation: fadeRise 1s ease forwards;
            animation-delay: 1.1s;
        }

        .hero-scroll {
            position: absolute;
            bottom: 40px;
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 8px;
            opacity: 0;
            animation: fadeRise 1s ease forwards;
            animation-delay: 1.8s;
        }
        .hero-scroll span {
            font-size: 0.65rem;
            letter-spacing: 0.3em;
            text-transform: uppercase;
            color: var(--gray);
        }
        .scroll-line {
            width: 1px;
            height: 40px;
            background: linear-gradient(to bottom, var(--gold), transparent);
            animation: scrollPulse 2s ease-in-out infinite;
        }
        @keyframes scrollPulse {
            0%, 100% { opacity: 0.3; }
            50% { opacity: 1; }
        }

        section {
            padding: 120px 60px;
            position: relative;
        }

        .section-label {
            font-size: 0.65rem;
            letter-spacing: 0.35em;
            text-transform: uppercase;
            color: var(--gold);
            margin-bottom: 20px;
            font-weight: 500;
        }

        .section-title {
            font-family: 'Cormorant Garamond', serif;
            font-size: clamp(2rem, 4vw, 3.2rem);
            font-weight: 300;
            line-height: 1.3;
            margin-bottom: 30px;
            color: var(--white);
        }

        .section-text {
            font-size: 0.95rem;
            line-height: 1.9;
            color: var(--gray-light);
            max-width: 620px;
            font-weight: 300;
            letter-spacing: 0.02em;
        }

        .about {
            background: linear-gradient(180deg, var(--navy-deep) 0%, var(--navy) 50%, var(--navy-deep) 100%);
        }
        .about-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 100px;
            max-width: 1200px;
            margin: 0 auto;
            align-items: center;
        }
        .about-visual {
            position: relative;
            height: 400px;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .about-visual::before {
            content: '';
            position: absolute;
            width: 300px;
            height: 300px;
            border: 1px solid rgba(201, 168, 76, 0.15);
            transform: rotate(45deg);
            animation: diamondSpin 30s linear infinite;
        }
        .about-visual::after {
            content: '';
            position: absolute;
            width: 200px;
            height: 200px;
            border: 1px solid rgba(201, 168, 76, 0.1);
            transform: rotate(22.5deg);
            animation: diamondSpin 20s linear infinite reverse;
        }
        @keyframes diamondSpin {
            to { transform: rotate(405deg); }
        }
        .about-visual .monogram {
            font-family: 'Playfair Display', serif;
            font-size: 5rem;
            color: var(--gold);
            opacity: 0.3;
            font-weight: 700;
            font-style: italic;
            z-index: 1;
        }

        .capabilities {
            background: var(--navy-deep);
        }
        .cap-header {
            text-align: center;
            max-width: 700px;
            margin: 0 auto 80px;
        }
        .cap-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 40px;
            max-width: 1200px;
            margin: 0 auto;
        }
        .cap-card {
            padding: 50px 40px;
            border: 1px solid rgba(201, 168, 76, 0.1);
            background: rgba(26, 26, 62, 0.5);
            transition: all 0.5s ease;
            position: relative;
            overflow: hidden;
        }
        .cap-card::before {
            content: '';
            position: absolute;
            top: 0; left: 0;
            width: 100%;
            height: 2px;
            background: linear-gradient(90deg, transparent, var(--gold), transparent);
            opacity: 0;
            transition: opacity 0.5s ease;
        }
        .cap-card:hover::before { opacity: 1; }
        .cap-card:hover {
            border-color: rgba(201, 168, 76, 0.25);
            transform: translateY(-4px);
            background: rgba(26, 26, 62, 0.8);
        }
        .cap-icon {
            font-size: 0.65rem;
            letter-spacing: 0.3em;
            color: var(--gold);
            text-transform: uppercase;
            margin-bottom: 24px;
            font-weight: 500;
        }
        .cap-card h3 {
            font-family: 'Cormorant Garamond', serif;
            font-size: 1.5rem;
            font-weight: 400;
            margin-bottom: 16px;
            color: var(--white);
        }
        .cap-card p {
            font-size: 0.88rem;
            line-height: 1.8;
            color: var(--gray);
            font-weight: 300;
        }

        .metrics {
            background: var(--navy);
            border-top: 1px solid rgba(201, 168, 76, 0.08);
            border-bottom: 1px solid rgba(201, 168, 76, 0.08);
        }
        .metrics-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 40px;
            max-width: 1100px;
            margin: 0 auto;
            text-align: center;
        }
        .metric-item .number {
            font-family: 'Cormorant Garamond', serif;
            font-size: clamp(2.5rem, 4vw, 3.5rem);
            font-weight: 300;
            color: var(--gold);
            line-height: 1;
            margin-bottom: 12px;
        }
        .metric-item .label {
            font-size: 0.7rem;
            letter-spacing: 0.25em;
            text-transform: uppercase;
            color: var(--gray);
            font-weight: 400;
        }

        .philosophy {
            background: var(--navy-deep);
            text-align: center;
        }
        .philosophy .section-text {
            margin: 0 auto;
            max-width: 750px;
        }
        .philosophy blockquote {
            font-family: 'Cormorant Garamond', serif;
            font-size: clamp(1.3rem, 2.5vw, 1.8rem);
            font-style: italic;
            font-weight: 300;
            color: var(--gold-pale);
            line-height: 1.7;
            max-width: 800px;
            margin: 50px auto 0;
            padding: 40px 0;
            border-top: 1px solid rgba(201, 168, 76, 0.15);
            border-bottom: 1px solid rgba(201, 168, 76, 0.15);
        }

        .contact {
            background: linear-gradient(180deg, var(--navy-deep) 0%, var(--navy) 100%);
        }
        .contact-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 100px;
            max-width: 1100px;
            margin: 0 auto;
        }
        .contact-form { display: flex; flex-direction: column; gap: 24px; }
        .form-group { display: flex; flex-direction: column; gap: 8px; }
        .form-group label {
            font-size: 0.7rem;
            letter-spacing: 0.2em;
            text-transform: uppercase;
            color: var(--gray);
            font-weight: 400;
        }
        .form-group input,
        .form-group textarea {
            background: rgba(26, 26, 62, 0.6);
            border: 1px solid rgba(201, 168, 76, 0.15);
            padding: 14px 18px;
            color: var(--white);
            font-family: 'Raleway', sans-serif;
            font-size: 0.9rem;
            font-weight: 300;
            outline: none;
            transition: border-color 0.3s ease;
            letter-spacing: 0.02em;
        }
        .form-group input:focus,
        .form-group textarea:focus {
            border-color: var(--gold);
        }
        .form-group textarea { resize: vertical; min-height: 120px; }
        .submit-btn {
            padding: 16px 40px;
            border: 1px solid var(--gold);
            background: transparent;
            color: var(--gold);
            font-family: 'Raleway', sans-serif;
            font-size: 0.8rem;
            letter-spacing: 0.2em;
            text-transform: uppercase;
            cursor: pointer;
            transition: all 0.3s ease;
            align-self: flex-start;
            font-weight: 400;
        }
        .submit-btn:hover {
            background: var(--gold);
            color: var(--navy-deep);
        }

        .contact-info {
            display: flex;
            flex-direction: column;
            justify-content: center;
            gap: 40px;
        }
        .contact-detail h4 {
            font-size: 0.65rem;
            letter-spacing: 0.3em;
            text-transform: uppercase;
            color: var(--gold);
            margin-bottom: 10px;
            font-weight: 500;
        }
        .contact-detail p {
            font-family: 'Cormorant Garamond', serif;
            font-size: 1.15rem;
            color: var(--white);
            font-weight: 400;
            line-height: 1.6;
        }
        .contact-detail a {
            color: var(--white);
            text-decoration: none;
            transition: color 0.3s ease;
        }
        .contact-detail a:hover { color: var(--gold); }

        footer {
            padding: 50px 60px 40px;
            border-top: 1px solid rgba(201, 168, 76, 0.1);
            background: var(--navy-deep);
        }
        .footer-inner {
            max-width: 1200px;
            margin: 0 auto;
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
        }
        .footer-brand {
            font-family: 'Cormorant Garamond', serif;
            font-size: 1rem;
            color: var(--gray);
            font-weight: 400;
            letter-spacing: 0.05em;
        }
        .footer-brand span { color: var(--gold); font-style: italic; }
        .footer-links {
            display: flex;
            gap: 30px;
        }
        .footer-links a {
            font-size: 0.7rem;
            letter-spacing: 0.15em;
            text-transform: uppercase;
            color: var(--gray);
            text-decoration: none;
            transition: color 0.3s ease;
            font-weight: 400;
        }
        .footer-links a:hover { color: var(--gold); }
        .footer-copy {
            text-align: center;
            margin-top: 40px;
            padding-top: 30px;
            border-top: 1px solid rgba(201, 168, 76, 0.06);
            max-width: 1200px;
            margin-left: auto;
            margin-right: auto;
        }
        .footer-copy p {
            font-size: 0.7rem;
            color: var(--gray);
            letter-spacing: 0.1em;
        }
        .footer-copy a { color: var(--gray); text-decoration: none; }
        .footer-copy a:hover { color: var(--gold); }

        .reveal {
            opacity: 0;
            transform: translateY(40px);
            transition: all 0.8s cubic-bezier(0.25, 0.46, 0.45, 0.94);
        }
        .reveal.visible {
            opacity: 1;
            transform: translateY(0);
        }
        .reveal-delay-1 { transition-delay: 0.1s; }
        .reveal-delay-2 { transition-delay: 0.2s; }
        .reveal-delay-3 { transition-delay: 0.3s; }

        @media (max-width: 968px) {
            section { padding: 80px 30px; }
            nav { padding: 20px 30px; }
            nav.scrolled { padding: 14px 30px; }
            .nav-links { display: none; }
            .nav-toggle { display: flex; }
            .nav-links.open {
                display: flex;
                position: fixed;
                top: 0; left: 0; right: 0; bottom: 0;
                background: rgba(18, 18, 46, 0.98);
                flex-direction: column;
                justify-content: center;
                align-items: center;
                gap: 30px;
                z-index: 999;
            }
            .nav-links.open a { font-size: 1rem; }
            .about-grid { grid-template-columns: 1fr; gap: 60px; }
            .about-visual { height: 250px; }
            .cap-grid { grid-template-columns: 1fr; }
            .metrics-grid { grid-template-columns: repeat(2, 1fr); gap: 40px; }
            .contact-grid { grid-template-columns: 1fr; gap: 60px; }
            .footer-inner { flex-direction: column; gap: 20px; }
            .cookie-banner { flex-direction: column; padding: 20px; text-align: center; }
            .hero { padding: 120px 30px 80px; }
        }

        @media (max-width: 600px) {
            .metrics-grid { grid-template-columns: 1fr 1fr; gap: 30px; }
            .hero-logo { width: 90vw; }
            .footer-links { flex-wrap: wrap; gap: 16px; justify-content: center; }
        }
    </style>
</head>
<body>

    <div class="cookie-banner" id="cookieBanner">
        <p>We use cookies to enhance your experience. By continuing to visit this site, you agree to our use of cookies. <a href="cookies.html">Cookie Policy</a></p>
        <div class="cookie-btn-group">
            <button class="cookie-btn" onclick="document.getElementById('cookieBanner').classList.add('hidden')">Decline</button>
            <button class="cookie-btn accept" onclick="document.getElementById('cookieBanner').classList.add('hidden')">Accept</button>
        </div>
    </div>

    <nav id="navbar">
        <a href="#" class="nav-brand">Young's Digital <span>Atelier</span></a>
        <div class="nav-toggle" id="navToggle" onclick="toggleNav()">
            <span></span><span></span><span></span>
        </div>
        <div class="nav-links" id="navLinks">
            <a href="#about">About</a>
            <a href="#capabilities">Capabilities</a>
            <a href="#philosophy">Philosophy</a>
            <a href="#contact" class="nav-cta">Inquire</a>
        </div>
    </nav>

    <section class="hero" id="hero">
        <img src="logo.png" alt="Young's Digital Atelier" class="hero-logo">
        <div class="hero-divider"></div>
        <p class="hero-tagline">
            Proprietary AI platforms. Original hardware. Enterprise software.<br>
            Designed, engineered, and shipped from the ground up.
        </p>
        <div class="hero-scroll">
            <span>Explore</span>
            <div class="scroll-line"></div>
        </div>
    </section>

    <section class="about" id="about">
        <div class="about-grid">
            <div class="about-visual">
                <div class="monogram">YDA</div>
            </div>
            <div>
                <div class="section-label reveal">Who We Are</div>
                <h2 class="section-title reveal reveal-delay-1">We don't sell ideas.<br>We ship products.</h2>
                <p class="section-text reveal reveal-delay-2">
                    Young's Digital Atelier is a technology company headquartered in San Antonio, Texas. We design and build proprietary AI platforms, enterprise software, and original hardware â€” from concept through production â€” entirely in-house.
                </p>
                <p class="section-text reveal reveal-delay-3" style="margin-top: 20px;">
                    Our founder wrote over 260,000 lines of production code and delivered three commercializable platforms from scratch â€” no venture funding, no engineering team, no off-the-shelf frameworks. That's not a pitch deck. That's a track record.
                </p>
            </div>
        </div>
    </section>

    <section class="capabilities" id="capabilities">
        <div class="cap-header">
            <div class="section-label reveal">What We Build</div>
            <h2 class="section-title reveal reveal-delay-1">Core Competencies</h2>
            <p class="section-text reveal reveal-delay-2" style="margin: 0 auto;">
                We work across AI, software, and hardware â€” building proprietary systems that solve real problems at scale.
            </p>
        </div>
        <div class="cap-grid">
            <div class="cap-card reveal">
                <div class="cap-icon">01</div>
                <h3>AI Platform Development</h3>
                <p>End-to-end AI platforms built from the ground up â€” not wrappers on existing APIs. Proprietary architecture designed for performance, scalability, and real-world deployment.</p>
            </div>
            <div class="cap-card reveal reveal-delay-1">
                <div class="cap-icon">02</div>
                <h3>Enterprise SaaS</h3>
                <p>Production-grade business software that's live and processing real data today. Intelligent workflow tools built for speed, accuracy, and scale across multiple industries.</p>
            </div>
            <div class="cap-card reveal reveal-delay-2">
                <div class="cap-icon">03</div>
                <h3>Hardware Engineering</h3>
                <p>Original physical products designed in CAD and manufactured through advanced prototyping. Precision tools for specialized industries where software alone isn't enough.</p>
            </div>
            <div class="cap-card reveal">
                <div class="cap-icon">04</div>
                <h3>Applied Research</h3>
                <p>Active R&D programs with academic partnerships exploring next-generation approaches to AI infrastructure, security, and privacy. Patent filings in progress.</p>
            </div>
            <div class="cap-card reveal reveal-delay-1">
                <div class="cap-icon">05</div>
                <h3>Full-Stack Engineering</h3>
                <p>From database architecture to frontend interfaces, from embedded firmware to cloud deployment â€” we own the entire stack. No outsourced critical path.</p>
            </div>
            <div class="cap-card reveal reveal-delay-2">
                <div class="cap-icon">06</div>
                <h3>Intellectual Property</h3>
                <p>A growing portfolio of proprietary technology, original designs, and protectable innovations. Every system we build adds to a defensible IP foundation.</p>
            </div>
        </div>
    </section>

    <section class="metrics">
        <div class="metrics-grid">
            <div class="metric-item reveal">
                <div class="number">260K+</div>
                <div class="label">Lines of Production Code</div>
            </div>
            <div class="metric-item reveal reveal-delay-1">
                <div class="number">3</div>
                <div class="label">Platforms in Development</div>
            </div>
            <div class="metric-item reveal reveal-delay-2">
                <div class="number">746+</div>
                <div class="label">Production Commits</div>
            </div>
            <div class="metric-item reveal reveal-delay-3">
                <div class="number">1</div>
                <div class="label">Founder. Zero Outside Capital.</div>
            </div>
        </div>
    </section>

    <section class="philosophy" id="philosophy">
        <div class="section-label reveal">Our Philosophy</div>
        <h2 class="section-title reveal reveal-delay-1">Solo-built. Battle-tested. Ready to scale.</h2>
        <p class="section-text reveal reveal-delay-2">
            Everything in our portfolio was designed, coded, and shipped by a single founder â€” not to prove a point, but because the systems we needed didn't exist yet. Now they do. And they work. The next chapter is putting the right team and capital behind technology that's already proven.
        </p>
        <blockquote class="reveal reveal-delay-3">
            "We didn't wait for permission. We built it."
        </blockquote>
    </section>

    <section class="contact" id="contact">
        <div class="contact-grid">
            <div>
                <div class="section-label reveal">Get In Touch</div>
                <h2 class="section-title reveal reveal-delay-1">Let's build something</h2>
                <form class="contact-form reveal reveal-delay-2" id="contactForm" onsubmit="handleSubmit(event)">
                    <div class="form-group">
                        <label>Name</label>
                        <input type="text" name="name" required placeholder="Your name">
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="email" name="email" required placeholder="your@email.com">
                    </div>
                    <div class="form-group">
                        <label>Subject</label>
                        <input type="text" name="subject" placeholder="What's this regarding?">
                    </div>
                    <div class="form-group">
                        <label>Message</label>
                        <textarea name="message" required placeholder="Tell us about your project or inquiry..."></textarea>
                    </div>
                    <button type="submit" class="submit-btn">Send Inquiry</button>
                </form>
            </div>
            <div class="contact-info reveal reveal-delay-3">
                <div class="contact-detail">
                    <h4>Headquarters</h4>
                    <p>San Antonio, Texas</p>
                </div>
                <div class="contact-detail">
                    <h4>General Inquiries</h4>
                    <p><a href="mailto:contact@youngsdigitalatelier.com">contact@youngsdigitalatelier.com</a></p>
                </div>
                <div class="contact-detail">
                    <h4>Partnerships</h4>
                    <p><a href="mailto:partnerships@youngsdigitalatelier.com">partnerships@youngsdigitalatelier.com</a></p>
                </div>
                <div class="contact-detail">
                    <h4>Parent Organization</h4>
                    <p>Young's Multimedia Holdings LLC</p>
                </div>
            </div>
        </div>
    </section>

    <footer>
        <div class="footer-inner">
            <div class="footer-brand">Young's Digital <span>Atelier</span></div>
            <div class="footer-links">
                <a href="privacy.html">Privacy Policy</a>
                <a href="terms.html">Terms of Service</a>
                <a href="cookies.html">Cookie Policy</a>
            </div>
        </div>
        <div class="footer-copy">
            <p>&copy; 2025 Young's Digital Atelier LLC. All rights reserved. A subsidiary of <a href="#">Young's Multimedia Holdings LLC</a>.</p>
        </div>
    </footer>

    <script>
        window.addEventListener('scroll', function() {
            var nav = document.getElementById('navbar');
            if (window.scrollY > 80) {
                nav.classList.add('scrolled');
            } else {
                nav.classList.remove('scrolled');
            }
        });

        function toggleNav() {
            document.getElementById('navLinks').classList.toggle('open');
        }

        var navAnchors = document.querySelectorAll('.nav-links a');
        for (var i = 0; i < navAnchors.length; i++) {
            navAnchors[i].addEventListener('click', function() {
                document.getElementById('navLinks').classList.remove('open');
            });
        }

        var observer = new IntersectionObserver(function(entries) {
            entries.forEach(function(entry) {
                if (entry.isIntersecting) {
                    entry.target.classList.add('visible');
                }
            });
        }, { threshold: 0.1 });

        var reveals = document.querySelectorAll('.reveal');
        for (var j = 0; j < reveals.length; j++) {
            observer.observe(reveals[j]);
        }

        function handleSubmit(e) {
            e.preventDefault();
            var btn = e.target.querySelector('.submit-btn');
            btn.textContent = 'Sent \u2014 We\'ll be in touch';
            btn.style.background = 'var(--gold)';
            btn.style.color = 'var(--navy-deep)';
            btn.disabled = true;
        }

        try {
            if (sessionStorage.getItem('cookiesDismissed')) {
                document.getElementById('cookieBanner').classList.add('hidden');
            }
        } catch(e) {}

        document.querySelectorAll('.cookie-btn').forEach(function(btn) {
            btn.onclick = function() {
                document.getElementById('cookieBanner').classList.add('hidden');
                try { sessionStorage.setItem('cookiesDismissed', 'true'); } catch(e) {}
            };
        });
    </script>
</body>
</html>
"@ | Out-File -FilePath "index.html" -Encoding utf8

# ============================================================
# privacy.html
# ============================================================
@"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Privacy Policy â€” Young's Digital Atelier</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,300;0,400;0,500;0,600;1,400&family=Raleway:wght@200;300;400;500;600&display=swap" rel="stylesheet">
    <style>
        :root{--navy:#1a1a3e;--navy-deep:#12122e;--gold:#c9a84c;--gold-light:#dfc06e;--white:#f5f2ed;--gray:#8a8a9e;--gray-light:#b8b8cc;}
        *{margin:0;padding:0;box-sizing:border-box;}
        body{font-family:'Raleway',sans-serif;background:var(--navy-deep);color:var(--white);-webkit-font-smoothing:antialiased;}
        nav{padding:24px 60px;display:flex;justify-content:space-between;align-items:center;border-bottom:1px solid rgba(201,168,76,0.1);}
        .nav-brand{font-family:'Cormorant Garamond',serif;font-size:1.3rem;font-weight:500;color:var(--white);text-decoration:none;letter-spacing:0.05em;}
        .nav-brand span{color:var(--gold);font-style:italic;}
        .nav-back{font-size:0.75rem;letter-spacing:0.15em;text-transform:uppercase;color:var(--gray-light);text-decoration:none;transition:color 0.3s;}
        .nav-back:hover{color:var(--gold);}
        .legal-container{max-width:800px;margin:0 auto;padding:80px 40px 120px;}
        .legal-label{font-size:0.65rem;letter-spacing:0.35em;text-transform:uppercase;color:var(--gold);margin-bottom:16px;font-weight:500;}
        h1{font-family:'Cormorant Garamond',serif;font-size:2.5rem;font-weight:300;margin-bottom:12px;}
        .effective{font-size:0.85rem;color:var(--gray);margin-bottom:60px;letter-spacing:0.02em;}
        h2{font-family:'Cormorant Garamond',serif;font-size:1.5rem;font-weight:400;margin:50px 0 16px;color:var(--gold-light);}
        p,li{font-size:0.92rem;line-height:1.9;color:var(--gray-light);font-weight:300;letter-spacing:0.02em;margin-bottom:16px;}
        ul{padding-left:24px;margin-bottom:16px;}
        li{margin-bottom:8px;}
        a{color:var(--gold);text-decoration:none;}
        a:hover{color:var(--gold-light);}
        footer{padding:40px 60px;border-top:1px solid rgba(201,168,76,0.08);text-align:center;}
        footer p{font-size:0.7rem;color:var(--gray);letter-spacing:0.1em;}
        @media(max-width:768px){nav{padding:20px 24px;}.legal-container{padding:60px 24px 80px;}}
    </style>
</head>
<body>
    <nav>
        <a href="index.html" class="nav-brand">Young's Digital <span>Atelier</span></a>
        <a href="index.html" class="nav-back">&larr; Back to Home</a>
    </nav>
    <div class="legal-container">
        <div class="legal-label">Legal</div>
        <h1>Privacy Policy</h1>
        <p class="effective">Effective Date: February 18, 2026 | Last Updated: February 18, 2026</p>

        <p>Young's Digital Atelier LLC ("YDA," "we," "us," or "our"), a subsidiary of Young's Multimedia Holdings LLC, is committed to protecting your privacy. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you visit our website youngsdigitalatelier.com (the "Site") and use our services.</p>

        <h2>1. Information We Collect</h2>
        <p><strong>Personal Information:</strong> When you voluntarily provide it to us, we may collect:</p>
        <ul>
            <li>Name, email address, and contact information</li>
            <li>Company or organization name</li>
            <li>Information submitted through contact forms or inquiry submissions</li>
            <li>Communication records when you correspond with us</li>
        </ul>
        <p><strong>Automatically Collected Information:</strong> When you access the Site, we may automatically collect:</p>
        <ul>
            <li>IP address, browser type, and operating system</li>
            <li>Pages visited, time spent, and referring URLs</li>
            <li>Device identifiers and general location data</li>
            <li>Cookies and similar tracking technologies (see our <a href="cookies.html">Cookie Policy</a>)</li>
        </ul>

        <h2>2. How We Use Your Information</h2>
        <p>We use the information we collect to:</p>
        <ul>
            <li>Respond to your inquiries and communicate with you</li>
            <li>Provide, maintain, and improve our services and website</li>
            <li>Send administrative information, updates, and notices</li>
            <li>Analyze usage patterns to improve user experience</li>
            <li>Protect against unauthorized access, fraud, and legal liability</li>
            <li>Comply with legal obligations and enforce our terms</li>
        </ul>

        <h2>3. Information Sharing and Disclosure</h2>
        <p>We do not sell, rent, or trade your personal information to third parties. We may share information in the following circumstances:</p>
        <ul>
            <li><strong>Service Providers:</strong> With trusted third parties who assist in operating our website and conducting our business, subject to confidentiality obligations</li>
            <li><strong>Legal Requirements:</strong> When required by law, regulation, legal process, or governmental request</li>
            <li><strong>Business Transfers:</strong> In connection with a merger, acquisition, or sale of all or a portion of our assets</li>
            <li><strong>Protection of Rights:</strong> To protect the rights, property, or safety of YDA, our users, or others</li>
        </ul>

        <h2>4. Data Security</h2>
        <p>We implement reasonable technical and organizational security measures to protect your personal information from unauthorized access, alteration, disclosure, or destruction. However, no method of transmission over the Internet or electronic storage is completely secure, and we cannot guarantee absolute security.</p>

        <h2>5. Data Retention</h2>
        <p>We retain your personal information only for as long as necessary to fulfill the purposes outlined in this policy, unless a longer retention period is required or permitted by law.</p>

        <h2>6. Your Rights and Choices</h2>
        <p>Depending on your jurisdiction, you may have the right to:</p>
        <ul>
            <li>Access the personal information we hold about you</li>
            <li>Request correction of inaccurate personal information</li>
            <li>Request deletion of your personal information</li>
            <li>Opt out of certain data processing activities</li>
            <li>Withdraw consent where processing is based on consent</li>
        </ul>
        <p>To exercise any of these rights, please contact us at <a href="mailto:privacy@youngsdigitalatelier.com">privacy@youngsdigitalatelier.com</a>.</p>

        <h2>7. California Privacy Rights (CCPA)</h2>
        <p>If you are a California resident, you have additional rights under the California Consumer Privacy Act (CCPA), including the right to know what personal information is collected, the right to request deletion, and the right to opt out of the sale of personal information. We do not sell personal information.</p>

        <h2>8. Children's Privacy</h2>
        <p>Our Site and services are not directed to individuals under the age of 13. We do not knowingly collect personal information from children under 13. If you believe we have collected such information, please contact us immediately and we will take steps to delete it.</p>

        <h2>9. Third-Party Links</h2>
        <p>Our Site may contain links to third-party websites or services that are not operated by us. We are not responsible for the privacy practices of such third parties. We encourage you to review their privacy policies.</p>

        <h2>10. Changes to This Policy</h2>
        <p>We may update this Privacy Policy from time to time. We will notify you of material changes by posting the updated policy on this page with a new "Last Updated" date. Your continued use of the Site after any changes indicates your acceptance of the updated policy.</p>

        <h2>11. Contact Us</h2>
        <p>If you have questions or concerns about this Privacy Policy, please contact us:</p>
        <p>
            Young's Digital Atelier LLC<br>
            San Antonio, Texas<br>
            Email: <a href="mailto:privacy@youngsdigitalatelier.com">privacy@youngsdigitalatelier.com</a>
        </p>
    </div>
    <footer>
        <p>&copy; 2025 Young's Digital Atelier LLC. All rights reserved. A subsidiary of Young's Multimedia Holdings LLC.</p>
    </footer>
</body>
</html>
"@ | Out-File -FilePath "privacy.html" -Encoding utf8

# ============================================================
# terms.html
# ============================================================
@"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Terms of Service â€” Young's Digital Atelier</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,300;0,400;0,500;0,600;1,400&family=Raleway:wght@200;300;400;500;600&display=swap" rel="stylesheet">
    <style>
        :root{--navy:#1a1a3e;--navy-deep:#12122e;--gold:#c9a84c;--gold-light:#dfc06e;--white:#f5f2ed;--gray:#8a8a9e;--gray-light:#b8b8cc;}
        *{margin:0;padding:0;box-sizing:border-box;}
        body{font-family:'Raleway',sans-serif;background:var(--navy-deep);color:var(--white);-webkit-font-smoothing:antialiased;}
        nav{padding:24px 60px;display:flex;justify-content:space-between;align-items:center;border-bottom:1px solid rgba(201,168,76,0.1);}
        .nav-brand{font-family:'Cormorant Garamond',serif;font-size:1.3rem;font-weight:500;color:var(--white);text-decoration:none;letter-spacing:0.05em;}
        .nav-brand span{color:var(--gold);font-style:italic;}
        .nav-back{font-size:0.75rem;letter-spacing:0.15em;text-transform:uppercase;color:var(--gray-light);text-decoration:none;transition:color 0.3s;}
        .nav-back:hover{color:var(--gold);}
        .legal-container{max-width:800px;margin:0 auto;padding:80px 40px 120px;}
        .legal-label{font-size:0.65rem;letter-spacing:0.35em;text-transform:uppercase;color:var(--gold);margin-bottom:16px;font-weight:500;}
        h1{font-family:'Cormorant Garamond',serif;font-size:2.5rem;font-weight:300;margin-bottom:12px;}
        .effective{font-size:0.85rem;color:var(--gray);margin-bottom:60px;letter-spacing:0.02em;}
        h2{font-family:'Cormorant Garamond',serif;font-size:1.5rem;font-weight:400;margin:50px 0 16px;color:var(--gold-light);}
        p,li{font-size:0.92rem;line-height:1.9;color:var(--gray-light);font-weight:300;letter-spacing:0.02em;margin-bottom:16px;}
        ul{padding-left:24px;margin-bottom:16px;}
        li{margin-bottom:8px;}
        a{color:var(--gold);text-decoration:none;}
        a:hover{color:var(--gold-light);}
        footer{padding:40px 60px;border-top:1px solid rgba(201,168,76,0.08);text-align:center;}
        footer p{font-size:0.7rem;color:var(--gray);letter-spacing:0.1em;}
        @media(max-width:768px){nav{padding:20px 24px;}.legal-container{padding:60px 24px 80px;}}
    </style>
</head>
<body>
    <nav>
        <a href="index.html" class="nav-brand">Young's Digital <span>Atelier</span></a>
        <a href="index.html" class="nav-back">&larr; Back to Home</a>
    </nav>
    <div class="legal-container">
        <div class="legal-label">Legal</div>
        <h1>Terms of Service</h1>
        <p class="effective">Effective Date: February 18, 2026 | Last Updated: February 18, 2026</p>

        <p>These Terms of Service ("Terms") govern your access to and use of the website youngsdigitalatelier.com (the "Site") operated by Young's Digital Atelier LLC ("YDA," "we," "us," or "our"), a subsidiary of Young's Multimedia Holdings LLC. By accessing or using the Site, you agree to be bound by these Terms.</p>

        <h2>1. Acceptance of Terms</h2>
        <p>By accessing or using the Site, you confirm that you are at least 18 years of age and agree to comply with and be legally bound by these Terms and our <a href="privacy.html">Privacy Policy</a>. If you do not agree to these Terms, you must not access or use the Site.</p>

        <h2>2. Use of the Site</h2>
        <p>You agree to use the Site only for lawful purposes and in accordance with these Terms. You agree not to:</p>
        <ul>
            <li>Use the Site in any way that violates any applicable federal, state, local, or international law or regulation</li>
            <li>Attempt to gain unauthorized access to any portion of the Site, other accounts, computer systems, or networks connected to the Site</li>
            <li>Use any robot, spider, scraper, or other automated means to access the Site without our express written permission</li>
            <li>Introduce any viruses, trojan horses, worms, or other malicious or technologically harmful material</li>
            <li>Interfere with or disrupt the Site or servers or networks connected to the Site</li>
        </ul>

        <h2>3. Intellectual Property Rights</h2>
        <p>The Site and its entire contents, features, and functionality â€” including but not limited to all information, software, text, displays, images, video, audio, design, selection, and arrangement thereof â€” are owned by YDA, its licensors, or other providers of such material and are protected by United States and international copyright, trademark, patent, trade secret, and other intellectual property or proprietary rights laws.</p>
        <p>You may not reproduce, distribute, modify, create derivative works of, publicly display, publicly perform, republish, download, store, or transmit any of the material on our Site without our prior written consent.</p>

        <h2>4. Trademarks</h2>
        <p>The YDA name, logo, and all related names, logos, product and service names, designs, and slogans are trademarks of Young's Digital Atelier LLC or its affiliates. You may not use such marks without our prior written permission. All other names, logos, product and service names, designs, and slogans on the Site are the trademarks of their respective owners.</p>

        <h2>5. User Submissions</h2>
        <p>Any information, communications, or materials you send to us through the Site by electronic mail or otherwise, including but not limited to data, questions, comments, suggestions, or submissions, are and will be treated as non-confidential and non-proprietary unless otherwise explicitly agreed upon in writing. By submitting any such information, you grant YDA a non-exclusive, royalty-free, perpetual, irrevocable right to use, reproduce, modify, adapt, publish, and distribute such content for any purpose.</p>

        <h2>6. Disclaimer of Warranties</h2>
        <p>THE SITE IS PROVIDED ON AN "AS IS" AND "AS AVAILABLE" BASIS, WITHOUT ANY WARRANTIES OF ANY KIND, EITHER EXPRESS OR IMPLIED. NEITHER YDA NOR ANY PERSON ASSOCIATED WITH YDA MAKES ANY WARRANTY OR REPRESENTATION WITH RESPECT TO THE COMPLETENESS, SECURITY, RELIABILITY, QUALITY, ACCURACY, OR AVAILABILITY OF THE SITE.</p>
        <p>THE FOREGOING DOES NOT AFFECT ANY WARRANTIES THAT CANNOT BE EXCLUDED OR LIMITED UNDER APPLICABLE LAW.</p>

        <h2>7. Limitation of Liability</h2>
        <p>TO THE FULLEST EXTENT PROVIDED BY LAW, IN NO EVENT WILL YDA, ITS AFFILIATES, OR THEIR LICENSORS, SERVICE PROVIDERS, EMPLOYEES, AGENTS, OFFICERS, OR DIRECTORS BE LIABLE FOR DAMAGES OF ANY KIND, UNDER ANY LEGAL THEORY, ARISING OUT OF OR IN CONNECTION WITH YOUR USE, OR INABILITY TO USE, THE SITE, INCLUDING ANY DIRECT, INDIRECT, SPECIAL, INCIDENTAL, CONSEQUENTIAL, OR PUNITIVE DAMAGES.</p>

        <h2>8. Indemnification</h2>
        <p>You agree to defend, indemnify, and hold harmless YDA, its affiliates, licensors, and service providers, and their respective officers, directors, employees, contractors, agents, licensors, suppliers, successors, and assigns from and against any claims, liabilities, damages, judgments, awards, losses, costs, expenses, or fees (including reasonable attorneys' fees) arising out of or relating to your violation of these Terms or your use of the Site.</p>

        <h2>9. Governing Law and Jurisdiction</h2>
        <p>These Terms shall be governed by and construed in accordance with the laws of the State of Texas, without regard to its conflict of law principles. Any legal action or proceeding arising under these Terms shall be brought exclusively in the courts of Bexar County, Texas, and you consent to the jurisdiction of such courts.</p>

        <h2>10. Changes to Terms</h2>
        <p>We reserve the right to modify these Terms at any time. All changes are effective immediately when posted and apply to all access to and use of the Site thereafter. Your continued use of the Site following the posting of revised Terms constitutes your acceptance of such changes.</p>

        <h2>11. Severability</h2>
        <p>If any provision of these Terms is held by a court or other tribunal of competent jurisdiction to be invalid, illegal, or unenforceable, such provision shall be limited or eliminated to the minimum extent necessary, and the remaining provisions shall remain in full force and effect.</p>

        <h2>12. Contact Us</h2>
        <p>If you have questions about these Terms, please contact us:</p>
        <p>
            Young's Digital Atelier LLC<br>
            San Antonio, Texas<br>
            Email: <a href="mailto:legal@youngsdigitalatelier.com">legal@youngsdigitalatelier.com</a>
        </p>
    </div>
    <footer>
        <p>&copy; 2025 Young's Digital Atelier LLC. All rights reserved. A subsidiary of Young's Multimedia Holdings LLC.</p>
    </footer>
</body>
</html>
"@ | Out-File -FilePath "terms.html" -Encoding utf8

# ============================================================
# cookies.html
# ============================================================
@"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cookie Policy â€” Young's Digital Atelier</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,300;0,400;0,500;0,600;1,400&family=Raleway:wght@200;300;400;500;600&display=swap" rel="stylesheet">
    <style>
        :root{--navy:#1a1a3e;--navy-deep:#12122e;--gold:#c9a84c;--gold-light:#dfc06e;--white:#f5f2ed;--gray:#8a8a9e;--gray-light:#b8b8cc;}
        *{margin:0;padding:0;box-sizing:border-box;}
        body{font-family:'Raleway',sans-serif;background:var(--navy-deep);color:var(--white);-webkit-font-smoothing:antialiased;}
        nav{padding:24px 60px;display:flex;justify-content:space-between;align-items:center;border-bottom:1px solid rgba(201,168,76,0.1);}
        .nav-brand{font-family:'Cormorant Garamond',serif;font-size:1.3rem;font-weight:500;color:var(--white);text-decoration:none;letter-spacing:0.05em;}
        .nav-brand span{color:var(--gold);font-style:italic;}
        .nav-back{font-size:0.75rem;letter-spacing:0.15em;text-transform:uppercase;color:var(--gray-light);text-decoration:none;transition:color 0.3s;}
        .nav-back:hover{color:var(--gold);}
        .legal-container{max-width:800px;margin:0 auto;padding:80px 40px 120px;}
        .legal-label{font-size:0.65rem;letter-spacing:0.35em;text-transform:uppercase;color:var(--gold);margin-bottom:16px;font-weight:500;}
        h1{font-family:'Cormorant Garamond',serif;font-size:2.5rem;font-weight:300;margin-bottom:12px;}
        .effective{font-size:0.85rem;color:var(--gray);margin-bottom:60px;letter-spacing:0.02em;}
        h2{font-family:'Cormorant Garamond',serif;font-size:1.5rem;font-weight:400;margin:50px 0 16px;color:var(--gold-light);}
        h3{font-family:'Cormorant Garamond',serif;font-size:1.15rem;font-weight:400;margin:30px 0 12px;color:var(--white);}
        p,li{font-size:0.92rem;line-height:1.9;color:var(--gray-light);font-weight:300;letter-spacing:0.02em;margin-bottom:16px;}
        ul{padding-left:24px;margin-bottom:16px;}
        li{margin-bottom:8px;}
        a{color:var(--gold);text-decoration:none;}
        a:hover{color:var(--gold-light);}
        table{width:100%;border-collapse:collapse;margin:20px 0 30px;}
        th,td{text-align:left;padding:14px 18px;border-bottom:1px solid rgba(201,168,76,0.1);font-size:0.88rem;color:var(--gray-light);font-weight:300;}
        th{font-size:0.7rem;letter-spacing:0.15em;text-transform:uppercase;color:var(--gold);font-weight:500;}
        footer{padding:40px 60px;border-top:1px solid rgba(201,168,76,0.08);text-align:center;}
        footer p{font-size:0.7rem;color:var(--gray);letter-spacing:0.1em;}
        @media(max-width:768px){nav{padding:20px 24px;}.legal-container{padding:60px 24px 80px;}table{font-size:0.8rem;}th,td{padding:10px 12px;}}
    </style>
</head>
<body>
    <nav>
        <a href="index.html" class="nav-brand">Young's Digital <span>Atelier</span></a>
        <a href="index.html" class="nav-back">&larr; Back to Home</a>
    </nav>
    <div class="legal-container">
        <div class="legal-label">Legal</div>
        <h1>Cookie Policy</h1>
        <p class="effective">Effective Date: February 18, 2026 | Last Updated: February 18, 2026</p>

        <p>This Cookie Policy explains how Young's Digital Atelier LLC ("YDA," "we," "us," or "our") uses cookies and similar technologies when you visit our website youngsdigitalatelier.com (the "Site"). It explains what these technologies are, why we use them, and your rights to control our use of them.</p>

        <h2>1. What Are Cookies?</h2>
        <p>Cookies are small data files that are placed on your computer or mobile device when you visit a website. Cookies are widely used by website owners to make their websites work, or to work more efficiently, as well as to provide reporting information.</p>
        <p>Cookies set by the website owner (in this case, YDA) are called "first-party cookies." Cookies set by parties other than the website owner are called "third-party cookies." Third-party cookies enable third-party features or functionality to be provided on or through the website (e.g., analytics, interactive content, and social media features).</p>

        <h2>2. Types of Cookies We Use</h2>

        <table>
            <tr>
                <th>Category</th>
                <th>Purpose</th>
                <th>Duration</th>
            </tr>
            <tr>
                <td>Essential</td>
                <td>Required for the Site to function properly. These cannot be disabled.</td>
                <td>Session / 1 year</td>
            </tr>
            <tr>
                <td>Analytics</td>
                <td>Help us understand how visitors interact with the Site by collecting and reporting information anonymously.</td>
                <td>Up to 2 years</td>
            </tr>
            <tr>
                <td>Functional</td>
                <td>Enable enhanced functionality and personalization, such as remembering your preferences.</td>
                <td>Up to 1 year</td>
            </tr>
            <tr>
                <td>Preference</td>
                <td>Store your cookie consent choice and other preference settings.</td>
                <td>Up to 1 year</td>
            </tr>
        </table>

        <h2>3. Specific Cookies We Use</h2>

        <h3>Essential Cookies</h3>
        <p>These cookies are strictly necessary for the Site to operate. They include cookies that allow you to navigate the Site and use its features.</p>

        <h3>Analytics Cookies</h3>
        <p>We may use analytics services such as Google Analytics to collect information about how visitors use the Site. These cookies collect information in an anonymous form, including the number of visitors, where visitors came from, and the pages they visited.</p>

        <h3>Preference Cookies</h3>
        <p>These cookies remember your cookie consent preferences so you are not asked to accept cookies every time you visit the Site.</p>

        <h2>4. How to Control Cookies</h2>
        <p>You have the right to decide whether to accept or reject cookies. You can exercise your cookie rights by:</p>
        <ul>
            <li><strong>Cookie Banner:</strong> When you first visit our Site, a cookie banner will appear allowing you to accept or decline non-essential cookies.</li>
            <li><strong>Browser Settings:</strong> You can set or amend your web browser controls to accept or refuse cookies. If you choose to reject cookies, you may still use our Site though your access to some functionality and areas may be restricted.</li>
        </ul>

        <h2>5. Other Tracking Technologies</h2>
        <p>In addition to cookies, we may use other similar technologies such as web beacons (also known as "tracking pixels" or "clear gifs"). These are tiny graphics files that contain a unique identifier that enables us to recognize when someone has visited our Site or opened an email that we have sent them.</p>

        <h2>6. Do Not Track</h2>
        <p>Some browsers include a "Do Not Track" (DNT) feature that signals to websites that you do not want your online activity tracked. We currently respond to DNT signals and do not track users who have DNT enabled.</p>

        <h2>7. Changes to This Cookie Policy</h2>
        <p>We may update this Cookie Policy from time to time to reflect changes in the cookies we use or for other operational, legal, or regulatory reasons. Please revisit this Cookie Policy regularly to stay informed about our use of cookies and related technologies.</p>

        <h2>8. Contact Us</h2>
        <p>If you have questions about our use of cookies or other technologies, please contact us:</p>
        <p>
            Young's Digital Atelier LLC<br>
            San Antonio, Texas<br>
            Email: <a href="mailto:privacy@youngsdigitalatelier.com">privacy@youngsdigitalatelier.com</a>
        </p>
    </div>
    <footer>
        <p>&copy; 2025 Young's Digital Atelier LLC. All rights reserved. A subsidiary of Young's Multimedia Holdings LLC.</p>
    </footer>
</body>
</html>
"@ | Out-File -FilePath "cookies.html" -Encoding utf8

# ============================================================
# Stage, commit, and push everything
# ============================================================
git add -A
git commit -m "Initial site deployment - YDA landing page with legal pages"
git push origin main

Write-Host ""
Write-Host "======================================================" -ForegroundColor Green
Write-Host "  YDA REPO DEPLOYED SUCCESSFULLY" -ForegroundColor Green
Write-Host "======================================================" -ForegroundColor Green
Write-Host ""
Write-Host "  Files created:" -ForegroundColor Cyan
Write-Host "    - README.md"
Write-Host "    - .gitignore"
Write-Host "    - LICENSE"
Write-Host "    - CNAME"
Write-Host "    - index.html"
Write-Host "    - privacy.html"
Write-Host "    - terms.html"
Write-Host "    - cookies.html"
Write-Host ""
Write-Host "  NEXT STEPS:" -ForegroundColor Yellow
Write-Host "    1. Upload logo.png to the repo manually (binary file)"
Write-Host "    2. Go to: github.com/inspirasion1/YDA/settings/pages"
Write-Host "    3. Source: Deploy from branch > Main > Root"
Write-Host "    4. Point DNS to GitHub Pages (A records + CNAME)"
Write-Host "    5. Enable 'Enforce HTTPS' once DNS propagates"
Write-Host ""

