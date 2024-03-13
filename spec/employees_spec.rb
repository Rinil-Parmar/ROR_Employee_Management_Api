require 'swagger_helper'

describe 'Employees API' do
  path '/employees' do
    get 'Retrieves all employees' do
      tags 'Employees'
      produces 'application/json'

      response '200', 'employees found' do
        schema type: :array,
          items: { '$ref' => '#/definitions/employee' }

        run_test!
      end

      response '404', 'employees not found' do
        run_test!
      end
    end
  end
end
