require 'spec_helper'

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

describe TravellersController do

  # This should return the minimal set of attributes required to create a valid
  # Traveller. As you add validations to Traveller, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "abcdef", "email" => "xxxx.xxxx@gmail.com" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TravellersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    xit "assigns all travellers as @travellers" do
      traveller = Traveller.create! valid_attributes
      get :index, {}, valid_session
      assigns(:travellers).should eq([traveller])
    end
  end

  describe "GET show" do
    it "assigns the requested traveller as @traveller" do
      traveller = Traveller.create! valid_attributes
      get :show, {:id => traveller.to_param}, valid_session
      assigns(:traveller).should eq(traveller)
    end
  end

  describe "GET new" do
    it "assigns a new traveller as @traveller" do
      get :new, {}, valid_session
      assigns(:traveller).should be_a_new(Traveller)
    end
  end

  describe "GET edit" do
    it "assigns the requested traveller as @traveller" do
      traveller = Traveller.create! valid_attributes
      get :edit, {:id => traveller.to_param}, valid_session
      assigns(:traveller).should eq(traveller)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Traveller" do
        expect {
          post :create, {:traveller => valid_attributes}, valid_session
        }.to change(Traveller, :count).by(1)
      end

      it "assigns a newly created traveller as @traveller" do
        post :create, {:traveller => valid_attributes}, valid_session
        assigns(:traveller).should be_a(Traveller)
        assigns(:traveller).should be_persisted
      end

      it "redirects to the created traveller" do
        post :create, {:traveller => valid_attributes}, valid_session
        response.should redirect_to(Traveller.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved traveller as @traveller" do
        # Trigger the behavior that occurs when invalid params are submitted
        Traveller.any_instance.stub(:save).and_return(false)
        post :create, {:traveller => { "name" => "invalid value" }}, valid_session
        assigns(:traveller).should be_a_new(Traveller)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Traveller.any_instance.stub(:save).and_return(false)
        post :create, {:traveller => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested traveller" do
        traveller = Traveller.create! valid_attributes
        # Assuming there are no other travellers in the database, this
        # specifies that the Traveller created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Traveller.any_instance.should_receive(:update).with({ "name" => "MyString" })
        put :update, {:id => traveller.to_param, :traveller => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested traveller as @traveller" do
        traveller = Traveller.create! valid_attributes
        put :update, {:id => traveller.to_param, :traveller => valid_attributes}, valid_session
        assigns(:traveller).should eq(traveller)
      end

      it "redirects to the traveller" do
        traveller = Traveller.create! valid_attributes
        put :update, {:id => traveller.to_param, :traveller => valid_attributes}, valid_session
        response.should redirect_to(traveller)
      end
    end

    describe "with invalid params" do
      it "assigns the traveller as @traveller" do
        traveller = Traveller.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Traveller.any_instance.stub(:save).and_return(false)
        put :update, {:id => traveller.to_param, :traveller => { "name" => "invalid value" }}, valid_session
        assigns(:traveller).should eq(traveller)
      end

      it "re-renders the 'edit' template" do
        traveller = Traveller.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Traveller.any_instance.stub(:save).and_return(false)
        put :update, {:id => traveller.to_param, :traveller => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested traveller" do
      traveller = Traveller.create! valid_attributes
      expect {
        delete :destroy, {:id => traveller.to_param}, valid_session
      }.to change(Traveller, :count).by(-1)
    end

    it "redirects to the travellers list" do
      traveller = Traveller.create! valid_attributes
      delete :destroy, {:id => traveller.to_param}, valid_session
      response.should redirect_to(travellers_url)
    end
  end

end
