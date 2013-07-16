group :development, :test do
  gem 'pry-rails'           # Causes rails console to open pry
                            # https://github.com/rweng/pry-rails
  gem 'pry-debugger'        # Adds step, next, finish, and continue commands and breakpoints
                            # https://github.com/nixme/pry-debugger
  gem 'pry-stack_explorer'  # Navigate the call-stack
                            # https://github.com/pry/pry-stack_explorer
  gem 'annotate'            # Annotate all your models, tests, fixtures, and factories
                            # https://github.com/ctran/annotate_models
  gem 'quiet_assets'        # Turns off the Rails asset pipeline log
                            # https://github.com/evrone/quiet_assets
  gem 'better_errors'       # Replaces the standard Rails error page with a much better and more useful error page
                            # https://github.com/charliesome/better_errors
  gem 'binding_of_caller'   # Advanced features for better_errors advanced features (REPL, local/instance variable inspection, pretty stack frame names)
                            # https://github.com/banister/binding_of_caller
  gem 'meta_request'        # Supporting gem for Rails Panel (Google Chrome extension for Rails development).
                            # https://github.com/dejan/rails_panel/tree/master/meta_request
  gem 'rails-erd'           # Diagrams your models. NOTE! $ brew install graphviz
                            # https://github.com/voormedia/rails-erd
end