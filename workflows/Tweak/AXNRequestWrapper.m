#import "AXNRequestWrapper.h"

@implementation AXNRequestWrapper

+ (instancetype)wrapRequest:(NCNotificationRequest *)request {
    AXNRequestWrapper *wrapper = [[AXNRequestWrapper alloc] init];
    wrapper.request = request;
    wrapper.notificationIdentifier = request.notificationIdentifier;
    return wrapper;
}

@end
