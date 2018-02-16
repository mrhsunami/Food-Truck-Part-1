//
//  main.m
//  FoodTruck
//
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodTruck.h"
#import "Cook.h"
#import "celebrityChefs.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        FoodTruck *truckA = [[FoodTruck alloc] initWithName:@"Take a Bao" andFoodType:@"bao"];
        
        FoodTruck *truckB = [[FoodTruck alloc] initWithName:@"Tim Shortons" andFoodType:@"shortbread"];
        
        FoodTruck *breadStreetTruck = [[FoodTruck alloc] initWithName:@"Bread Street Truck" andFoodType:@"streetbread"];
        // create instances of your delegate class
        Cook *currentCook = [[Cook alloc]init];
        celebrityChefs *gordonRamsay = [celebrityChefs new];
        // set truckA and truckB's delegate to your new instance.
        truckA.delegate = currentCook;
        truckB.delegate = currentCook;
        breadStreetTruck.delegate = gordonRamsay;
        
        
        [truckA serve:10];
        [truckB serve:5];
        [breadStreetTruck serve:100];
        
        [truckA cashOut];
        [truckB cashOut];
        [breadStreetTruck cashOut];
    }
    return 0;
}
