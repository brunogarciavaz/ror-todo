prep-backend:
	bundle update --bundler && bundle update && npm install && bin/rails db:migrate RAILS_ENV=development

start-frontend:
	bin/rails server	
