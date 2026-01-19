---
title: System
menu:
  main:
    weight: 20
cascade:
  params:
    sovereign: &id001
      palettes:
      - id: identity-light
        type: identity
        mode: light
        colors:
          sovereign_primary: '#FFFFFF'
          sovereign_secondary: '#000000'
          accent_signal: '#007AFF'
          accent_muted: '#1e4a7a'
          background_main: '#F5F5F7'
          background_alt: '#FFFFFF'
          surface_card: '#FFFFFF'
          text_primary: '#000000'
          text_secondary: '#000000'
      - id: identity-dark
        type: identity
        mode: dark
        colors:
          sovereign_primary: '#FFFFFF'
          sovereign_secondary: '#000000'
          accent_signal: '#007AFF'
          accent_muted: '#1e4a7a'
          background_main: '#000000'
          background_alt: '#1C1C1E'
          surface_card: '#1C1C1E'
          text_primary: '#FFFFFF'
          text_secondary: '#999999'
      - id: operational-dashboard-dark
        type: operational
        mode: dark
        colors:
          sovereign_primary: '#999999'
          sovereign_secondary: '#000000'
          accent_signal: '#007AFF'
          accent_muted: '#1e4a7a'
          background_main: '#121212'
          background_alt: '#1E1E1E'
          surface_card: '#1E1E1E'
          text_primary: '#FFFFFF'
          text_secondary: '#999999'
      - id: operational-report-light
        type: operational
        mode: light
        colors:
          sovereign_primary: '#727272'
          sovereign_secondary: '#000000'
          accent_signal: '#007AFF'
          accent_muted: '#1e4a7a'
          background_main: '#F9F9F9'
          background_alt: '#FFFFFF'
          surface_card: '#FFFFFF'
          text_primary: '#000000'
          text_secondary: '#000000'
      - id: operational-terminal
        type: operational
        mode: dark
        colors:
          sovereign_primary: '#00FF41'
          sovereign_secondary: '#003B00'
          accent_signal: '#008F11'
          accent_muted: '#114417'
          background_main: '#0D0208'
          background_alt: '#000000'
          surface_card: '#000000'
          text_primary: '#FFFFFF'
          text_secondary: '#999999'
      - id: operational-command
        type: operational
        mode: dark
        colors:
          sovereign_primary: '#999999'
          sovereign_secondary: '#FFFFFF'
          accent_signal: '#999999'
          accent_muted: '#5b5b5b'
          background_main: '#050505'
          background_alt: '#151515'
          surface_card: '#151515'
          text_primary: '#FFFFFF'
          text_secondary: '#999999'
      - id: risk-critical
        type: risk
        mode: dark
        colors:
          sovereign_primary: '#FF3B30'
          sovereign_secondary: '#5C1515'
          accent_signal: '#FFD60A'
          accent_muted: '#7f6f1f'
          background_main: '#2A0A0A'
          background_alt: '#3A0F0F'
          surface_card: '#3A0F0F'
          text_primary: '#FFFFFF'
          text_secondary: '#999999'
      - id: risk-elevated
        type: risk
        mode: dark
        colors:
          sovereign_primary: '#FF9500'
          sovereign_secondary: '#5C3B00'
          accent_signal: '#FFD60A'
          accent_muted: '#7f6f1f'
          background_main: '#2A1C0A'
          background_alt: '#3A260F'
          surface_card: '#3A260F'
          text_primary: '#FFFFFF'
          text_secondary: '#999999'
      - id: risk-watch
        type: risk
        mode: dark
        colors:
          sovereign_primary: '#FFCC00'
          sovereign_secondary: '#5C4800'
          accent_signal: '#FFFFFF'
          accent_muted: '#999999'
          background_main: '#2A2205'
          background_alt: '#3A300F'
          surface_card: '#3A300F'
          text_primary: '#FFFFFF'
          text_secondary: '#999999'
      - id: sovereign-ceremonial
        type: sovereign
        mode: dark
        colors:
          sovereign_primary: '#D4AF37'
          sovereign_secondary: '#000000'
          accent_signal: '#FFFFFF'
          accent_muted: '#999999'
          background_main: '#111111'
          background_alt: '#222222'
          surface_card: '#222222'
          text_primary: '#FFFFFF'
          text_secondary: '#999999'
      - id: sovereign-stealth
        type: sovereign
        mode: dark
        colors:
          sovereign_primary: '#48484A'
          sovereign_secondary: '#2C2C2E'
          accent_signal: '#636366'
          accent_muted: '#3b3b3c'
          background_main: '#000000'
          background_alt: '#1C1C1E'
          surface_card: '#1C1C1E'
          text_primary: '#FFFFFF'
          text_secondary: '#999999'
      - id: structure-mono
        type: structural
        mode: light
        colors:
          sovereign_primary: '#000000'
          sovereign_secondary: '#FFFFFF'
          accent_signal: '#808080'
          accent_muted: '#4c4c4c'
          background_main: '#F0F0F0'
          background_alt: '#FFFFFF'
          surface_card: '#FFFFFF'
          text_primary: '#000000'
          text_secondary: '#000000'
params:
  sovereign: *id001
peace:
  problem: Complex systems are operating beyond visible control.
  emotion: When oversight weakens, risk compounds silently.
  action: Frankmax applies structural safeguards across governance, law, and AI.
  change: Systems remain accountable, stoppable, and aligned with human authority.
  evidence: Frameworks designed for regulated and sovereign environments.
---

