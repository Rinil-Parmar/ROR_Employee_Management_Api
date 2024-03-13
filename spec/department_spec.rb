require 'swagger_helper'

describe 'Departments API' do
  path '/departments' do
    get 'Retrieves all departments' do
      tags 'Departments'
      produces 'application/json'

      response '200', 'departments found' do
        schema type: :array,
          items: { '$ref' => '#/definitions/department' }

        run_test!
      end

      response '404', 'departments not found' do
        run_test!
      end
    end
  end
end
