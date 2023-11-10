
:root {
  --metrology-hue: 212; /* Enter values between 0 and 359 to change the color of the theme. */

  --metrology-accent: var(--metrology-hue), 100%, 38%;
  --metrology-highlight: var(--metrology-hue), 100%, 60%;
  --metrology-complement: calc(var(--metrology-hue) - 50), 100%, 28%;

  /* Dark Theme */
  --metrology-background: 0, 0%, 0%;
  --metrology-text-primary: 0, 0%, 100%;
  --metrology-text-heading: 0, 0%, 95%;
  --metrology-text-secondary: 0, 0%, 66%;

  --metrology-gray-1: 0, 0%, 9%;
  --metrology-gray-2: 0, 0%, 15%;
  --metrology-gray-3: 0, 0%, 21%;
  --metrology-gray-6: 0, 0%, 46%;
  --metrology-shadow: 0, 0%, 0%, .25;

  --message-color-lightness: 100%;
  --message-bg-saturation: 25%;
  --message-bg-lightness: 15%;
  --message-bg-opacity: 1;

  /* Light Theme - Uncomment the following code to apply, then switch to Light Theme in the app. */
  /* --metrology-background: 0, 0%, 100%;
  --metrology-text-primary: 0, 0%, 0%;
  --metrology-text-heading: 0, 0%, 10%;
  --metrology-text-secondary: 0, 0%, 50%;

  --metrology-gray-1: 0, 0%, 98%;
  --metrology-gray-2: 0, 0%, 95%;
  --metrology-gray-3: 0, 0%, 90%;
  --metrology-gray-6: 0, 0%, 82%;
  --metrology-shadow: 0, 0%, 0%, .1;

  --message-color-lightness: 0%;
  --message-bg-saturation: 25%;
  --message-bg-lightness: 95%;
  --message-bg-opacity: 1; */


  --metrology-round-corner-small: 0;
  --metrology-round-corner-medium: 4px; /* 0 for the sharp Metro experience. 4px for a more moderate Fluent. */

  --metrology-favorites-size: 48px;

  --default-avatar-hue: var(--metrology-hue);
  background-color: hsl(var(--metrology-background));
  color: hsl(var(--metrology-text-primary)) ;

  --reply-bg-opacity: 0.07;
  --reply-bg-saturation: 46%;
  --reply-bg-lightness: 81%;
  --reply-to-color-saturation: 100%;
  --reply-to-color-lightness: 95%;
  --reply-to-color-opacity: 0.8;
  --sender-name-saturation: 100%;
  --sender-name-lightness: 95%;
  --timestamp-saturation: 29%;
  --timestamp-lightness: 80%;
  --reaction-saturation: 29%;
  --reaction-lightness: 72%;
  --reaction-opacity: 0.15;
  --add-reaction-saturation: 29%;
  --add-reaction-lightness: 80%;
  --read-receipt-fg: hsla(240, 100%, 93%, 0.5);
  --read-receipt-tooltip-fg: 88%;
  --archive-background: rgb(43, 41, 47);
  --archive-fg: white;
  --left-panel-bg: hsl(0deg 0% 100% / 0%);
  --main-panel-transparent-bg: #1e1e1e00;
  --search-primary: white;
  --base: 255, 255, 255;
  --message-actions-fg: #d0d1d8;
  --search-bar-input-fg: #76767b;
  --search-input-bg-experimental: rgba(118, 118, 128, 0.12);
  --header-control-fg: #68686d;
  --room-tile-bg-hover: #25262dcc;
  --tooltipText: white;
  --tooltipBackground: #25262d;
  --space-bar-bg: transparent;
  --space-bar-selected: hsl(var(--metrology-accent));
  --space-bar-error-icon: url(../../img/x-stroke-dark.d150096.svg);
  --floating-button-bg: #312D39;
  --left-panel-bg-no-transparency: #202020;
  --left-panel-v2-bg-no-transparency--windows: #202020;
}

.mx_MatrixChat_wrapper:not(.mx_MatrixChat_wrapper--colorful) {
  --default-avatar-hue: var(--metrology-hue);
  --message-color-lightness: 100%;
  --message-bg-saturation: 25%;
  --message-bg-lightness: 15%;
  --message-bg-opacity: 1;
}

.bp_TitleBar {
  background-color: transparent;
  position: absolute;
  height: 32px;
  z-index: 100;
  width: 100%;
}

.mx_MatrixChat>:not(.mx_SpacePanel):not(.noselect):not(.mx_ResizeHandle):not(.mx_LeftPanel_wrapper):not(.bp_LeftPanel) {
  padding-top: 32px;
  height: calc(100% - 32px) !important;
  background-color: hsl(var(--metrology-background));
}

h1, h2, h3, h4, h5, h6 {
  color: hsl(var(--metrology-text-heading));
}

code {
  font-family: ui-monospace, monospace !important;
}


/* Left Panel */

.bp_LeftPanel {
  /* margin-left: 48px; */
}

.bp_LeftPanel .rooms .rooms_scroll-container {
  margin-right: 0;
}

.bp_LeftPanel .bp_LeftPanel_content {
  overflow: visible;
}

.bp_LeftPanel {
  overflow: visible;
}

.bp_LeftPanel .bp_LeftPanel_content:first-of-type {
  transition: opacity 1s;
}

.bp_LeftPanel .bp_LeftPanel_contentWrapper--search .bp_LeftPanel_content:first-of-type {
  opacity: 0;
}


/* Space Bar */

.mx_MatrixChat>.noselect {
  background-color: hsl(var(--metrology-gray-2)) !important;
  padding-top: 0 !important;
  height: 100% !important;
  margin-left: 0 !important;
}

.mx_MatrixChat>.noselect .bp_col {
  margin: 48px 0px 0px 0px !important;
}

