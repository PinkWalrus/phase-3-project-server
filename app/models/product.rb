class Product < ActiveRecord::Base
    belongs_to :category

    def add_category(category_name)
        category = Category.find_or_create_by(name: category_name)
        self.category = category
        self.save
    end
end