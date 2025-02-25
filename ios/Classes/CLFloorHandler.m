//
// Created by Yohom Bao on 2019/11/22.
//

#import <CoreLocation/CoreLocation.h>
#import "CLFloorHandler.h"

extern NSMutableDictionary<NSString *, NSObject *> *STACK;
extern NSMutableDictionary<NSNumber *, NSObject *> *HEAP;
extern BOOL enableLog;

@implementation CLFloorHandler
- (instancetype)initWith:(NSString *)method :(NSDictionary *)args :(FlutterResult)methodResult {
  self = [super init];
  if (self) {
    // CLFloor获取level
    if ([@"CLFloor::get_level" isEqualToString:method]) {
      NSNumber *refId = (NSNumber *) args[@"refId"];

      CLFloor *floor = (CLFloor *) HEAP[refId];

      methodResult(@(floor.level));
    }
  }
  return self;
}

@end