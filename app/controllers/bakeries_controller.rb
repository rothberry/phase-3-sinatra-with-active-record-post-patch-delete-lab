class BakeriesController < ApplicationController

  get "/bakeries" do
    bakeries = Bakery.all
    bakeries.to_json
  end

  get "/bakeries/:id" do
    bakery = Bakery.find(params[:id])
    bakery.to_json(include: :baked_goods)
  end

  post "/bakeries" do
    new_bake = Bakery.create(
      name: params["name"],
    )
    new_bake.to_json
  end

  patch '/bakeries/:id' do
    found_bakery = Bakery.find_by(id: params[:id])

    if found_bakery
      found_bakery.update(name: params[:name])
      found_bakery.to_json
    else 
      {"error": "ajdsghfvcahjkfsbv"}.to_json
    end
  end


end