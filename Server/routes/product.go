package routes

import (
	"waysbuck/handlers"
	mysql "waysbuck/pkg"
	"waysbuck/pkg/middleware"
	"waysbuck/repositories"

	"github.com/gorilla/mux"
)

func ProductRoutes(r *mux.Router) {
	productRepository := repositories.RepositoryProduct(mysql.DB)
	h := handlers.HandlerProduct(productRepository)

	// r.HandleFunc("/products", h.FindProducts).Methods("GET")
	r.HandleFunc("/products", middleware.Auth(h.FindProducts)).Methods("GET")

	r.HandleFunc("/product/{id}", h.GetProduct).Methods("GET")

	r.HandleFunc("/product", middleware.Auth(h.CreateProduct)).Methods("POST")
	//r.HandleFunc("/product", h.CreateProduct).Methods("POST")

	r.HandleFunc("/product/{id}", h.UpdateProduct).Methods("PATCH")
	r.HandleFunc("/product/{id}", h.DeleteProduct).Methods("DELETE")

}