.mx_MatrixChat>.noselect>div:first-child {
  top: 42px;
}

.bp_LeftPanel .spaceBar {
  padding: 48px 0 0 0;
  margin-bottom: 0;
  position: absolute !important;
  top: -76px;
  left: -48px;
  background: hsl(var(--metrology-gray-2));
  height: calc(100vh - 32px) !important;
  width: 48px;
  box-shadow: -8px 0px 24px -12px hsla(var(--metrology-shadow)) inset, -1px 0 0 inset hsla(var(--metrology-gray-6),.25)
}

.bp_LeftPanel .spaceBar .grid {
  display: grid;
  grid-gap: 4px;
  grid-template-columns: 48px;
  grid-template-rows: repeat(auto-fill,40px);
  position: relative;
  top: 0;
  height: calc(100% - 40px);
  width: 48px;
}

.bp_LeftPanel .spaceBar .grid .bp_ProtocolsToggle {
  display: none;
  grid-row-start: auto;
  grid-column-end: auto;
}

.bp_LeftPanel .spaceBar .grid .plus {
  width: 48px;
  height: auto;
  margin: 0 0 8px 0;
  grid-row-start: auto;
  grid-row-end: -1;
}

.bp_LeftPanel .spaceBar .bp_SpaceBarItem.active, .bp_LeftPanel .spaceBar .bp_SpaceBarItem.active:hover {
  background-color: transparent;
  border-left: 4px solid hsl(var(--metrology-accent));
  padding-left: 0;
  width: 40px;
  border-right: 4px solid transparent;
}

.bp_LeftPanel .spaceBar .bp_SpaceBarItem {
  border-radius: var(--metrology-round-corner-small);
  border: none;
  width: 40px;
  height: 40px;
  border-left: 4px solid transparent;
  border-right: 4px solid transparent;
}

/* .bp_LeftPanel .spaceBar .bp_SpaceBarItem_image {
  background-color: hsl(var(--metrology-text-primary)) !important;
} */

.bp_LeftPanel .spaceBar .bp_SpaceBarItem .bp_SpaceBarItem_badge {
  background-color: hsl(var(--metrology-accent)) !important;
  color: hsl(var(--metrology-text-primary)) !important;
  top: 0;
  right: 0;
}

.bp_LeftPanel .spaceBar .bp_SpaceBarItem:hover .bp_SpaceBarItem_badge, .bp_LeftPanel .spaceBar .bp_SpaceBarItem.active .bp_SpaceBarItem_badge {
  top: 0;
  right: 0;
}

.bp_LeftPanel .spaceBar .bp_SpaceBarItem .bp_Avatar, .bp_LeftPanel .spaceBar .bp_SpaceBarItem img {
  filter: grayscale(1) opacity(0.75);
}

.bp_LeftPanel .spaceBar .bp_SpaceBarItem .bp_Avatar {
  width: 20px;
  height: 20px;
  border-radius: var(--metrology-round-corner-medium);
  filter: none !important;
  border: 1px solid hsl(var(--metrology-gray-6));
  background: none !important;
}

.bp_LeftPanel .spaceBar .bp_SpaceBarItem .bp_Avatar span {
  color: hsl(var(--metrology-text-secondary)) !important;
  mix-blend-mode: normal !important;
  line-height: 16px;
  font-size: 14px !important;
  opacity: 1 !important;
}


/* Header and Search Bar */

.bp_Header {
  margin-top: 32px;
  height: 48px;
  margin-bottom: -48px;
  left: 40px;
  margin-right: 40px;
  position: relative;
}

.bp_LeftPanel .bp_Header + div {
  margin: 8px 0;
}

.bp_LeftPanel .bp_Header + div > div:last-child {
  margin-right: 96px;
}

.bp_LeftPanel .searchBar {
  padding: 0 112px 0 16px;
}

.bp_CommandBarSearch {
  border-radius: var(--metrology-round-corner-medium); 
  background: hsl(var(--metrology-gray-2));
  /* border: 1px solid hsl(var(--metrology-gray-6)); */
}

.bp_CommandBarSearch .bp_CommandBarSearch_overlay.bp_CommandBarSearch_overlay--prefix {
  left: 12px;
}

.bp_CommandBarSearch input {
  width: 64px;
}

.bp_CommandBarSearch_shortcutHint {
  display: none;
}

.bp_LeftPanel .bp_Header + div > .mx_AccessibleButton {
  margin-right: 0;
}

.bp_LeftPanel .bp_Header + div > .mx_AccessibleButton .bp_Button2 {
  padding: 0 16px;
}

.bp_LeftPanel .bp_LeftPanel_contentWrapper--search .bp_LeftPanel_content:nth-child(2) > div > section {
  padding: 4px 0 0 16px;
}

div[data-type="SearchResultsTile"] .bp_RoomTile {
  margin-left: -16px;
}


/* Favorites */

.bp_LeftPanel .rooms .favourites {
  padding: 0 4px;
  /* margin-left: 4px; */
}

.bp_LeftPanel .rooms .favourites__tiles {
  gap: calc(var(--metrology-favorites-size) / 2);
  padding: 24px 20px;
  justify-content: center;
}

.bp_LeftPanel .rooms .favourites__icons {
  grid-template-columns: auto;
  margin-right: 0;
}

.bp_LeftPanel .rooms .favourites_avatar {
  height: var(--metrology-favorites-size);
}

.bp_LeftPanel .rooms .favourites .bp_RoomTile.small .outline .avatar .mx_BaseAvatar_initial {
  width: var(--metrology-favorites-size)!important;
  line-height: var(--metrology-favorites-size)!important;
}

