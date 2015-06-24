desc "Generate new news"
task :generate_news, :filename do |t, args|
  filename = args.filename
  open('source/news/base.html.erb') { |source|
    open("source/news/#{Time.now.strftime("%Y-%m-%d")}.html.erb", 'w') { |dest|
      dest.write(source.read)
    }
  }
  open('data/news.yml', 'a') do |f|
    f.write("  - date: #{Time.now.strftime("%Y-%m-%d").gsub('-', '.')}\n    title: #{filename}\n    content: |-\n      ")
  end
end
