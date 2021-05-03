class LandmarksController < ApplicationController

  get '/landmarks/new' do
    erb :'/landmarks/new'
  end

  post '/landmarks/new' do
  #   @figure = Figure.create(name: params["figure"]["name"])
  #   # checking whether any title boxes are ticked and then associating with figure
  #   if !params["figure"]["title_ids"].nil?
  #     @figure.title_ids = params["figure"]["title_ids"]
  #   end
  #   # checking if new title was created - if yes, associating with figure
  #   if !params["title"]["name"].empty?
  #     @title = Title.create(name: params["title"]["name"])
  #     @figure.titles << @title
  #   end
  #   # checking whether any landmark boxes are ticked and then associating with figure
  #   if !params["figure"]["landmark_ids"].nil?
  #     @figure.landmark_ids = params["figure"]["landmark_ids"]
  #   end
  #   # checking if new title was created - if yes, associating with figure
  #   if !params["landmark"]["name"].empty?
  #     @landmark = Landmark.create(name: params["landmark"]["name"], year_completed: params["landmark"]["year"])
  #     @figure.landmarks << @landmark
  #   end
  #   redirect '/landmarks/index' 
  # end

end
