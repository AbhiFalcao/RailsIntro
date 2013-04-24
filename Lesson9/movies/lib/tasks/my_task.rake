namespace :db do
	task :initialize => :environment do
		puts Movie.column_names
	end	

	desc "Recreating Database"
	task :recreate => %w(db:drop db:create db:migrate db:seed) 
end