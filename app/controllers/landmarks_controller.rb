class LandmarksController < ApplicationController

  get '/landmarks/new' do
    erb :'/landmarks/new'
  end

  post '/landmarks/new' do
    @landmark = Landmark.create(name: params["landmark"]["name"], year_completed: params["landmark"]["year_completed"])
    redirect '/landmarks/index'
  end

  get '/landmarks' do
    @landmarks = Landmark.all
    erb :'/landmarks/index'
  end

  get '/landmarks/:id' do
    @landmark = Landmark.find(params[:id])
    erb :'/landmarks/show'
  end

  get '/landmarks/:id/edit' do
    @landmark = Landmark.find(params[:id])
    erb :'/landmarks/edit'
  end

  patch '/landmarks/:id' do
    # update the name, regardless changed
    @figure = Figure.find(params[:id])
    @figure.update(name: params["figure"]["name"])
    # update the landmarks
    if params["figure"]["landmark_ids"].nil?
      @figure.landmark_ids = []
    else
      @figure.landmark_ids = params["figure"]["landmark_ids"]
    end
    #adds in any new landmarks
    if !params["landmark"]["name"].empty?
      @landmark = Landmark.create(name: params["landmark"]["name"], year_completed: params["landmark"]["year"])
      @figure.landmarks << @landmark
    end
    redirect to "/landmarks/#{@landmark.id}"
  end

end
