---
title: Frankmax Private Intelligence
date: 2026-01-15
layout: home
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
params:
  sovereign: *id001
  sections:
    - partial: apple/hero.html
      title: "The Sovereign Standard."
      subtitle: "We manufacture certainty in an uncertain world. Governed by 7 Immutable Pillars, delivering 20 Flagship Instruments."
      eyebrow: "Global Intelligence"
      bg_image: "https://images.unsplash.com/photo-1451187580459-43490279c0fa?q=80&w=2072&auto=format&fit=crop"
      actions:
        - text: "View The 7 Pillars"
          url: "#pillars"
          class: "btn-primary"
    
    - partial: apple/feature_row.html
      title: "Architecture Over Optimism"
      text: "Modern systems fail because they optimize for speed over structure. Frankmax is designed to survive the collapse of consensus through rigid adherence to the Sovereign Pillars."
      image: "https://images.unsplash.com/photo-1550751827-4bd374c3f58b?q=80&w=2070&auto=format&fit=crop"
      reverse: true

    - partial: components/capabilities-grid.html
      id: "pillars"
      title: "The 7 Sovereign Pillars"
      description: "The structural guarantees that govern all Frankmax operations."
      items:
        - name: "Truth™"
          label: "PILLAR I"
          description: "Reality must remain legible at scale."
          url: "/en-xx/pillars/truth/"
        - name: "Authority™"
          label: "PILLAR II"
          description: "Humans must remain sovereign over machines."
          url: "/en-xx/pillars/authority/"
        - name: "Liability™"
          label: "PILLAR III"
          description: "Power must always have a name attached."
          url: "/en-xx/pillars/liability/"
        - name: "Intervention™"
          label: "PILLAR IV"
          description: "Not everything that runs should be allowed to continue."
          url: "/en-xx/pillars/intervention/"
        - name: "Human Continuity™"
          label: "PILLAR V"
          description: "Humans must remain capable under pressure."
          url: "/en-xx/pillars/human-continuity/"
        - name: "Trust™"
          label: "PILLAR VI"
          description: "Nothing is relied on before it is proven safe."
          url: "/en-xx/pillars/trust/"
        - name: "Termination™"
          label: "PILLAR VII"
          description: "Everything that exists must be allowed to end."
          url: "/en-xx/pillars/termination/"
---