.bp_LeftPanel .rooms .favourites .bp_RoomTile.small .outline .mx_BaseAvatar_image {
  width: var(--metrology-favorites-size)!important;
  height: var(--metrology-favorites-size)!important;
}

.bp_LeftPanel .rooms .favourites .mx_BaseAvatar_image {
  width: var(--metrology-favorites-size)!important;
  height: var(--metrology-favorites-size)!important;
}

.bp_LeftPanel .rooms .favourites_avatar--unread .mx_BaseAvatar {
  box-shadow: inset 0 0 0 1px hsl(0deg 0% 100% / 0%), 0 0 0 3px hsl(var(--metrology-accent));
}

.bp_LeftPanel .rooms .favourites .bp_RoomTile.active .outline .mx_BaseAvatar, .bp_LeftPanel .rooms .favourites .bp_RoomTile:focus .outline .mx_BaseAvatar {
  background: hsl(var(--metrology-accent)) !important;
  box-shadow: 0 0 0 4px hsl(var(--metrology-accent));
}


/* Avatars */

.bp_Avatar_bg_1, .bp_Avatar_bg_2, .bp_Avatar_bg_3 {
  background: linear-gradient(160deg,hsl(var(--metrology-gray-3)) 0%,hsl(var(--metrology-gray-2)) 100%)
}

.mx_BaseAvatar_initial {
  color: hsl(var(--metrology-text-primary));
  mix-blend-mode: color-dodge;
  margin-top: -2px;
}


/* Rooms List */

div[data-type="bp_RoomTile"] {
  padding: 0 0;
}

div[data-type="bp_RoomTile"]>div {
  border-radius: var(--metrology-round-corner-small);
  padding: 0 16px;
  background-color: transparent;
}

.bp_LeftPanel, .bp_new-conversation-view .bp_LeftPanel, .bp_LeftPanel .rooms_subtitle-container, .bp_RoomTile .actions-container .info {
  background-color: hsl(var(--metrology-gray-1)) !important;
}

.bp_LeftPanel .rooms_subtitle-container {
  min-height: 32px !important;
}

.bp_new-conversation-view .rooms_subtitle {
  font-weight: 600 !important;
}

.mx_MatrixChat_wrapper .rooms_subtitle {
  font-size: 16px;
  line-height: 16px;
  margin-bottom: 4px;
  color: hsl(var(--metrology-text-secondary)) !important;
  opacity: 1 !important;
  padding-left: 32px !important;
  font-weight: 600 !important;
}

.bp_RoomTile {
  height: 72px;
  margin: 1px 0
}

.bp_RoomTile:not(.small) {
  padding: 0;
}

.bp_RoomTile:not(.small) .outline {
  border-radius: var(--metrology-round-corner-small);
  padding: 8px 4px 8px 4px;
}

.bp_RoomTile:not(.small).active .outline {
  padding: 8px 4px 8px 0px;
  border-left: 4px solid hsl(var(--metrology-accent));
}

.bp_new-conversation-view .bp_RoomTile:not(.small):hover:not(.active) .outline, .bp_RoomTile:not(.small):hover:not(.active) .outline {
  background: hsl(var(--metrology-gray-3)) !important;
} 

.bp_RoomTile .name {
  padding: 2px 2px 4px 0;
  color: hsl(var(--metrology-text-primary));
}

.bp_RoomTile .preview {
  font-weight: normal;
  letter-spacing: 0;
}

.bp_RoomTile .preview>span {
  color: hsl(var(--metrology-text-secondary));
}

.bp_RoomTile:not(.small) .outline>div .indicator {
  margin-left: -10px !important;
}

.bp_RoomTile:not(.small) .indicator.unread {
  -webkit-mask-image: none !important;
  mask-image: none !important;
  background-color: hsl(var(--metrology-accent));
}

.bp_RoomTile .indicator.mention {
  -webkit-mask-image: none !important;
  mask-image: none !important;
  background-color: hsl(var(--metrology-highlight));
}

.bp_RoomTile:not(.small) .indicator {
  min-width: 4px !important;
  width: 4px !important;
  height: 72px !important;
  left: 0 !important;
  margin-left: 0 !important;
  left: 0 !important;
}

.bp_RoomTile.isUnread .preview>span {
  font-weight: 500;
  color: hsl(var(--metrology-highlight));
}

.bp_RoomTile .actions-container {
  margin-right: -30px;
}

.bp_RoomTile .actions-container .info {
  height: 72px;
  border-bottom-right-radius: 0;
  border-top-right-radius: 0;
  flex-direction: column-reverse;
}

.bp_RoomTile .timestamp {
  font-weight: 300;
  padding-bottom: 8px;
}

.bp_RoomTile .details .row>* {
  line-height: 1.25;
}

.bp_RoomTile:not(.small).active .outline, .bp_new-conversation-view .bp_RoomTile:not(.small).active .outline, .bp_RoomTile:not(.small).active .outline.electronTransparency, .bp_new-conversation-view .bp_RoomTile:not(.small).active .row.info, .bp_RoomTile:not(.small).active .row.info, .bp_new-conversation-view .bp_RoomTile:not(.small).active .row.info {
  background-color: hsl(var(--metrology-gray-3)) !important;
}

.bp_new-conversation-view .bp_RoomTile:not(.small):hover:not(.active) .outline .mask, .bp_RoomTile:not(.small):hover:not(.active) .outline .mask, .bp_RoomTile:not(.small).active .outline .mask {
  background: linear-gradient(90deg,transparent 50%,hsl(var(--metrology-gray-3)) 90%) !important;
}

.bp_new-conversation-view .bp_RoomTile:not(.small):hover:not(.active) .row.info, .bp_RoomTile:not(.small):hover:not(.active) .row.info {
  background: hsl(var(--metrology-gray-3)) !important;
}

