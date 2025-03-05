class NotesController < ApplicationController
  before_action :set_note, only: %i[show edit update destroy]

  # GET /notes or /notes.json
  def index
    @notes = Note.all
  end

  # GET /notes/1 or /notes/1.json
  def show
  end

  # GET /notes/new
  def new
    @note = Note.new
  end

  # GET /notes/1/edit
  def edit
  end

  # POST /notes or /notes.json
  def create
    @note = Note.new(note_params)

    respond_to do |format|
      if @note.save
        format.html { redirect_to notes_path, notice: "Note was successfully created." }
        format.json { render :show, status: :created, location: @note }
        format.turbo_stream { render turbo_stream: turbo_stream.append("notes_list", partial: "notes/note", locals: { note: @note }) }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @note.errors, status: :unprocessable_entity }
        format.turbo_stream { render turbo_stream: turbo_stream.replace("note_form", partial: "notes/form", locals: { note: @note }) }
      end
    end
  end

  # PATCH/PUT /notes/1 or /notes/1.json
  def update
    respond_to do |format|
      if @note.update(note_params)
        format.html { redirect_to @note, notice: "Note was successfully updated." }
        format.json { render :show, status: :ok, location: @note }
        format.turbo_stream { render turbo_stream: turbo_stream.replace(@note, partial: "notes/note", locals: { note: @note }) }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @note.errors, status: :unprocessable_entity }
        format.turbo_stream { render turbo_stream: turbo_stream.replace("note_form", partial: "notes/form", locals: { note: @note }) }
      end
    end
  end

  # DELETE /notes/1 or /notes/1.json
  def destroy
    @note.destroy!

    respond_to do |format|
      format.html { redirect_to notes_path, status: :see_other, notice: "Note was successfully destroyed." }
      format.json { head :no_content }
      format.turbo_stream { render turbo_stream: turbo_stream.remove(@note) }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note
      @note = Note.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def note_params
      params.expect(note: [:title, :body])
    end
end