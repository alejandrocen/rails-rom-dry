# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Projects', type: :request do
  describe 'GET /api/projects' do
    it do
      get('/api/projects')

      expect(response.status).to eq(200)
    end
  end
end
