# frozen_string_literal: true

module PostForMe
  module Errors
    class Error < StandardError
      # @!attribute cause
      #
      #   @return [StandardError, nil]
    end

    class ConversionError < PostForMe::Errors::Error
      # @return [StandardError, nil]
      def cause = @cause.nil? ? super : @cause

      # @api private
      #
      # @param on [Class<StandardError>]
      # @param method [Symbol]
      # @param target [Object]
      # @param value [Object]
      # @param cause [StandardError, nil]
      def initialize(on:, method:, target:, value:, cause: nil)
        cls = on.name.split("::").last

        message = [
          "Failed to parse #{cls}.#{method} from #{value.class} to #{target.inspect}.",
          "To get the unparsed API response, use #{cls}[#{method.inspect}].",
          cause && "Cause: #{cause.message}"
        ].filter(&:itself).join(" ")

        @cause = cause
        super(message)
      end
    end

    class APIError < PostForMe::Errors::Error
      # @return [URI::Generic]
      attr_accessor :url

      # @return [Integer, nil]
      attr_accessor :status

      # @return [Object, nil]
      attr_accessor :body

      # @api private
      #
      # @param url [URI::Generic]
      # @param status [Integer, nil]
      # @param body [Object, nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      def initialize(url:, status: nil, body: nil, request: nil, response: nil, message: nil)
        @url = url
        @status = status
        @body = body
        @request = request
        @response = response
        super(message)
      end
    end

    class APIConnectionError < PostForMe::Errors::APIError
      # @!attribute status
      #
      #   @return [nil]

      # @!attribute body
      #
      #   @return [nil]

      # @api private
      #
      # @param url [URI::Generic]
      # @param status [nil]
      # @param body [nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      def initialize(
        url:,
        status: nil,
        body: nil,
        request: nil,
        response: nil,
        message: "Connection error."
      )
        super
      end
    end

    class APITimeoutError < PostForMe::Errors::APIConnectionError
      # @api private
      #
      # @param url [URI::Generic]
      # @param status [nil]
      # @param body [nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      def initialize(
        url:,
        status: nil,
        body: nil,
        request: nil,
        response: nil,
        message: "Request timed out."
      )
        super
      end
    end

    class APIStatusError < PostForMe::Errors::APIError
      # @api private
      #
      # @param url [URI::Generic]
      # @param status [Integer]
      # @param body [Object, nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      #
      # @return [self]
      def self.for(url:, status:, body:, request:, response:, message: nil)
        kwargs = {
          url: url,
          status: status,
          body: body,
          request: request,
          response: response,
          message: message
        }

        case status
        in 400
          PostForMe::Errors::BadRequestError.new(**kwargs)
        in 401
          PostForMe::Errors::AuthenticationError.new(**kwargs)
        in 403
          PostForMe::Errors::PermissionDeniedError.new(**kwargs)
        in 404
          PostForMe::Errors::NotFoundError.new(**kwargs)
        in 409
          PostForMe::Errors::ConflictError.new(**kwargs)
        in 422
          PostForMe::Errors::UnprocessableEntityError.new(**kwargs)
        in 429
          PostForMe::Errors::RateLimitError.new(**kwargs)
        in (500..)
          PostForMe::Errors::InternalServerError.new(**kwargs)
        else
          PostForMe::Errors::APIStatusError.new(**kwargs)
        end
      end

      # @!parse
      #   # @return [Integer]
      #   attr_accessor :status

      # @api private
      #
      # @param url [URI::Generic]
      # @param status [Integer]
      # @param body [Object, nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      def initialize(url:, status:, body:, request:, response:, message: nil)
        message ||= {url: url.to_s, status: status, body: body}
        super(
          url: url,
          status: status,
          body: body,
          request: request,
          response: response,
          message: message&.to_s
        )
      end
    end

    class BadRequestError < PostForMe::Errors::APIStatusError
      HTTP_STATUS = 400
    end

    class AuthenticationError < PostForMe::Errors::APIStatusError
      HTTP_STATUS = 401
    end

    class PermissionDeniedError < PostForMe::Errors::APIStatusError
      HTTP_STATUS = 403
    end

    class NotFoundError < PostForMe::Errors::APIStatusError
      HTTP_STATUS = 404
    end

    class ConflictError < PostForMe::Errors::APIStatusError
      HTTP_STATUS = 409
    end

    class UnprocessableEntityError < PostForMe::Errors::APIStatusError
      HTTP_STATUS = 422
    end

    class RateLimitError < PostForMe::Errors::APIStatusError
      HTTP_STATUS = 429
    end

    class InternalServerError < PostForMe::Errors::APIStatusError
      HTTP_STATUS = (500..)
    end
  end
end
