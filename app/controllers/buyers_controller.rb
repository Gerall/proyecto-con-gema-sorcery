class BuyersController < 

  before_filter :require_login

  
  def index
    @buyers = Buyer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @buyers }
    end
  end

  
  def show
    @buyer = Buyer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @buyer }
    end
  end

  
  def new
    @buyer = Buyer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @buyer }
    end
  end

  
  def edit
    @buyer = Buyer.find(params[:id])
  end


  def create
    @buyer = Buyer.new(params[:buyer])

    respond_to do |format|
      if @buyer.save
        format.html { redirect_to @buyer, notice: 'Buyer was successfully created.' }
        format.json { render json: @buyer, status: :created, location: @buyer }
      else
        format.html { render action: "new" }
        format.json { render json: @buyer.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def update
    @buyer = Buyer.find(params[:id])

    respond_to do |format|
      if @buyer.update_attributes(params[:buyer])
        format.html { redirect_to @buyer, notice: 'Buyer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @buyer.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def destroy
    @buyer = Buyer.find(params[:id])
    @buyer.destroy

    respond_to do |format|
      format.html { redirect_to buyers_url }
      format.json { head :no_content }
    end
  end
end
