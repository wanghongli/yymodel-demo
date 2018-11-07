//
//  YYUserModel.m
//  YYmodel-demo
//
//  Created by sunrise on 2018/11/7.
//  Copyright © 2018 sunriseos. All rights reserved.
//

#import "YYUserModel.h"

#define YYModelSynthCoderAndHash \
- (void)encodeWithCoder:(NSCoder *)aCoder { [self yy_modelEncodeWithCoder:aCoder]; } \
- (id)initWithCoder:(NSCoder *)aDecoder { return [self yy_modelInitWithCoder:aDecoder]; } \
- (id)copyWithZone:(NSZone *)zone { return [self yy_modelCopy]; } \
- (NSUInteger)hash { return [self yy_modelHash]; } \
- (BOOL)isEqual:(id)object { return [self yy_modelIsEqual:object]; }


@implementation YYPictureModel


YYModelSynthCoderAndHash
@end

@implementation YYUserModel
+ (NSDictionary *)modelCustomPropertyMapper {
    return @{
             @"html_url" : @"html_url1",
             @"picture" : [YYPictureModel class]
             };
}


YYModelSynthCoderAndHash
@end
