Then(/^I should see the veribage for the undetermined error page$/) do
	expect(error_page.page_header.text).to include (text('undetermined.and.call.agent.header.error'))
	expect(error_page.error_message.text).to include (text('undetermined.and.call.agent.body.message'))
end

Then(/^I should see the veribage for the alternative satellite TV option error page$/) do
    expect(error_page.error_message.text).to include (text('tv.optik.offer.unavailable.message'))
end

Then(/^I should see order satellite tv now cta on the optik unavailable page$/) do
    error_page.order_satellite_cta.click
    sleep 2
    expect(@driver.current_url).to include (text('url.satellite.check'))
end

Then(/^I should see the veribage for the unavailable deal for this address$/) do
    expect(error_page.page_header.text).to include (text('tv.deal.not.available.header.error'))
    expect(error_page.error_message.text).to include (text('tv.deal.not.available.message'))
end


# Then(/^Then I should see the veribage for the unable to verify this address$/) do
#     expect(error_page.page_header.text).to include (text('undetermined.and.call.agent.header.error'))
#     expect(error_page.error_message.text).to include (text('undetermined.and.call.agent.header.error'))
# end