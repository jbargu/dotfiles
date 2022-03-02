fun! tmuxline#presets#jbargu_preset#get()
  let bar = tmuxline#new()

  "call bar.left.add('a', '#S')
  "call bar.left.add_left_sep()

  call bar.right.add_right_sep()
  call bar.right.add('y', '%Y-%m-%d')
  call bar.right.add_right_alt_sep()
  call bar.right.add('y', '#[bg=#(pomodoro tmux-color --active default --done colour7)]%H:%M')
  call bar.right.add_right_sep()

  call bar.right.add('z', '#S')

  call bar.win.add('win.dim', '#I')
  call bar.win.add_left_alt_sep()
  call bar.win.add('win', '#W')

  call bar.cwin.add_left_sep()
  call bar.cwin.add('cwin.dim', '#I')
  call bar.cwin.add_left_alt_sep()
  call bar.cwin.add('cwin', '#W')
  call bar.cwin.add_left_sep()

  let bar.options['status-justify'] = 'left'
  let bar.win_options['window-status-activity-style'] = 'none'

  return bar
endfun