.bp_RoomTile .tile_actions-button, .bp_RoomTile .tile_actions .bp_Button2 {
  border-radius: var(--metrology-round-corner-small);
}

.bp_RoomTile .tile_actions-button:hover {
  background-color: hsl(var(--metrology-gray-3));
}

.bp_RoomTile:not(.small):hover .tile_actions {
  background: hsl(var(--metrology-gray-3));
}

.bp_new-conversation-view .tile_actions-button:hover {
  background-color: inherit !important;
}

.bp_RoomTile .tile_actions-item {
  color: hsl(var(--metrology-text-secondary)) !important;
}
.bp_new-conversation-view .tile_actions-button:hover .tile_actions-item {
  color: hsl(var(--metrology-accent)) !important;
}

.bp_LeftPanel .rooms .unread_hint {
  padding: 32px 48px;
  color: hsl(var(--metrology-gray-6))
}

.mx_MatrixChat.resizing>.mx_ResizeHandle, .mx_MatrixChat>.mx_ResizeHandle:hover, .mx_RightPanel_ResizeWrapper .mx_ResizeHandle.resizing, .mx_RightPanel_ResizeWrapper .mx_ResizeHandle:hover {
  box-shadow: inset 4px 0 0 0 hsl(var(--metrology-accent));
}

.bp_new-conversation-view .mx_MatrixChat > .mx_ResizeHandle, .bp_new-conversation-view .mx_RightPanel_ResizeWrapper .mx_ResizeHandle {
  box-shadow: hsla(var(--metrology-gray-6),.25) 1px 0px 0px 0px inset !important;
}

.mx_MatrixChat > .mx_ResizeHandle, .mx_RightPanel_ResizeWrapper .mx_ResizeHandle {
  box-shadow: hsla(var(--metrology-gray-6),.25) 1px 0px 0px 0px inset;
}


/* Rooms List - Archived List */

.bp_ArchivedList_button {
  background: hsl(var(--metrology-gray-1)) !important;
  border-radius: var(--metrology-round-corner-small) !important;
  font-weight: 600 !important;
  font-size: 16px !important;
  line-height: 18px !important;
  color: hsl(var(--metrology-text-secondary)) !important;
  left: 8px !important;
  bottom: 4px !important;
  padding-right: 0 !important;
}

.bp_ArchivedList_button--expanded {
  left: 0 !important;
  padding-left: 16px;
}


/* Room Header */

.mx_RoomHeader {
  background: linear-gradient(to bottom, hsl(var(--metrology-background)), hsla(var(--metrology-background),.25));
  backdrop-filter: blur(10px);
  box-shadow: none;
  /* box-shadow: 0 12px 20px hsla(var(--metrology-gray-6), .5); */
  z-index: 1;
  position: absolute;
  width: 100%;
  top: 0;
  padding-top: 28px;
  margin-top: -32px;
}

.mx_RoomHeader:hover {
  max-height: none;
}

.mx_RoomHeader_wrapper {
  padding: 8px 16px 12px;
}

.mx_DecoratedRoomAvatar {
  margin: 0;
  padding: 0;
}

.mx_RoomHeader_name .mx_RoomHeader_nametext {
  color: hsl(var(--metrology-text-primary));
  font-size: 2.5rem;
  line-height: 1.25;
  border-radius: var(--metrology-round-corner-small);
  padding: 1px 12px 4px 4px;
}

.mx_DateSeparator>div {
  border: none;
  font-weight: 600;
  text-transform: uppercase;
  font-size: 1.15rem;
  letter-spacing: .75px;
  color: hsl(var(--metrology-text-secondary));
}
.mx_RoomView_dateSeparator_container .mx_DateSeparator>div {
  background: none;
}

.mx_RoomHeader_leftActions {
  order: 1;
}
.mx_RoomHeader_rightActions {
  order: 2;
}
.mx_RoomHeader_centerActions {
  padding-right: 16px;
  justify-content: flex-start;
}

.mx_RoomHeader:hover .mx_RoomHeader_centerActions.mx_RoomHeader_centerActions--topic {
  transform: none;
}

.mx_RoomHeader_topicContainer {
  transform: none;
  top: auto;
  bottom: 8px;
  position: relative;
  max-height: 0;
}

.mx_RoomHeader:hover .mx_RoomHeader_topicContainer {
  max-height: none;
}

.mx_RoomHeader_topic {
  padding: 0 16px 0 62px;
  text-align: left;
}

/* Messages */

.bp_MainPanel {
  z-index: 10;
  box-shadow: 0 4px 24px 0 hsla(var(--metrology-shadow));
  margin-left: 1px;
}

.bp_new-conversation-view .bp_MainPanel {
  background-color: hsl(var(--metrology-background)) !important;  
}

.mx_RoomView_body {
  box-shadow: none;
}

.mx_RoomView_body .mx_RoomView_timeline {
  margin-top: -56px;
  margin-bottom: -80px;
}

.mx_ScrollPanel .mx_RoomView_MessageList {
  background-color: hsl(var(--metrology-background));
}

.mx_RoomView_body .mx_RoomView_messagePanel, .mx_RoomView_body .mx_RoomView_messagePanelSearchSpinner, .mx_RoomView_body .mx_RoomView_messagePanelSpinner {
  padding-top: 56px;
  padding-bottom: 80px;
}


.mx_EventTile_message .mx_EventTile_line, .mx_EventTile_sticker .mx_EventTile_line, .mx_EventTile_messageOut .mx_EventTile_line {
  padding: 6px 10px;
}

.mx_EventTile_message, .mx_EventTile_sticker {
  margin-bottom: 8px;
}

.mx_EventTile_messageIn .mx_EventTile_line {
  /* background: hsl(var(--metrology-gray-3)); */
  color: hsl(var(--metrology-text-primary));
}

