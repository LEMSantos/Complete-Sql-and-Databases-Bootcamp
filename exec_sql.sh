set -o allexport; source .env; set +o allexport

psql -U postgres -p POSTGRES_PASSWORD -h localhost --port=3000 -d "$1" -f "$2"
