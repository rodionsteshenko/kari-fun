#!/bin/bash
cd /Users/rodion/kari

pages=(
    "Here-s-the-Situation"
    "The-Wine-Room"
    "FriedChickenParty"
    "Outside-Lands"
    "Pay-Faster-Portland"
    "It-s-the-Point-of-Sale-Squared"
    "Meet-Square-Terminal"
    "Indoor-Vday"
    "Cash-App-Wisdom"
    "What-do-I-do-with-Cash-App"
    "Instagram-Highlights"
    "Cash-App-for-Everything"
    "You-re-good"
    "It-s-Would-You-Rather-et-al"
    "Paid-ocial-Growth-Creative-Performance-Marketing"
)

for page in "${pages[@]}"; do
    echo "Downloading $page..."
    curl -s "https://kari.fun/$page" > "pages/${page}.html"
    sleep 1
done

echo "Done! Downloaded ${#pages[@]} pages"
