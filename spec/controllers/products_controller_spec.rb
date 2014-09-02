require 'rails_helper'

describe ProductsController do
  describe 'GET #new' do
    def do_request
      get :new
    end

    context 'success' do
      it 'renders :new template' do
        do_request
        expect(response).to render_template :new
        expect(assigns(:product)).to_not be_nil
      end
    end

  end

  describe 'POST #create' do
    def do_request
      post :create, product: product_params 
    end

    context 'success' do
      let(:product_params) { {name: 'Jack Product', price: 100} }

      it 'creates a new product' do
        expect { do_request }.to change(Product, :count).by(1)
      end
    end

    context 'failure' do
      let(:product_params) { {name: '', price: 100} } 

      it 'not to create a new product' do
        expect { do_request }.to_not change(Product, :count)
      end
    end
  end
end
