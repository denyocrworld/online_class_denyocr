package model

import "gorm.io/gorm"

type Product struct {
	gorm.Model
	ProductName string  `json:"product_name"`
	Description string  `json:"description"`
	Price       float64 `json:"price"`

	ProductCategory   ProductCategory // Relasi dengan ProductCategory
	ProductCategoryID int             `json:"product_category_id"`
}