.mx_EventTile_messageIn .mx_EventTile_line--colourful {
  background: hsla( var(--default-avatar-hue), 100%, 70%, 0.07);
  background: hsla( var(--avatar-hue, var(--default-avatar-hue)), var(--message-bg-saturation), var(--message-bg-lightness), var(--message-bg-opacity) );
  color: hsla( var(--default-avatar-hue), 100%, 90%, 1);
  color: hsla( var(--avatar-hue, var(--default-avatar-hue)), var(--message-color-saturation), var(--message-color-lightness), var(--message-color-opacity) );
}

.mx_EventTile_messageOut:not(.mx_EventTile_emoji, .mx_EventTile_image, .mx_EventTile_sticker) .mx_EventTile_line,
.mx_EventTile_messageOut.mx_EventTile--colourful:not(.mx_EventTile_emoji):not(.mx_EventTile_image) .mx_EventTile_line,
.mx_EventTile_messageOut .mx_EventTile_line {
  background: linear-gradient(145deg,hsl(var(--metrology-accent)) 3%,hsl(var(--metrology-complement)) 97%) !important;
  color: hsl(var(--metrology-text-primary)) !important;
}

.mx_EventTile_lastInSection.mx_EventTile_message.mx_EventTile_messageIn .mx_EventTile_line::before {
  content: "◢" !important;
  position: absolute;
  bottom: -2px !important;
  left: -9px;
  color: hsl(var(--metrology-gray-3));
  color: hsla( var(--default-avatar-hue), 100%, 70%, 0.07);
  color: hsla( var(--avatar-hue, var(--default-avatar-hue)), var(--message-bg-saturation), var(--message-bg-lightness), var(--message-bg-opacity) );
  line-height: 1;
  transform: none !important;
  -webkit-mask: none !important;
  mask: none !important;
  background: none !important;
}

.mx_EventTile_lastInSection.mx_EventTile_messageOut:not(.mx_EventTile_emoji):not(.mx_EventTile_image):not(.mx_EventTile_file) .mx_EventTile_line--colourful:before {
  display: none !important;
}

.mx_EventTile_messageOut.mx_EventTile_lastInSection .mx_EventTile_line:before {
  display: none;
}

.mx_EventTile_lastInSection.mx_EventTile_message.mx_EventTile_messageOut .mx_EventTile_line::after {
  content: "◣";
  position: absolute;
  bottom: -2px;
  right: -9px;
  color: hsl(var(--metrology-complement));
  text-align: right;
  line-height: 1;
}

.mx_EventTile_emoji .mx_EventTile_line::before, .mx_EventTile_file .mx_EventTile_line::before, .mx_EventTile_sticker .mx_EventTile_line::before, .mx_EventTile_emoji .mx_EventTile_line::after, .mx_EventTile_file .mx_EventTile_line::after, .mx_EventTile_sticker .mx_EventTile_line::after {
  content: " " !important;
}

.mx_EmojiPicker, .bp_LinkPreview, .mx_ContextualMenu, .mx_RightPanel, .mx_MImageBody_thumbnail,
.mx_EventTile_message.mx_EventTile_messageIn .mx_MessageBody .mx_EventTile_line,
.mx_EventTile_sticker.mx_EventTile_messageIn .mx_MessageBody .mx_EventTile_line,
.mx_EventTile_message.mx_EventTile_messageOut .mx_MessageBody .mx_EventTile_line,
.mx_EventTile_sticker.mx_EventTile_messageOut .mx_MessageBody .mx_EventTile_line {
  border-radius: var(--metrology-round-corner-medium);
}

.mx_EventTile_message.mx_EventTile_firstInGroup .mx_EventTile_line, .mx_EventTile_sticker.mx_EventTile_firstInGroup .mx_EventTile_line {
  border-top-left-radius: var(--metrology-round-corner-medium)!important;
  border-top-right-radius: var(--metrology-round-corner-medium)!important;
}

.mx_EventTile_message.mx_EventTile_last .mx_EventTile_line, .mx_EventTile_message.mx_EventTile_lastInGroup .mx_EventTile_line, .mx_EventTile_message.mx_EventTile_lastInSection .mx_EventTile_line, .mx_EventTile_sticker.mx_EventTile_last .mx_EventTile_line, .mx_EventTile_sticker.mx_EventTile_lastInGroup .mx_EventTile_line, .mx_EventTile_sticker.mx_EventTile_lastInSection .mx_EventTile_line {
  border-bottom-left-radius: var(--metrology-round-corner-medium)!important;
  border-bottom-right-radius: var(--metrology-round-corner-medium)!important;
}

.mx_EventTile_message.mx_EventTile_messageIn .mx_EventTile_line {
  border-bottom-left-radius: 0!important;
}
.mx_EventTile_message.mx_EventTile_messageOut .mx_EventTile_line {
  border-bottom-right-radius: 0!important;
}

.mx_EventTile_messageOut.mx_EventTile--colourful .mx_EventTile_caption, .mx_EventTile_messageOut.mx_EventTile--colourful .mx_EventTile_content-caption {
  background: transparent !important;
}

.mx_EventTile--colourful.mx_EventTile_messageOut .mx_EventTile_reactionsContainer {
  background: transparent !important;
}

.mx_EventTile_message .mx_MessageTimestamp,
.mx_EventTile_sticker .mx_MessageTimestamp {
  font-size: 10px;
  font-weight: 300;
}

.mx_EventTile_messageIn .mx_SenderInfo_wrapper {
  margin-bottom: 6px;
}

.mx_EventTile_messageIn .mx_MessageBody .mx_EventTile_avatar {
  margin-right: 8px;
}

.mx_EventTile_messageIn.mx_EventTile_dm .mx_MessageBody {
  grid-template-columns: 0 minmax(auto,max-content) minmax(35%,auto);
}

