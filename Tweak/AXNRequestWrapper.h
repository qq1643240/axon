#import "RandomHeaders.h"

@interface AXNRequestWrapper : NSObject

@property (nonatomic, weak) NCNotificationRequest *request;
@property (nonatomic, copy) NSString *notificationIdentifier;

+ (instancetype)wrapRequest:(NCNotificationRequest *)request;

@end
