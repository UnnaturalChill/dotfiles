#!/usr/bin/env bash

# Path to your Vencord/Vesktop theme file
THEME_FILE="$HOME/.config/vesktop/themes/pywal-discord.css"

# Extract colors from pywal
COLOR0=$(grep 'color0:' ~/.cache/wal/colors.yml | cut -d'"' -f2)
COLOR1=$(grep 'color1:' ~/.cache/wal/colors.yml | cut -d'"' -f2)
COLOR2=$(grep 'color2:' ~/.cache/wal/colors.yml | cut -d'"' -f2)
COLOR3=$(grep 'color3:' ~/.cache/wal/colors.yml | cut -d'"' -f2)
COLOR4=$(grep 'color4:' ~/.cache/wal/colors.yml | cut -d'"' -f2)
COLOR5=$(grep 'color5:' ~/.cache/wal/colors.yml | cut -d'"' -f2)
COLOR6=$(grep 'color6:' ~/.cache/wal/colors.yml | cut -d'"' -f2)
COLOR7=$(grep 'color7:' ~/.cache/wal/colors.yml | cut -d'"' -f2)
COLOR8=$(grep 'color8:' ~/.cache/wal/colors.yml | cut -d'"' -f2)
BACKGROUND=$(grep 'background:' ~/.cache/wal/colors.yml | cut -d'"' -f2)
FOREGROUND=$(grep 'foreground:' ~/.cache/wal/colors.yml | cut -d'"' -f2)

# Create the theme file with more noticeable transparency variations
mkdir -p "$(dirname "$THEME_FILE")"
cat > "$THEME_FILE" << EOF

:root {
  /* Base colors from pywal */
  --pywal-0: ${COLOR0};
  --pywal-1: ${COLOR1};
  --pywal-2: ${COLOR2};
  --pywal-3: ${COLOR3};
  --pywal-4: ${COLOR4};
  --pywal-5: ${COLOR5};
  --pywal-6: ${COLOR6};
  --pywal-7: ${COLOR7};
  --pywal-8: ${COLOR8};
  --pywal-bg: ${BACKGROUND};
  --pywal-fg: ${FOREGROUND};

  /* More noticeable transparency variations for sidebar */
  --sidebar-primary: ${COLOR2}; /* Left sidebar (server list) */
  --sidebar-secondary: ${COLOR2}AA; /* Channel list sidebar - more transparent */

  /* Main content area with more distinct variations */
  --content-primary: ${COLOR0}; /* Main dark background */
  --content-secondary: ${COLOR0}BB; /* More distinct lighter variation */
  --content-tertiary: ${COLOR0}99; /* Even more transparent for highlights */

  /* Accent colors */
  --accent-primary: ${COLOR4};
  --accent-secondary: ${COLOR5};
  --accent-tertiary: ${COLOR3};
}

.theme-dark {
  /* Main UI elements */
  --background-primary: var(--content-primary);
  --background-secondary: var(--content-secondary);
  --background-secondary-alt: var(--content-secondary);
  --background-tertiary: var(--content-primary);
  --background-accent: var(--accent-primary);

  /* Text colors */
  --text-normal: var(--pywal-7);
  --text-muted: var(--pywal-6);
  --text-link: var(--accent-primary);
  --header-primary: var(--pywal-7);
  --header-secondary: var(--pywal-7);

  /* Interactive elements */
  --interactive-normal: var(--pywal-7);
  --interactive-hover: var(--pywal-6);
  --interactive-active: var(--pywal-7);

  /* Other UI elements */
  --background-floating: var(--content-secondary);
  --background-modifier-hover: var(--content-tertiary);
  --background-modifier-active: var(--content-secondary);
  --background-modifier-selected: var(--content-secondary);
  --channeltextarea-background: var(--content-secondary);
  --scrollbar-thin-thumb: var(--content-tertiary);
  --scrollbar-auto-thumb: var(--content-tertiary);
}

/* Left sidebar (server list) */
.wrapper-1_HaEi, 
.scroller-3X7KbA,
.wrapper-1_HaEi .scroller-3X7KbA {
  background-color: var(--sidebar-primary) !important;
}

/* Channel list sidebar */
.sidebar-1tnWFu,
.container-1NXEkR,
.panels-3wFtMD,
.privateChannels-oVe7HL,
.scroller-WSmht3 {
  background-color: var(--sidebar-secondary) !important;
}

/* Friends list */
.container-2cd8Mz {
  background-color: var(--content-primary) !important;
}

/* Search bar */
.searchBar-jGtisZ {
  background-color: var(--content-secondary) !important;
}

/* Chat area */
.chat-2ZfjoI,
.container-2cd8Mz,
.container-36u7Lw,
.applicationStore-2nk7Lo,
.pageWrapper-2PwDoS,
.scroller-29cQFV,
.standardSidebarView-E9Pc3j,
.contentRegion-3HkfJJ {
  background-color: var(--content-primary) !important;
}

/* Message input area */
.channelTextArea-1FufC0,
.scrollableContainer-15eg7h {
  background-color: var(--content-secondary) !important;
}

/* Buttons and interactive elements */
.lookFilled-1Gx00P.colorBrand-3pXr91 {
  background-color: var(--accent-primary) !important;
}

/* Status indicators */
.status-3fQvEa[style*="background-color: rgb(59, 165, 93)"] {
  background-color: var(--pywal-2) !important;
}
.status-3fQvEa[style*="background-color: rgb(237, 66, 69)"] {
  background-color: var(--pywal-1) !important;
}
.status-3fQvEa[style*="background-color: rgb(250, 168, 26)"] {
  background-color: var(--pywal-3) !important;
}

/* Mentions and highlights */
.mentioned-Tre-dv {
  background-color: var(--pywal-5)44 !important; /* More visible highlight */
}
.mentioned-Tre-dv:hover {
  background-color: var(--pywal-5)66 !important; /* More visible highlight on hover */
}

/* Unread indicators */
.unread-36eUEm {
  background-color: var(--accent-primary) !important;
}

/* Modal backgrounds */
.root-g14mjS,
.modal-2RrUKJ,
.footer-31IekZ {
  background-color: var(--content-secondary) !important;
}

/* Message hover effect */
.message-2CShn3:hover {
  background-color: var(--content-tertiary) !important;
}

/* Selected channel */
.modeSelected-3DmyhH {
  background-color: var(--content-tertiary) !important;
}

/* User area at bottom */
.panels-3wFtMD {
  background-color: var(--sidebar-secondary) !important;
  border-top: 1px solid var(--accent-primary)33 !important;
}
EOF

echo "Generated Discord theme with pywal colors at $THEME_FILE"