.mx_EventTile_messageOut .mx_MessageBody {
  grid-template-columns: fit-content(24px) minmax(auto,max-content) minmax(25%,auto);
}

.mx_EventTile_messageIn .mx_MessageBody {
  grid-template-columns: 36px minmax(auto,max-content) minmax(25%,auto);
}

.mx_EventTile_message .mx_EventTile_line :not(.mx_MImageBody,.mx_MVideoBody) {
  max-width: none;
}

.mx_GroupLayout .mx_EventTile .mx_EventTile_line, .mx_GroupLayout .mx_EventTile .mx_EventTile_reply {
  line-height: 2.1rem;
}

.mx_EventTile_message .mx_EventTile_line, .mx_EventTile_sticker .mx_EventTile_line, .mx_EventTile_messageOut .mx_EventTile_line {
  padding: 6px 12px 8px;
}

.mx_EventTile_message .mx_MessageTimestamp, .mx_EventTile_sticker .mx_MessageTimestamp {
  color: hsl(var(--metrology-text-secondary));
}

.mx_EventTile_messageIn .mx_ReplyChain {
  background: hsla(var(--metrology-gray-1),.25)
}

.mx_ReplyChain_wrapper .mx_ReplyChain:last-child {
  margin-bottom: 4px;
  border-bottom-left-radius: var(--metrology-round-corner-medium);
  border-bottom-right-radius: var(--metrology-round-corner-medium);
}

.mx_ReplyChain_wrapper .mx_ReplyChain:first-child {
  border-top-left-radius: var(--metrology-round-corner-medium);
  border-top-right-radius: var(--metrology-round-corner-medium);
  margin-top: 4px;
}

li.mx_RoomView_myReadMarker_container {
  height: auto;
  justify-content: center;
  flex-direction: column;
}

hr.mx_RoomView_myReadMarker {
  border: 1px solid hsl(var(--metrology-accent));
  border-bottom: 0;
  margin-top: 8px;
  margin-bottom: 8px;
  top: 0;
}

.mx_RoomView_myReadMarker_newLabel {
  color: hsl(var(--metrology-accent));
  height: 24px;
  text-transform: uppercase;
  font-size: 1.15rem;
  font-weight: 700;
  letter-spacing: .75px;
  margin-bottom: 8px;
}

.mx_EventTile--colourful.mx_EventTile_messageIn .mx_ReactionsRowButton.mx_ReactionsRowButton_selected, .mx_EventTile--colourful.mx_EventTile_messageIn .mx_ReactionsRow_addReaction.mx_ReactionsRowButton_selected {
  background-color: hsl(var(--metrology-accent));
}

.mx_ReactionsRowButton {
  background: hsl(var(--metrology-gray-2));
  border: 0;
}

.mx_ReactionsRowButton:hover {
  background: hsl(var(--metrology-gray-3));
  box-shadow: none;
}

.mx_ReactionsRowButton.mx_ReactionsRowButton_selected {
  box-shadow: none;
  background: hsl(var(--metrology-accent));
}


/* Message Composer */

.mx_MessageComposer {
  background: linear-gradient(to bottom, hsla(var(--metrology-background),.5), hsl(var(--metrology-background)));
  backdrop-filter: blur(10px);
}

.mx_MessageComposer_wrapper {
  background: hsla(var(--metrology-gray-3),.5);
  border: .5px solid hsl(var(--metrology-gray-6));
  border-radius: var(--metrology-round-corner-medium);
}

.mx_SendMessageComposer .mx_BasicMessageComposer .mx_BasicMessageComposer_input>* {
  line-height: 2.1rem;
  margin-top: 1rem;
}

.mx_SendMessageComposer .mx_BasicMessageComposer .mx_BasicMessageComposer_input>:first-child {
  line-height: 2.1rem;
  margin-top: 0;
}

.mx_BasicMessageComposer .mx_BasicMessageComposer_input.mx_BasicMessageComposer_input_shouldShowPillAvatar {
  color: hsl(var(--metrology-text-primary));
}

.mx_MessageComposer_wrapper .mx_MessageComposer_send, .mx_MessageComposer_send {
  background: linear-gradient(160deg, hsl(var(--metrology-complement)) 3%, hsl(var(--metrology-accent)) 128.02%) !important;
  background-clip: text !important;
  text-fill-color: transparent !important;
  -webkit-background-clip: text !important;
  -webkit-text-fill-color: transparent !important;
}

.mx_EmojiPicker_category_label, .mx_EmojiPicker_preview_name {
  color: hsl(var(--metrology-text-heading));
  font-size: 1.15rem;
  font-weight: 600;
  margin: 8px 0;
  text-transform: uppercase;
  letter-spacing: .75px;
}

.mx_HomePage_default .mx_HomePage_default_buttons .mx_AccessibleButton {
  background: linear-gradient(160deg,hsl(var(--metrology-accent)) 3%,hsl(var(--metrology-complement)) 128.02%);
}

.mx_JumpToBottomButton {
  bottom: 92px;
}

.mx_JumpToBottomButton_unread .mx_JumpToBottomButton_scrollDown {
  background: hsl(var(--metrology-accent));
  border-radius: var(--metrology-round-corner-medium);
}

.bp_WhoIsTypingTile {
  height: 24px;
  z-index: 10;
  background: hsl(var(--metrology-background));
}


/* Message Alerts */

.mx_RoomView_statusArea {
  background-color: hsl(var(--metrology-background));
}

.mx_RoomStatusBar_unsentMessages>div[role=alert] {
  background-color: hsl(var(--metrology-gray-3));
  border-radius: var(--metrology-round-corner-medium);
}


/* Message Search */

