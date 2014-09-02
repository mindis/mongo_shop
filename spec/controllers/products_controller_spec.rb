require 'rails_helper'

describe ProductsController do
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
