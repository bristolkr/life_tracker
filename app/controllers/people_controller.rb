class PeopleController < ApplicationController
	before_action :set_person, only: [:show, :edit, :update, :destroy]

  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to @person, notice: 'Person was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def create
    @person = Person.new(person_params)
    respond_to do |format|
      if @person.save
        format.html { redirect_to @person, notice: 'Person was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy
    respond_to do |format|
      format.html { redirect_to person_url, notice: 'Person was successfully deleted.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_params
      params.require(:person).permit(:name, :birthdate, :hometown)
    end
end
