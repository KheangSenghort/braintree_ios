#import "BTThreeDSecureVerification.h"
#import "BTJSON.h"

@interface BTThreeDSecureVerification ()

@property (nonatomic, strong) NSMutableDictionary *parameters;

@end

@implementation BTThreeDSecureVerification

- (instancetype)init {
    self = [self initWithPaymentMethodNonce:@""];
    // TODO: Error
    return self;
}

- (nonnull instancetype)initWithCard:(nonnull BTCard *)card {
    self = [super init];
    if (self) {
        self.parameters = [NSMutableDictionary dictionary];
        // TODO: self.parameters = card.parameters;
    }
    return self;
}

- (nonnull instancetype)initWithPaymentMethodNonce:(nonnull NSString *)paymentMethodNonce {
    self = [super init];
    if (self) {
        self.parameters = [NSMutableDictionary dictionary];
        self.parameters[@"payment_method_nonce"] = paymentMethodNonce;
    }
    return self;
}

- (nonnull instancetype)initWithTokenizedCard:(nonnull BTTokenizedCard *)tokenizedCard {
    return [self initWithPaymentMethodNonce:tokenizedCard.paymentMethodNonce];
}

@end
