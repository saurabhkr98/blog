# rubocop:disable Metrics/BlockLength
class HttpStatus < T::Enum
  enums do
    Continue = new(100)
    SwitchingProtocols = new(101)
    Processing = new(102)
    Ok = new(200)
    Created = new(201)
    Accepted = new(202)
    NonAuthoritativeInformation = new(203)
    NoContent = new(204)
    ResetContent = new(205)
    PartialContent = new(206)
    MultiStatus = new(207)
    AlreadyReported = new(208)
    ImUsed = new(226)
    MultipleChoices = new(300)
    MovedPermanently = new(301)
    Found = new(302)
    SeeOther = new(303)
    NotModified = new(304)
    UseProxy = new(305)
    TemporaryRedirect = new(307)
    PermanentRedirect = new(308)
    BadRequest = new(400)
    Unauthorized = new(401)
    PaymentRequired = new(402)
    Forbidden = new(403)
    NotFound = new(404)
    MethodNotAllowed = new(405)
    NotAcceptable = new(406)
    ProxyAuthenticationRequired = new(407)
    RequestTimeout = new(408)
    Conflict = new(409)
    Gone = new(410)
    LengthRequired = new(411)
    PreconditionFailed = new(412)
    PayloadTooLarge = new(413)
    UriTooLong = new(414)
    UnsupportedMediaType = new(415)
    RangeNotSatisfiable = new(416)
    ExpectationFailed = new(417)
    ImATeapot = new(418)
    ImAFox = new(419)
    EnhanceYourCalm = new(420)
    MisdirectedRequest = new(421)
    UnprocessableEntity = new(422)
    Locked = new(423)
    FailedDependency = new(424)
    UpgradeRequired = new(426)
    PreconditionReqired = new(428)
    TooManyRequests = new(429)
    RequestHeaderFieldsTooLarge = new(431)
    UnavailableForLegalReasons = new(451)
    InternalServerError = new(500)
    NotImplemented = new(501)
    BadGateway = new(502)
    ServiceUnavailable = new(503)
    GatewayTimeout = new(504)
    HttpVersionNotSupported = new(505)
    VariantAlsoNegotiates = new(506)
    InsufficientStorage = new(507)
    LoopDetected = new(508)
    NotExtended = new(510)
    NetworkAuthenticationRequired = new(511)

    alias_method :code, :serialize
  end
end
# rubocop:enable Metrics/BlockLength
