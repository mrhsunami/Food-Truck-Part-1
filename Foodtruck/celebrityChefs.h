//
//  GordonRamsay.h
//  Foodtruck
//
//  Created by Nathan Hsu on 2018-02-15.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodTruck.h"

@interface celebrityChefs : NSObject <FoodTruckDelegate>

- (double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food;

@end
