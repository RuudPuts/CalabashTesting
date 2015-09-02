require 'calabash-cucumber/ibase'

class InputPage < Calabash::IBase

  def trait
    "* marked:'inputPage'"
  end

  def await(opts={})
    wait_for_elements_exist([trait])
    self
  end

  #items
  def input_field_query
    "* marked:'input_textfield'"
  end

  def next_button_query
    "* marked:'input_next_button'"
  end

  #actions
  def input_field_enter_text(text)
    check_element_exists(input_field_query)
    clear_text(input_field_query)
    touch(input_field_query)
    wait_for_keyboard()
    keyboard_enter_text(text)
  end

  def touch_next_button
    check_element_exists(next_button_query)
    touch(next_button_query)
  end

  #assertions

end
