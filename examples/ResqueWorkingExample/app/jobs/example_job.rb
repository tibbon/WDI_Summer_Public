module ExampleJob
  @queue = :default

  def self.perform
  	puts "This job happened in the background outside of Rails."
  	puts "Any code put here has access to the Rails environment."
  end
end