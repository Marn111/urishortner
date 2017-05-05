require 'rails_helper'

describe Api::UrlsController, :type => :controller do

  # fixtures :urls

  describe 'POST #shortner' do
    context 'with valid attributes' do
      it 'creates url' do
        post :shortner, full_url: 'http://www.google.com'
        expect(response).to have_http_status(200)
      end
    end
  end

  describe 'GET #goto_full_address' do
    context 'with valid short_url' do
      it 'return to full url' do
        get :goto_full_address, short_url: '70ff3d2'
        expect(response).to have_http_status(302)
      end
    end

    context 'with invalid short_url' do
      it 'return to 400 status' do
        get :goto_full_address, short_url: '70ff3d0'
        expect(response).to have_http_status(400)
      end
    end
  end

  describe 'GET #visits' do
    context 'with valid url_id' do
      it 'return visits' do
        get :visits, id: 980190962
        expect(response).to have_http_status(200)
      end
    end

    context 'with invalid url_id' do
      it 'return 400 status' do
        get :visits, id: 000000000
        expect(response).to have_http_status(400)
      end
    end
  end


end
