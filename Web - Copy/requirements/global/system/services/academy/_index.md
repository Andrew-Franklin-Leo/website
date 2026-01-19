---
title: Academy
description: "Human calibration for the machine age."
layout: academy

params:
  hero:
    title: "Cognitive Armor."
    subtitle: "Protecting the Sovereign Mind from Algorithmic Drift."
    image: "https://images.unsplash.com/photo-1504384308090-c54be3855833?q=80&w=2000&auto=format&fit=crop"

  modules:
    - type: "curriculum"
      title: "The Curriculum"
      description: "Recalibrating the biological operator."
      items:
        - title: "Command"
          subtitle: "Authority & Override"
          description: "Reasserting control over autonomous systems."
          url: "/global/instruments/services/academy/fm-aca-command"
        - title: "Cognition"
          subtitle: "Fatigue & Judgment"
          description: "Maintaining clarity in high-noise environments."
          url: "/global/instruments/services/academy/fm-aca-cognitive"
        - title: "Ethics"
          subtitle: "Responsibility & Trust"
          description: "The moral weight of sovereign decisions."
          url: "/global/instruments/services/academy/fm-aca-ethics"
        - title: "Resilience"
          subtitle: "Isolation & Uncertainty"
          description: "Operating alone when the network fails."
          url: "/global/instruments/services/academy/fm-aca-isolation"

    - type: "chart"
      title: "Live Data: Cognitive Drift Analysis"
      description: "Real-time efficacy of calibration protocols."
      height: "350px"
      data:
        type: "line"
        data:
          labels: ["0h", "4h", "8h", "12h", "16h", "20h"]
          datasets:
            - label: "Baseline Cognition"
              data: [100, 98, 95, 92, 88, 85]
              borderColor: "rgba(255, 255, 255, 0.4)"
              borderDash: [5, 5]
              tension: 0.4
            - label: "Post-Calibration"
              data: [100, 99, 99, 98, 97, 96]
              borderColor: "#00f0ff"
              backgroundColor: "rgba(0, 240, 255, 0.1)"
              fill: true
              tension: 0.4
        options:
          responsive: true
          plugins:
            legend:
              position: "bottom"

    - type: "architecture"
      title: "Learning Architecture"
      description: "The structural intervention."
      definition: |
        graph TD
          Chaos[Algorithmic Chaos] -->|Stress| Human[The Operator]
          Human -->|Breaks| Failure
          Human -->|Trains| Academy
          Academy -->|Installs| Protocols[Cognitive Protocols]
          Protocols -->|Reinforce| Human
          Human -->|Dominates| Chaos
          style Human fill:#f9f,stroke:#333,stroke-width:4px
          style Academy fill:#000,stroke:#fff,stroke-width:4px,color:#fff

  cta:
    text: "Start Calibration"
    url: "/briefing/pillar"

peace:
  problem: "Human judgment crumbles under infinite data."
  emotion: "The Sovereign is outpaced by his own tools."
  action: "Frankmax **Academy** recalibrates the biological operator."
  change: "The human remains the master."
  evidence: "Training G7 leaders since 2024."
---
