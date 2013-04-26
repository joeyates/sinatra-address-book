guard :unicorn, :daemonize => true do
  `git ls-files`.each_line { |s| s.chomp!; watch s }
end

