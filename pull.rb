#!/usr/bin/ruby
require 'redditkit'
cl = RedditKit::Client.new 'TWOJLOGIN','TWOJPASS'
npageid = ''

loop do
 this_page_links = cl.links 'programming', after: npageid, limit: 100
 this_page_links.results.each do |link|
   puts "#{link.title} posted on #{link.created_at} by #{link.author}"
 end
 npageid = this_page_links.after
 sleep 3 # make reddit admins happy (przeczytaj API rules)
end
