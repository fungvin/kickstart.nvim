return {
  'nvim-tree/nvim-web-devicons', 
  opts = {
    override_by_extension = {
      ['js'] = {
        icon = '',
        name = 'JavaScript'
      },
      ['ts'] = {
        icon = '',
        name = 'TypeScript',
        color  = '#007ACC'
      }
    }
  },
}
