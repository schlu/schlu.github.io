#!/usr/bin/env ruby

require 'pathname'
require 'date'
require 'rubygems'
require 'thor'

class NewBlog < Thor
  desc "create", "Default task"
  method_option :title, :aliases => "-t", :desc => "Blog post title", :required => true
  def create
    tomorrow = Date.today + 1
    file_date = tomorrow.strftime("%Y-%m-%d")
    title_date = file_date + " 11:00:00"
    slug = options[:title].gsub(" ", "-")
    slug = slug.gsub("'", "")
    slug = slug.gsub(".", "")
    slug = "#{file_date}-#{slug}.markdown"
    file_path = File.join(__dir__, "../_posts", slug)

    header = <<-HEADER
---
layout: post
title:  "#{options[:title]}"
date:   #{title_date}
---
    HEADER

    File.open(file_path, "w") do |io|  
      io.write(header)
    end
  end

  default_task :create
end

NewBlog.start