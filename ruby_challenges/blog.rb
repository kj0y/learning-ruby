class Blog

  @@array = Array.new
  @@total_blogposts = 0

  def self.current_count
    if @@total_blogposts == 0
      puts "There aren't any blog posts."
    elsif @@total_blogposts < 2
      puts "There is currently #{@@total_blogposts} blog post."
    else
      puts "There are currently #{@@total_blogposts} blog posts."
    end
  end
end


class BlogPost < Blog
  attr_accessor :title, :author, :date, :content

  def self.publish
    @@array.each do |post|
      puts "Title:\n #{post.title}"
      puts "Author: \n #{post.author}"
      puts "Publish Date:\n #{post.date}"
      puts "Body:\n #{post.content}"
      puts ""
    end
  end

  def initialize(title, author, date, content)
    @title = title
    @author = author
    @date = date
    @content = content
    @@array << self
    @@total_blogposts += 1
  end

end


puts "Do you want to create a blog post? [Y/N]"
create_new_post = gets.chomp.downcase

while (create_new_post == "y")
  puts "Title:"
  @title = gets.chomp
  puts "Author:"
  @author = gets.chomp
  puts "Date:"
  @date = gets.chomp
  puts "Content:"
  @content = gets.chomp
  newpost = BlogPost.new(@title, @author, @date, @content)

  puts "Do you want to create another blog post? [Y/N]"
  create_new_post = gets.chomp.downcase
end

puts BlogPost.current_count

BlogPost.publish