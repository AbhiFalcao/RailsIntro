################################################################################
#
# Introduction to Ruby on Rails
#
# Exercise hashes
#
################################################################################

# Continuing with our Magic 8-Ball, let's switch it up a bit. A Magic 8-Ball includes 20 answers, which can be construed as being
#    "positive", "negative" or "neutral". You will need this to complete the activity: http://en.wikipedia.org/wiki/Magic_8-Ball.
# encoding : UTF-8
# 1. Create a Hash called `responses` that has the key :positive and its value pair
#    includes all of the positive answers from the Wikipedia page as an
#    Array.
	responses = {positive: ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely", "You may rely on it", "As I see it, yes","Most likely","Outlook good","Yes","Signs point to yes"]} 
#    Print the Array to the screen.
	#puts responses
    #puts "Positive Responses: #{responses[:positive].to_s}"



# 2. Now that you have created your basic Hash, go and add the negative
#    and neutral responses as well by creating new keys.
responses.merge!(negative: [" Don't count on it","My reply is no","My sources say no","Outlook not so good","Very doubtful"])
responses.merge!(neutral: ["Reply hazy, try again","Ask again later","Better not tell you now","Cannot predict now","Concentrate and ask again"])

print responses

# 3. Finally, we can now play around with our Hash and Arrays to find
#    out some information about them.
#
#    Check to see if the Hash has the key `:positive`
print responses.has_key?(:positive)


# 4. Check to see if it has the key `:cruel`
print responses.has_value?("cruel")


# 5. Play around with more options by looking at the RubyDoc info:
#    http://www.ruby-doc.org/core-1.9.3/Hash.html 

