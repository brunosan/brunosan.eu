desc "publish updated site to gh-pages"
#check _site exists

  task :deploy, [:commit_message, :options]  do |t, args|
    if args.commit_message
      puts "Committing and pushing_site into gh-pages branch with message: #{args.commit_message}"
      system "./add-filenames-to-posts.sh"
      system "jekyll #{args.options}"
      system "git add -A && git commit -m \"#{args.commit_message}\""
      system "git checkout -f gh-pages"
      system "mkdir temp"
      system "mv * temp/"
      system "mv temp/_site/* ."
      system "rm -rf temp"
      system "git add -A && git commit -m \"#{args.commit_message}\""
      system "git push -f origin gh-pages"
      system "git checkout master"
      system "git push "
      system "echo 'Jekyll #{args.options} site has been delpoyed at #{Time.now}' | mail -s 'brunosan.eu -> #{args.commit_message}' brunosan@gmail.com"
    else
      puts "Missing commit_message"
    end
  end


desc "give title as argument for draft post"
# usage rake draft["Post Title Goes Here"]
# category is optional
task :draft, [:title, :category] do |t, args|
  filename = "#{Time.now.strftime('%Y-%m-%d')}-#{args.title.gsub(/\s/, '-').downcase}.md"
  path = File.join("_posts", filename)
  if File.exist? path; raise RuntimeError.new("Won't clobber #{path}"); end
  File.open(path, 'w') do |file|
    file.write <<-EOS
---
layout: post
title: #{args.title}
published: false
tags:
- 
---
EOS
    end
    puts "Now opening #{path} in TextMate..."
    system "vi #{path}"
end
