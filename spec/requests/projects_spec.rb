# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Projects', type: :request do
  describe 'GET /api/projects' do
    context do
      it do
        get('/api/projects')

        expect(response.status).to eq(204)
      end
    end
  end
end
