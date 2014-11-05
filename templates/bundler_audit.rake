if Rails.env.development?
  require "bundler/audit/cli"

  namespace :bundler do
    task :audit do
      %w(update check).each do |command|
        Bundler::Audit::CLI.start [command]
      end
    end
  end
end
