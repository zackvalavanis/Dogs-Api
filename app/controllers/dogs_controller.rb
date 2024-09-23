class DogsController < ApplicationController
  def index 
    @dogs = Dog.all 
    render :index
  end

  def show 
    @dog = Dog.find_by(id: params[:id])
    render :show
  end 

  def update
    @dog = Dog.find_by(id: params[:id])  
    @dog.update(
      name: params[:name] || @dog.name, 
      age: params[:age] || @dog.age, 
      breed: params[:breed] || @dog.breed,
      image: params[:image] || @dog.image
    )
    render :show 
  end 
end
