//
//  Car.m
//  PersonUI
//
//  Created by Yevhen Herasymenko on 20/10/2015.
//  Copyright © 2015 YevhenHerasymenko. All rights reserved.
//

#import "Car.h"

@interface Car()




@end

@implementation Car

- (instancetype)initWithName:(NSString *)name speed:(NSInteger)speed {
    self = [super init];
    if (self == nil) {
        return nil;
    }
    
    self.name = name;
    self.speed = speed;
    
    return self;
}

- (void)addSpeed:(NSInteger)deltaSpeed {
    self.speed += deltaSpeed;

    NSLog(@"New speed - %li", self.speed);
}

+ (void)loveCar:(Car *)car {
    NSLog(@"I love car - %@", car.name);
}

- (NSString *)description {
    return [NSString stringWithFormat:@"Cars name - %@", self.name];
}

@end
