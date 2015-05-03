namespace :example do

  def get_url
    # {
    #   "time": "01:41:41 PM",
    #   "milliseconds_since_epoch": 1430660501170,
    #   "date": "05-03-2015"
    # }
    u = "http://date.jsontest.com/" 
  end

  desc 'this is going to spit out a string from a url' 
  task :show_json, [:response] => :environment do |t, args|
    include Foo
    puts "starting"  
    puts "we are looking to curl the following endpoint:#{get_url}"
    Foo.bar(args.response)
    puts "ending"  
  end

end

