Then("I fill in the Stripe form with {string} credentials") do |card_status|

  case card_status
  when 'valid'
    card_no = '4242424242424242'
  when 'invalid'
    card_no = '4000000000000002'
  end

  stripe_iframe = find("iframe[name='__privateStripeFrame4']")
  within_frame stripe_iframe do
    find_field('cardnumber').send_keys(card_no)
    find_field('exp-date').send_keys('0922')
    find_field('cvc').send_keys('567')
    find_field('postal').send_keys('11310')
  end
  click_on 'Submit Payment'
end


