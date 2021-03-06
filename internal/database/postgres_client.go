package database

import (
	"database/sql"
	"fmt"

	_ "github.com/lib/pq"
)

type PostgresClient struct {
	*sql.DB
}

const (
	host     = "localhost"
	port     = 5432
	user     = "postgres"
	password = ""
	dbname   = "movie-suggester"
)

func NewPostgreClient() *PostgresClient {
	psqlInfo := fmt.Sprintf("host=%s port=%d user=%s password=%s dbname=%s sslmode=disable", host, port, user, password, dbname)
	db, err := sql.Open("postgres", psqlInfo)
	if err != nil {
		panic(err)
	}
	err = db.Ping()

	if err != nil {

	}
}
