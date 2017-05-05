require 'rails_helper'

describe HomeController, type: :controller do

	describe "#GET index" do
		context 'as initial' do
      it 'render to view' do
        post :index
        expect(response).to render_template('index')
      end
    end
	end

end