#!/usr/bin/env ruby

proj_files = ARGV.map do |a|
  File.expand_path("~/.tmproj/#{a}.tmproj")
end

if ARGV.any? && proj_files.all?{|p| File.exist?(p) }
  exec %|open "#{proj_files.join('" "')}"|
else
  bash_args = ARGV.map{|s| s.gsub(' ', '\\ ') }
  exec %|mate #{bash_args.join(" ")}|
end
