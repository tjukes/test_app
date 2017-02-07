require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe SnurksController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Snurk. As you add validations to Snurk, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SnurksController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all snurks as @snurks" do
      snurk = Snurk.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:snurks)).to eq([snurk])
    end
  end

  describe "GET #show" do
    it "assigns the requested snurk as @snurk" do
      snurk = Snurk.create! valid_attributes
      get :show, params: {id: snurk.to_param}, session: valid_session
      expect(assigns(:snurk)).to eq(snurk)
    end
  end

  describe "GET #new" do
    it "assigns a new snurk as @snurk" do
      get :new, params: {}, session: valid_session
      expect(assigns(:snurk)).to be_a_new(Snurk)
    end
  end

  describe "GET #edit" do
    it "assigns the requested snurk as @snurk" do
      snurk = Snurk.create! valid_attributes
      get :edit, params: {id: snurk.to_param}, session: valid_session
      expect(assigns(:snurk)).to eq(snurk)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Snurk" do
        expect {
          post :create, params: {snurk: valid_attributes}, session: valid_session
        }.to change(Snurk, :count).by(1)
      end

      it "assigns a newly created snurk as @snurk" do
        post :create, params: {snurk: valid_attributes}, session: valid_session
        expect(assigns(:snurk)).to be_a(Snurk)
        expect(assigns(:snurk)).to be_persisted
      end

      it "redirects to the created snurk" do
        post :create, params: {snurk: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Snurk.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved snurk as @snurk" do
        post :create, params: {snurk: invalid_attributes}, session: valid_session
        expect(assigns(:snurk)).to be_a_new(Snurk)
      end

      it "re-renders the 'new' template" do
        post :create, params: {snurk: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested snurk" do
        snurk = Snurk.create! valid_attributes
        put :update, params: {id: snurk.to_param, snurk: new_attributes}, session: valid_session
        snurk.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested snurk as @snurk" do
        snurk = Snurk.create! valid_attributes
        put :update, params: {id: snurk.to_param, snurk: valid_attributes}, session: valid_session
        expect(assigns(:snurk)).to eq(snurk)
      end

      it "redirects to the snurk" do
        snurk = Snurk.create! valid_attributes
        put :update, params: {id: snurk.to_param, snurk: valid_attributes}, session: valid_session
        expect(response).to redirect_to(snurk)
      end
    end

    context "with invalid params" do
      it "assigns the snurk as @snurk" do
        snurk = Snurk.create! valid_attributes
        put :update, params: {id: snurk.to_param, snurk: invalid_attributes}, session: valid_session
        expect(assigns(:snurk)).to eq(snurk)
      end

      it "re-renders the 'edit' template" do
        snurk = Snurk.create! valid_attributes
        put :update, params: {id: snurk.to_param, snurk: invalid_attributes}, session: valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested snurk" do
      snurk = Snurk.create! valid_attributes
      expect {
        delete :destroy, params: {id: snurk.to_param}, session: valid_session
      }.to change(Snurk, :count).by(-1)
    end

    it "redirects to the snurks list" do
      snurk = Snurk.create! valid_attributes
      delete :destroy, params: {id: snurk.to_param}, session: valid_session
      expect(response).to redirect_to(snurks_url)
    end
  end

end