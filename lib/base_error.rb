class BaseError < StandardError
  extend T::Sig
  attr_reader :status, :message, :status_code

  sig { params(message: String, status: HttpStatus).void }
  def initialize(message:, status:)
    super(message)
    @message = message
    @status = status
    @status_code = status.code
  end
end
