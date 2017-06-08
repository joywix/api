class Api::FilesController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def index
    render json: Document.all
  end

  def show
    doc = Document.find_by(id: params[:id])
    if doc.present?
      render json: doc
    else
      render json: 'No file with this id'
    end
  end

  def create
    doc = Document.new(file_params)
    if doc.save
      render json: doc
    else
      render json: doc.errors.full_messages
    end
  end

  def update
    doc = Document.find_by(id: params[:id])
    unless doc
      render json: 'No file with this id'
      return
    end

    if doc.update(file_params)
      render json: doc
    else
      render json: doc.errors.full_messages
    end
  end

  private

  def file_params
    params.permit(:tenant_id, :user_id, :customer_id, :portal_id, :status, :sys_state,
                  :who_created, :who_updated, :phone_mobile, :first_name, :last_name,
                  :referral, :email, :keywords, :is_processed, :person_id)
  end

end