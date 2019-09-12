#!/usr/bin/env ruby

require 'pathname'
require 'date'
require 'rubygems'
require 'thor'

def latestBlogPost
  Dir[File.join(__dir__, "../_posts", "*")].sort.last
end

def write(file_name, text)
  file_path = File.join(__dir__, "../_posts", file_name)
  File.open(file_path, "w") do |io|  
    io.write(text)
  end
end

def slug_from_title(title)
  file_date = Date.today.strftime("%Y-%m-%d")
  slug = title.gsub(" ", "-")
  slug = slug.gsub("'", "")
  slug = slug.gsub(".", "")
  slug = slug.gsub("?", "")
  slug = slug.gsub("!", "")
  "#{file_date}-#{slug}.markdown"
end

def titleDate
  Time.now.strftime("%Y-%m-%d %H:%M:00")
end

class Blog < Thor
  desc "create", "Default task"
  method_option :title, :aliases => "-t", :desc => "Blog post title", :required => true
  def create
    title_date = titleDate
    slug = slug_from_title(options[:title])

    header = <<-HEADER
---
layout: post
title:  "#{options[:title]}"
date:   #{title_date}
---
    HEADER

    write(slug, header)
  end

  desc "rename", "Retitles the blog post"
  method_option :title, :aliases => "-t", :desc => "Blog post title", :required => true
  def rename
    contents = File.read(latestBlogPost)
    contents = contents.gsub(/date:.*\n/, "date:   #{titleDate}\n")
    contents = contents.gsub(/title:.*\n/, "title:  \"#{options[:title]}\"\n")
    File.delete(latestBlogPost)
    write(slug_from_title(options[:title]), contents)
  end

  desc "touch", "Update latest blog post to now"
  def touch
    contents = File.read(latestBlogPost)
    contents = contents.gsub(/date:.*\n/, "date:   #{titleDate}\n")
    title = contents.match(/title:.*"(.*)"\n/)[1]
    File.delete(latestBlogPost)
    write(slug_from_title(title), contents)
  end

  default_task :create
end

Blog.start