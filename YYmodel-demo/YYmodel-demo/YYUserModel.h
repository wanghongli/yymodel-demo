//
//  YYUserModel.h
//  YYmodel-demo
//
//  Created by sunrise on 2018/11/7.
//  Copyright © 2018 sunriseos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YYModel/YYModel.h"

NS_ASSUME_NONNULL_BEGIN


@interface YYPictureModel : NSObject <NSCoding, NSCopying>
@property (nonatomic, copy) NSString * name;
@property (nonatomic, copy) NSString * path;
@property (nonatomic, copy) NSNumber * size;

@end

@interface YYUserModel : NSObject <NSCoding, NSCopying>

@property (nonatomic, copy) NSString * login;
@property (nonatomic, copy) NSString * id;
@property (nonatomic, copy) NSString * avatar_url;
@property (nonatomic, copy) NSString * gravatar_id;
@property (nonatomic, copy) NSString * url;
@property (nonatomic, copy) NSString * html_url;

@end

NS_ASSUME_NONNULL_END
