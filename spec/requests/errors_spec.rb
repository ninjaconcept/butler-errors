require "rails_helper"

RSpec.describe "Error pages", :type => :request do

  it "render 500" do
    get "/500"

    expect(response.status).to eq(500)
    expect(response).to render_template(:server_error)
    expect(response.body).to include("Looks like something went wrong!")
  end

  it "render 404" do
    get "/404"

    expect(response.status).to eq(404)
    expect(response).to render_template(:not_found)
    expect(response.body).to include("Page not found.")
  end

  it "render 422" do
    get "/422"

    expect(response.status).to eq(422)
    expect(response).to render_template(:unacceptable)
    expect(response.body).to include("What?")
  end

end
