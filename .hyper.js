module.exports = {
  config: {
    updateChannel: 'stable',
    fontSize: 20,
    windowSize: [1080, 720],
    fontFamily: '"Fira Code","Dank Mono","Inconsolata for Powerline", monospace',
    cursorShape: 'BLOCK',
    wickedBorder: false,
    padding: '10px',
    shell: '/bin/zsh',
    shellArgs: ['--login'],
  },

  plugins: ['hyperterm-cobalt2-theme'],
};