.mx_RoomView_auxPanel, .mx_RoomView_lowerAuxPanel {
  z-index: 5;
}

.mx_SearchBar {
  background: linear-gradient(to bottom, hsl(var(--metrology-background)), hsla(var(--metrology-background),.25));
  backdrop-filter: blur(10px);
}

.mx_SearchBar .mx_SearchBar_button {
  border-bottom: 4px solid hsl(var(--metrology-accent));
  padding: 5px 0;
}

.mx_SearchBar .mx_SearchBar_unselected {
  border-color: transparent;
}

.mx_SearchBar .mx_SearchBar_input {
  background: hsla(var(--metrology-gray-3),.5);
  border: .5px solid hsl(var(--metrology-gray-6));
  border-radius: var(--metrology-round-corner-medium);
}


/* Panel and Dialogs */

.dark-panel {
  background-color: hsl(var(--metrology-gray-1));
}

.mx_MainSplit {
  background-color: hsl(var(--metrology-background));
}

.mx_RightPanel_headerButton_highlight:before {
  background-color: hsl(var(--metrology-accent))!important;
}

.mx_ContextualMenu, .bp_newChatDropdown {
  background-color: hsl(var(--metrology-gray-1));
  color: hsl(var(--metrology-text-primary));
  border-radius: var(--metrology-round-corner-medium);
}

.mx_IconizedContextMenu .mx_IconizedContextMenu_optionList .mx_AccessibleButton {
  font-size: 1.3rem;
  color: hsl(var(--metrology-text-primary));
}

.mx_IconizedContextMenu.mx_IconizedContextMenu_compact .mx_IconizedContextMenu_optionList>* {
  padding: 6px 16px 6px 11px;
}

.mx_RoomTile2_contextMenu .mx_IconizedContextMenu_icon:before {
  background: hsl(var(--metrology-text-secondary));
}


#confirmConnectionSearchInput, #newChatUserSearchInput {
  background-color: hsl(var(--metrology-gray-2));
  /* color: hsl(var(--metrology-text-primary)); */
  border-radius: var(--metrology-round-corner-medium);
}

.bp_newChatDropdown .contactItem.active, .bp_newChatDropdown .contactItem:hover {
  background-color: hsl(var(--metrology-gray-3));
  border-radius: var(--metrology-round-corner-medium);
}

.mx_Dialog {
  background-color: hsl(var(--metrology-gray-1));
  border-radius: var(--metrology-round-corner-medium);
}

.mx_Dialog_cancelButton {
  width: 12px;
  height: 12px;
  top: 2px;
}

.rc-dialog-wrap {
  background-color: hsla(var(--metrology-background),.66);
}

.commandbar-animation.commandbar-opened {
  background-color: hsl(var(--metrology-gray-2)) !important;
}

.commandbar-ek2juz {
  background: hsl(var(--metrology-background))
}


/* Settings */

.mx_Dialog_wrapper {
  top: 32px;
  left: 0;
  width: 100%;
  height: calc(100% - 64px);
  align-items: center;
  justify-content: space-around;
}

/* .mx_Dialog,  */
.mx_ChatNetworks_Dialog {
  width: 100%;
  height: 100%;
}

.mx_Dialog_title, .ChatNetworksDialog-leftbar h2 {
  color: hsl(var(--metrology-text-heading)) !important;
  font-weight: 600 !important;
  font-size: 1.25rem !important;
  text-transform: uppercase !important;
  letter-spacing: .5px !important;
}

.mx_Dialog_title {
  margin-top: 0;
  margin-bottom: 0;
}


.mx_TabbedView {
  padding: 0;
}

.mx_TabbedView_tabsOnLeft .mx_TabbedView_tabLabel_active {
  background-color: transparent;
  border-left: 4px solid hsl(var(--metrology-accent));
  color: hsl(var(--metrology-text-primary));
}

.mx_TabbedView_tabsOnLeft .mx_TabbedView_maskedIcon {
  margin-left: 16px;
}

.mx_TabbedView_tabsOnLeft .mx_TabbedView_tabLabel_active .mx_TabbedView_maskedIcon:before {
  background-color: hsl(var(--metrology-accent));
}
.mx_TabbedView_maskedIcon::before {
  background-color: hsl(var(--metrology-text-secondary));
}

.mx_TabbedView_tabLabel {
  border-radius: var(--metrology-round-corner-medium);  
  border-left: 4px solid transparent;
  margin-bottom: 4px;
  border-radius: var(--metrology-round-corner-small);
  height: 24px;
}

.mx_SettingsTab {
  color: hsl(var(--metrology-text-primary));
}

.mx_SettingsTab_heading {
  font-size: 3rem;
  color: hsl(var(--metrology-text-heading));
}

.mx_TabbedView_tabsOnLeft .mx_TabbedView_tabLabels {
  width: 220px;
  max-width: 220px;
  color: hsl(var(--metrology-text-primary));
}

.ChatNetworksDialog-leftbar .tabbar .tab .name {
  color: hsl(var(--metrology-text-primary));
  font-weight: normal;
  font-size: 14px;
}

.ChatNetworksDialog-content .panel-title {
  color: hsl(var(--metrology-text-heading));
  font-weight: 600;
}

.ChatNetworksDialog-leftbar .tabbar .tab.selected, .ChatNetworksDialog-leftbar .tabbar .tab.selected:hover {
  border-left: 4px solid hsl(var(--metrology-accent));
  padding-left: 28px;
  background: hsl(var(--metrology-gray-3)) !important;
}


.mx_SettingsTab_subheading {
  color: hsl(var(--metrology-text-heading));
}

.mx_Field label, .mx_UserNotifSettings_gridColumnLabel {
  color: hsl(var(--metrology-text-secondary));
}


