class CarsController < ApplicationController

  # our Car model is an ActiveRecord
  #(R)ead
  def index
    # here we grab all cars
    cars = Car.all
    # render cars
    render component: "Cars"
  end

  def show
    car = Car.find(params[:id])
    #find car and show it (1 car by id)
    # render car
    render component: "Car"
  end

  #(C)reate
  def new
    # render new form
    render component: "NewCar"
  end

  def create
    # create car(from from UI) to our db
  end

  #(U)pdate
  def edit
    #we need to find car in DB to update
    car = Car.find(params[:id])
    # render update form
    render component: "UpdateCar"
  end

  def update
    # find car to Update
    car = Car.find(params[:id])
    # update car(from from UI) to our db
  end

  #(D)elete
  def destroy
    # find car to Delete
    car = Car.find(params[:id])
    # Delete
    car.destroy
  end

  private

  def car_params
  end
end
