
#import "RNLib.h"

@implementation RNLib

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

+ (BOOL)requiresMainQueueSetup {
    return false;
}

- (NSDictionary *)constantsToExport
{
    return @{ @"textFromLib" : @"This text comes from the lib." };
};

@end
  
