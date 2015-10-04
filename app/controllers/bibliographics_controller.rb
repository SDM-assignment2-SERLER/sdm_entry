class BibliographicsController < ApplicationController
  before_action :set_bibliographic, only: [:show, :edit, :update, :destroy, :mod_edit, :confirm, :reject]

  # GET /bibliographics
  # GET /bibliographics.json
  def index
    @bibliographics = current_user.bibliographics.waiting.all
  end

  # GET /bibliographics/1
  # GET /bibliographics/1.json
  def show
  end

  # GET /bibliographics/new
  def new
    @bibliographic = Bibliographic.new
  end

  # GET /bibliographics/1/edit
  def edit
  end

  # POST /bibliographics
  # POST /bibliographics.json
  def create
    the_param = bibliographic_params
    to = the_param.delete(:to)
    @bibliographic = Bibliographic.new(the_param)
    @bibliographic.user = current_user

    respond_to do |format|
      if @bibliographic.save
        format.html { redirect_to send(to.to_s.concat('_path')), notice: 'Bibliographic was successfully created.' }
        format.json { render :show, status: :created, location: @bibliographic }
      else
        format.html { render :new }
        format.json { render json: @bibliographic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bibliographics/1
  # PATCH/PUT /bibliographics/1.json
  def update
    respond_to do |format|
      the_param = bibliographic_params
      to = the_param.delete(:to)
      if @bibliographic.update(the_param)
        format.html { redirect_to send(to.to_s.concat('_path')), notice: 'Bibliographic was successfully updated.' }
        format.json { render :show, status: :ok, location: @bibliographic }
      else
        format.html { render :edit }
        format.json { render json: @bibliographic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bibliographics/1
  # DELETE /bibliographics/1.json
  def destroy
    @bibliographic.destroy
    respond_to do |format|
      format.html { redirect_to bibliographics_url, notice: 'Bibliographic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def mod_index
    @bibliographics = Bibliographic.waiting.all
  end

  def mod_edit
    @bibliographics = Bibliographic.waiting.all
  end

  def confirm
    @bibliographic.states = 'confirmed'
    if @bibliographic.save
      redirect_to :back, notice: 'Confirmed'
    else
      redirect_to :back, notice: 'Confirmed Failed'
    end
  end

  def reject
    @bibliographic.states = 'reject'

    if @bibliographic.save
      redirect_to :back, notice: 'Rejected'
    else
      redirect_to :back, notice: 'Rejected Failed'
    end #if
  end

  def confirmed_list
    @bibliographics = Bibliographic.confirmed.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bibliographic
      @bibliographic = Bibliographic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bibliographic_params
      params.require(:bibliographic).permit(:title, :author, :year, :source, :book, :publisher, :doi, :number, :page, :month, :to, :rating)
    end
end
