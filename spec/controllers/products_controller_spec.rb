require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  describe "GET #index" do
    subject { get :index }
    
    it "renders the index template" do
       expect(subject).to render_template(:index)
    end
    
    it "does not render a different template" do
      expect(subject).not_to render_template(:show)
    end    
  end

  describe "GET #show" do
    subject { get :show, params: { id: create(:product).id } }
  
    it "renders the show template" do
      expect(subject).to render_template(:show)
    end
    
    it "does not render a different template" do
      expect(subject).not_to render_template(:new)
    end    
  end
  
  describe "GET #new" do
    subject { get :new }
  
    it "renders the new template" do
      expect(subject).to render_template(:new)
    end
    
    it "does not render a different template" do
      expect(subject).not_to render_template(:index)
    end    
  end
  
  describe 'GET #edit' do
    subject { get :edit, params: { id: create(:product).id } }
    
    it "renders the edit template" do
      expect(subject).to render_template(:edit)
    end
    
    it "does not render a different template" do
      expect(subject).not_to render_template(:show)
    end
  end
  
  describe "POST #create" do
    subject { post :create, params: {product: FactoryBot.attributes_for(:product)} }
    
    it "creates a new product" do    
      expect { subject }.to change(Product, :count).by(1)
    end
  end
  
  describe "PUT #update" do
    subject { create(:product) }
    let(:data) { {title: 'Bicycle', description: "From Hell", price: 666} }
    
    it "updates an existing product" do
      put :update, params: { id: subject.id, product: data }
      subject.reload
      expect(subject.description).to eq("From Hell")
    end
  end
  
  describe "DELETE #destroy" do    
    it "destroys a product" do
      expect { delete :destroy, params: {id: 10} }.to change(Product, :count).by(-1)
    end
  end
end