.mx_AccessibleButton_hasKind:not(.mx_AccessibleButton_kind_link):not(.mx_AccessibleButton_kind_link_inline):not(.mx_MatrixChat_splashButtons),
.mx_Dialog_buttons button, 
.mx_Dialog_buttons input[type=submit],
.mx_Dialog button,
.mx_Dialog input[type=submit],
.mx_Dropdown_input,
.bp_Button2Secondary {
  box-shadow: inset 0 0 0 1px hsl(var(--metrology-gray-6))!important;
  border: none;
  background: hsl(var(--metrology-gray-3));
  border-radius: var(--metrology-round-corner-medium);
  color: hsl(var(--metrology-text-primary));
}

.mx_Dialog_buttons button:hover, .mx_Dialog button:hover {
  background: hsl(var(--metrology-gray-3));
}

.mx_Dialog_buttons button:active, .mx_Dialog button:active {
  background: hsl(var(--metrology-gray-2));
}

.mx_AccessibleButton_kind_primary, .mx_Dialog_buttons button.mx_Dialog_primary, .mx_Dialog_buttons input[type=submit].mx_Dialog_primary, .mx_Dialog button.mx_Dialog_primary, .mx_Dialog input[type=submit].mx_Dialog_primary {
  box-shadow: none!important;
  background: hsl(var(--metrology-accent));
}

.mx_AccessibleButton_kind_primary:hover, .mx_Dialog_buttons button.mx_Dialog_primary:hover, .mx_Dialog button.mx_Dialog_primary:hover {
  background: hsl(var(--metrology-highlight));
}

.mx_AccessibleButton_kind_primary:active, .mx_Dialog_buttons button.mx_Dialog_primary:active, .mx_Dialog button.mx_Dialog_primary:active {
  background: hsl(var(--metrology-accent));
}


.mx_Checkbox.mx_Checkbox_kind_solid input[type=checkbox]:checked+label>.mx_Checkbox_background {
  background: hsl(var(--metrology-accent));
  border-color: hsl(var(--metrology-accent));
}


.mx_StyledRadioButton input[type=radio] + div {
  border-color: hsl(var(--metrology-gray-6));
}
.mx_StyledRadioButton_checked {
  border-color: hsl(var(--metrology-accent));
}
.mx_StyledRadioButton input[type=radio]:checked+div {
  border-color: hsl(var(--metrology-accent));
  background: hsl(var(--metrology-accent));
}
.mx_StyledRadioButton input[type=radio]:checked+div>div {
  background: hsl(var(--metrology-gray-1));
}


.mx_AccessibleButton_kind_link, a:hover, a:link, a:visited, .mx_SettingsTab a {
  color: hsl(var(--metrology-accent));
}


.mx_ToggleSwitch {
  width: 4rem;
  height: 1.5rem;
  padding: .2rem;
  border: 1px solid hsl(var(--metrology-text-secondary));
  background-color: transparent;
}

.mx_ToggleSwitch.mx_ToggleSwitch_on {
  background-color: hsl(var(--metrology-accent));
  border: 1px solid hsl(var(--metrology-accent));
}

.mx_ToggleSwitch_ball {
  width: 1.3rem;
  height: 1.3rem;
  left: 0;
  margin: .1rem;
  background: hsl(var(--metrology-text-secondary));
}

.mx_ToggleSwitch.mx_ToggleSwitch_on>.mx_ToggleSwitch_ball {
  left: calc(100% - 1.5rem);
  background: hsl(var(--metrology-gray-1));
}


.mx_SettingsTab_section .mx_SettingsFlag {
  margin-right: 80px;
  margin-bottom: 12px;
}


select {
  background-color: hsl(var(--metrology-gray-3));
}
.mx_Field:focus-within {
  border-color: hsl(var(--metrology-accent));
}
.mx_Field input:focus + label, .mx_Field select:focus + label, .mx_Field textarea:focus + label {
  color: hsl(var(--metrology-accent));
}

.mx_Dropdown_menu {
  border-color: hsl(var(--metrology-accent));
  border-radius: var(--metrology-round-corner-medium);
}



/* Tooltip */

.bp_PopperTooltip {
  --tooltipBackground: hsla(var(--metrology-gray-3),.5);
  --tooltipBorder: hsla(var(--metrology-gray-6),.25);
  border-radius: var(--metrology-round-corner-small);
  color: hsl(var(--metrology-text-primary));
  box-shadow: 0 4px 12px 0px hsla(var(--metrology-shadow));
}

.tile_actions-tooltip.bp_PopperTooltip .tile_actions {
  gap: 0 !important;
  grid-gap: 0 !important;
  width: 24px !important;
  margin: -4px;
}

.tile_actions-tooltip.bp_PopperTooltip .tile_actions-button {
  border-radius: var(--metrology-round-corner-small);
  backdrop-filter: blur(8px);
  background-color: hsla(var(--metrology-gray-6),.25);
}

.mx_Tooltip {
  border-radius: 0;
  background-color: var(--tooltipBackground);
  backdrop-filter: blur(8px);
  border: 1px solid hsla(var(--metrology-gray-6),.25);
  padding: 8px;
}

.bp_PopperTooltip.undefined {
  backdrop-filter: blur(8px);
  margin: -44px 0 0 48px;
  border: 1px solid var(--tooltipBorder);
}

.bp_PopperTooltip.undefined .bp_PopperTooltipArrow {
  display: none
}


/* Toast Container */

.mx_ToastContainer {
  top: auto !important;
  bottom: 48px;
  left: 64px;
  padding: 0;
}

.mx_ToastContainer .mx_Toast_toast {
  border-radius: var(--metrology-round-corner-medium);
  padding: 8px 12px 12px 12px !important;
  background-color: hsl(var(--metrology-gray-2));
}