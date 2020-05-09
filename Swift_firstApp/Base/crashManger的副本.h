//
//  crashManger.h
//  Swift_firstApp
//
//  Created by Micheal豆 on 2019/12/9.
//  Copyright © 2019 Micheal豆. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface crashManger : NSObject

+ (void)setDefaultHandler;
+ (NSUncaughtExceptionHandler*)getHandler;
@end

NS_ASSUME_NONNULL_END
