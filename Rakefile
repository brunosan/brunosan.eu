desc "publish updated site to gh-pages"
  task :deploy, [:commit_message]  do |t, args|
    if args.commit_message
      puts "Committing and pushing_site into gh-pages branch with message: #{args.commit_message}"
      system "git checkout master"
      system "git add -A && git commit -m \"#{args.commit_message}\""
      system "git checkout gh-pages"
      system "git checkout master -- _site"
      system "mv _site/* ."
      system "git add -A && git commit -m \"#{args.commit_message}\""
      system "git checkout master"
      system "git push origin master"
      system "git push origin gh-pages"
    else
      puts "Missing commit_message"
    end
  end


desc "give title as argument for draft post"
# usage rake draft["Post Title Goes Here"]
# category is optional
task :draft, [:title, :category] do |t, args|
  filename = "#{Time.now.strftime('%Y-%m-d')}-#{args.title.gsub(/\s/, '-').downcase}.md"
  path = File.join("_drafts", filename)
  if File.exist? path; raise RuntimeError.new("Won't clobber #{path}"); end
  File.open(path, 'w') do |file|
    file.write <<-EOS
---
layout: post
title: #{args.title}
date: #{Time.now.strftime('%Y-%m-d %k:%M:%S')}
tags:
- 
---
EOS
    end
    puts "Now opening #{path} in TextMate..."
    system "mate #{path}"
end