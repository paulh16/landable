require 'spec_helper'

module Landable
  describe Screenshot do

    describe '#page_id=' do
      it 'should assign screenshotable' do
        page = create :page

        screenshot = build :screenshot, page_id: page.id
        screenshot.screenshotable.should == page
      end
    end

    describe '#page_revision_id=' do
      it 'should assign screenshotable' do
        page_revision = create :page_revision

        screenshot = build :screenshot, page_revision_id: page_revision.id
        screenshot.screenshotable.should == page_revision
      end
    end

    describe '#url' do
      it 'should return #preview_url of its screenshotable' do
        screenshot = create :page_screenshot
        screenshot.screenshotable.should_receive(:preview_url) { 'some url' }
        screenshot.url.should == 'some url'
      end
    end

  end
end
