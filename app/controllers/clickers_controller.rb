class ClickersController < ApplicationController
  def home
    respond_to do |format|
      format.html # home.html.erb
    end
  end
  def auth
    respond_to do |format|
      format.html # auth.html.erb
    end
  end
  def management
    respond_to do |format|
      format.html # management.html.erb
    end
  end
  def reset_pwd
    respond_to do |format|
      format.html # reset_pwd.html.erb
    end
  end
	
  # GET /clickers
  # GET /clickers.xml
  def index
    	@clickers = Clicker.all			

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @clickers }
    end
  end

  def score
    respond_to do |format|
      format.html # score.html.erb
    end
  end

  def test
		@cur_number = params[:id]
		n = @cur_number.to_i
		if n > 1
		  n = n - 1
			q = Question.where(:number => n.to_s).first
			c = Clicker.where(:question_id => q.id.to_s).first
			if c == nil
				c = Clicker.new
				c.a_count = 0
				c.b_count = 0
				c.c_count = 0
				c.d_count = 0
				c.question_id = q.id
			end
#			p = params[:clicker][:response]
			p = params[:response]
			if p == 'A'
			  c.a_count = c.a_count + 1
			elsif p == 'B'
			  c.b_count += 1
			elsif p == 'C'
			  c.c_count += 1
			elsif p == 'D'
			  c.d_count += 1
			end
			c.save
		end
		if @cur_number.to_i > Question.last.number
			@cur_number = Question.last.number.to_s
		elsif @cur_number.to_i < Question.first.number
			@cur_number = Question.first.number.to_s
		end
    @question = Question.where(:number => @cur_number).first
		@clicker = Clicker.where(:question_id => @question.id.to_s).first
		if @clicker == nil
			@clicker = Clicker.new
		end
		@clicker.response = ""
		
    respond_to do |format|
      format.html # test.html.erb
    end
  end
	
end
