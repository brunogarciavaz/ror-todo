prep-backend:
	cd app-backend && bundle update --bundler && bundle update && npm install && bin/rails db:migrate RAILS_ENV=development

start-frontend:
	cd app-backend && bin/rails server	