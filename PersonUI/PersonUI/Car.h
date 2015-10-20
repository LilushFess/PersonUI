//
//  Car.h
//  PersonUI
//
//  Created by Yevhen Herasymenko on 20/10/2015.
//  Copyright © 2015 YevhenHerasymenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

@property(strong, nonatomic) NSString *name;
@property (assign, nonatomic) NSInteger speed;


- (instancetype)initWithName:(NSString *)name speed:(NSInteger)speed;

- (void)addSpeed:(NSInteger)deltaSpeed;

+ (void)loveCar:(Car *)car;

@end
