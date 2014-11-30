#import <Foundation/Foundation.h>
#import <math.h>
#import "SmartCircle.h"
#import "SmartRect.h"

@implementation SmartCircle

-(instancetype)initWithCenter:(CGPoint)center andRadius:(float)radius{
    
    self = [super init];
    
    if(self){
        self.center = center;
        self.radius = radius;
    }
    
    return self;
}

-(float)square{
    
    float result = M_PI * powf(_radius, 2);
    return result;
}




-(BOOL)isPointInCircle:(CGPoint)myPoint{
    float distance = sqrt(powf(self.center.x - myPoint.x, 2) + powf(self.center.y - myPoint.y,2));
    
    BOOL result = NO;
    if (distance > self.radius) {
        NSLog(@"my point is out of circle");
    }
    else{
        NSLog(@"my point is in circle");
    }
    return result;
}




-(BOOL)isContainRect:(SmartRect *)rect{
   
    int points = [self isPointInCircle:rect.origin];
    CGPoint tr = CGPointMake(rect.origin.x + rect.width, rect.origin.y);
    points = points + [self isPointInCircle:tr];
    CGPoint br = CGPointMake(rect.origin.x + rect.width, rect.origin.y + rect.height);
    points = points + [self isPointInCircle:br];
    CGPoint bl = CGPointMake(rect.origin.x, rect.origin.y + rect.height);
    points = points + [self isPointInCircle:bl];
    
    BOOL result = points ==4;
    return result;
       
}


@end
