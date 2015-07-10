Rails.configuration.exceptions_app = ->(env) { Api::V1::ApplicationController.action(:handle_exception).call(env) }
