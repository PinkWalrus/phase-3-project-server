class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get '/category' do
    categories = Category.all
    categories.to_json
  end

  get '/products' do
    products = Product.all.order(id: :desc)
    products.to_json(:include => :category)
  end

  post '/products' do
    # category = Category.find_or_create_by(name: params[:category])
    product = Product.create(
      name: params[:name],
      desc: params[:desc],
      isInCart: params[:isInCart],
      # category_id: category.id
    )
    product.add_category(params[:category])
    product.to_json(:include => :category)
  end

  patch '/products/:id' do
    product = Product.find(params[:id])
    product.update(isInCart: params[:isInCart])
    product.to_json(:include => :category)
  end

  delete '/products/:id' do
    product = Product.destroy(params[:id])
    product.to_json(:include => :category)
  end
  
end
