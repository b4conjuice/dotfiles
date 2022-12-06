module.exports = {
  config: {
    updateChannel: 'stable',
    fontSize: 20,
    windowSize: [1080, 720],
    fontFamily:
      '"Fira Code","Dank Mono","Inconsolata for Powerline", monospace',
    cursorShape: 'BLOCK',
    wickedBorder: false,
    padding: '10px',
    shell: '/bin/zsh',
    shellArgs: ['--login'],
    opacity: 0.85,
  },

  plugins: ['hyperterm-cobalt2-theme', 'hyper-opacity'],

  keymaps: {
    'pane:next': 'ctrl+h',
    'pane:prev': 'ctrl+l',
    'pane:splitRight': ['command+d', 'ctrl+n'],
    'pane:splitDown': ['command+shift+d', 'ctrl+shift+n'],
    'pane:close': ['command+w', 'ctrl+w'],
  },
}
