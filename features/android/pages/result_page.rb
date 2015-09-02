require 'calabash-android/abase'

class ResultPage < Calabash::ABase

  def trait
    "* marked:'resultPage'"
  end

  def await(opts={})
    wait_for_elements_exist([trait])
    self
  end

  #items
  def result_label_query
    "* marked:'result_label'"
  end

  #actions

  #assertions
  def assert_result_label(text)
    check_element_exists(result_label_query)
    result = query(result_label_query, :text).first
    unless result.eql?text
      fail("Result has the value '#{result}', expected it to be '#{text}'")
    end
  end

end
