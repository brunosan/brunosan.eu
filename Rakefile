desc "publish updated site to gh-pages"
  task :deploy, [:commit_message]  do |t, args|
    if args.commit_message
      puts "Committing and pushing_site into gh-pages branch with message: #{args.commit_message}"
      system "git checkout master"
      system "git add -A && git commit -m \"#{args.commit_message}\""
      system "git checkout -f gh-pages"
      system "git cp -rf _site/* ."
      system "git rm -rf _site"
      system "git add -A && git commit -m \"#{args.commit_message}\""
      system "git checkout master"
      system "git push"
    else
      puts "Missing commit_message"
    end
  end


desc "give title as argument for draft post"
# usage rake draft["Post Title Goes Here"]
# category is optional
task :draft, [:title, :category] do |t, args|
  filename = "#{Time.now.strftime('%Y-%m-%d')}-#{args.title.gsub(/\s/, '-').downcase}.md"
  path = File.join("_drafts", filename)
  if File.exist? path; raise RuntimeError.new("Won't clobber #{path}"); end
  File.open(path, 'w') do |file|
    file.write <<-EOS
---
layout: post
title: #{args.title}
status: draft
tags:
- 
---
EOS
    end
    puts "Now opening #{path} in TextMate..."
    system "mate #{path}"
end