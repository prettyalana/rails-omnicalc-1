class OmnicalcController < ApplicationController
  def homepage
    render(:template => "omnicalc_templates/homepage")
  end  
  def square
    render(:template => "omnicalc_templates/square_calc")
  end
  def square_results
    @the_num = params.fetch("user_num").to_f
    @the_results = @the_num ** 2
    render(:template => "omnicalc_templates/square_results")
  end
  def square_root_calc
    render(:template => "omnicalc_templates/square_root_calc")
  end
  def square_root_results
    @the_num = params.fetch("user_num").to_f
    @the_results = Math.sqrt(@the_num) 
    render(:template => "omnicalc_templates/square_root_results")
  end
  def payment_calc
    render(:template => "omnicalc_templates/payment_calc")
  end
  def payment_results
    @the_apr = params.fetch("user_apr").to_f
    @r = (@the_apr/100)/12
    @the_number_of_years = params.fetch("user_num_of_years").to_i
    @n = @the_number_of_years * 12
    @the_principal = params.fetch("user_principal").to_f
    @payment = @r * @the_principal / (1 - (1 + @r) ** -@n)
    render(:template => "omnicalc_templates/payment_results")
  end
  def random_number
    render(:template => "omnicalc_templates/random_number")
  end
  def random_number_results
    @min_num = params.fetch("min_number").to_f
    @max_num = params.fetch("max_number").to_f
    @rand_num = rand(@min_num..@max_num)
    render(:template => "omnicalc_templates/random_number_results")
  end
end
