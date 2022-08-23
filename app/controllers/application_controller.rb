class ApplicationController < Sinatra::Base
  set default_content_type: "application/json"

  # =begin
  #   RESTful routing is a convention of how we name our routes, so that the next dev can easier understand

  #   NAME    HTTP    URL
  #   ======================
  #   INDEX   GET     '/bakeries'
  #   SHOW    GET     '/bakeries/:id'
  #   NEW     GET     '/bakeries/new'
  #   CREATE  POST    '/bakeries'
  #   EDIT    GET     '/bakeries/:id/edit'
  #   UPDATE  PATCH   '/bakeries/:id'
  #   DESTROY DELETE  '/bakeries/:id'
  # =end

  get "/" do
    "hi"
  end

  # get "/bakeries" do
  #   bakeries = Bakery.all
  #   bakeries.to_json
  # end

  # get "/bakeries/:id" do
  #   bakery = Bakery.find(params[:id])
  #   bakery.to_json(include: :baked_goods)
  # end

  # get "/baked_goods/by_price" do
  #   # see the BakedGood class for the  method definition of `.by_price`
  #   baked_goods = BakedGood.by_price
  #   baked_goods.to_json
  # end

  # get "/baked_goods/most_expensive" do
  #   # see the BakedGood class for the  method definition of `.by_price`
  #   baked_good = BakedGood.by_price.first
  #   baked_good.to_json
  # end

  # post "/bakeries" do
  #   new_bake = Bakery.create(
  #     name: params["name"],
  #   )
  #   new_bake.to_json
  # end

  # post "/baked_goods" do
  #   if Bakery.find_by(id: params["bakery_id"]) 
  #     new_baked_good = BakedGood.create(
  #       name: params["name"],
  #       price: params["price"],
  #       bakery_id: params["bakery_id"],
  #     )
  #     new_baked_good.to_json
  #   else 
  #     {"error": "nice Try"}.to_json
  #   end
  # end

  # patch '/bakeries/:id' do
  #   found_bakery = Bakery.find_by(id: params[:id])

  #   if found_bakery
  #     found_bakery.update(name: params[:name])
  #     found_bakery.to_json
  #   else 
  #     {"error": "ajdsghfvcahjkfsbv"}.to_json
  #   end
  # end

  # delete '/baked_goods/:id' do
  #   found_baked_good = BakedGood.find_by(id: params[:id])
    
  #   if found_baked_good

  #     # !FIRST CASE: RETURN NOTHING
  #     found_baked_good.delete
  #     status 204
  #     # head :no_content
  #     # This means, we don't need the second .then in our fetch
  #     # fetch('...../baked_goods/4, options)
  #     # .then((empty) => do stuff)
      
  #     # !SECOND CASE: RETURN THE WHOLE INSTANCE WE'VE DELETED
  #     # found_baked_good.delete
  #     # found_baked_good.to_json

  #     # !THIRD CASE: RETURN THE WHOLE INSTANCE WE'VE DELETED
  #     # found_baked_good.delete
  #     # {id: found_baked_good.id}.to_json

  #   else
  #     status 404
  #     {"error": "ajdsghfvcahjkfsbv"}.to_json
  #   end

  # end

end
