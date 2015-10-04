class EntitiesController < ApplicationController
  before_action :set_bibliographic
  before_action :set_entity, only: [:show, :edit, :update, :destroy]

  # GET /entities
  # GET /entities.json
  def index
    @entities = Entity.all
  end

  # GET /entities/1
  # GET /entities/1.json
  def show
  end

  # GET /entities/new
  def new
    @entity = Entity.new
  end

  # GET /entities/1/edit
  def edit
  end

  # POST /entities
  # POST /entities.json
  def create
    the_param = entity_params
    research_methods = the_param.delete(:research_methods)
    research_participants = the_param.delete(:research_participants)
    evidence_methods = the_param.delete(:evidence_methods)
    methodologies = the_param.delete(:methodologies)


    @entity = Entity.new(the_param)
    @entity.bibliographic = @bibliographic

    @entity.research_methods = ResearchMethod.where(id: research_methods).all
    @entity.research_participants = ResearchParticipant.where(id: research_participants).all
    @entity.evidence_methods = EvidenceMethod.where(id: evidence_methods).all
    @entity.methodologies = Methodology.where(id: methodologies).all
    # byebug

    respond_to do |format|
      if @entity.save
        format.html { redirect_to [@bibliographic, @entity], notice: 'Entity was successfully created.' }
        format.json { render :show, status: :created, location: @entity }
      else
        format.html { render :new }
        format.json { render json: @entity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entities/1
  # PATCH/PUT /entities/1.json
  def update
    respond_to do |format|
      if @entity.update(entity_params)
        format.html { redirect_to @entity, notice: 'Entity was successfully updated.' }
        format.json { render :show, status: :ok, location: @entity }
      else
        format.html { render :edit }
        format.json { render json: @entity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entities/1
  # DELETE /entities/1.json
  def destroy
    @entity.destroy
    respond_to do |format|
      format.html { redirect_to entities_url, notice: 'Entity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entity
      @entity = Entity.find(params[:id])
    end

    def set_bibliographic
      @bibliographic = Bibliographic.find(params[:bibliographic_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entity_params
      # params.require(:entity).permit(:research_aim, :research_metric, :evidence_benefit, 
      #                                :evidence_context, :evidence_result, :evidence_intergrity,
      #                                'research_methods'.to_sym)
      params.require(:entity).permit!
    end
end
