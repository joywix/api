class Api::PersonsController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def index
    render json: Person.all, include: :documents
  end

  def show
    person = Person.find_by(id: params[:id])
    if person.present?
      render json: person, include: :documents
    else
      render json: 'No person with this id'
    end
  end

  def create
    person = Person.new(file_params)
    if person.save
      render json: person
    else
      render json: person.errors.full_messages
    end
  end

  def update
    person = Person.find_by(id: params[:id])
    unless person
      render json: 'No person with this id'
      return
    end

    if person.update(file_params)
      render json: person
    else
      render json: person.errors.full_messages
    end
  end

  private

  def file_params
    params.permit(:tenant_id, :user_id, :customer_id, :portal_id, :status, :sys_state,
                  :who_created, :who_updated, :phone_mobile, :first_name, :last_name,
                  :referral, :email, :is_processed)
  end

end
