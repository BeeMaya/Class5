#import <Foundation/Foundation.h>
#import "SmartRect.h"
#import <math.h>

@implementation SmartRect

-(instancetype)initWithOrigin:(CGPoint)origin andWidth:(float)width andHeigh:(float)height {
    
    self = [super init];
    
    if(self){
        self.origin = origin;
        self.width = width;
        self.height = height;
        
    }
    return self;
}

-(float)square{
    
    float result = self.height * self.width;
    return result;
}

-(CGPoint)center{
    CGPoint result = {self.origin.x + self.width/2, self.origin.y + self.height/2};
    return result;
}

-(float)diag{
    
    float result = sqrtf(self.width*self.width + self.height*self.height);
    return result;
}


-(BOOL)isPointInRect:(CGPoint)myPoint{
    BOOL result = NO;
    if (myPoint.x > self.origin.x && myPoint.x <= (self.origin.x+self.width) && myPoint.y > self.origin.y && myPoint.y <= (self.origin.y+self.height)) {
        
        NSLog(@"my point is in rect");
    }
    else {
        NSLog(@"my point is out OFF rect");
    }
    return result;
}

- (NSString *)description{
    NSString* result;
    result = [NSString stringWithFormat:@"x:%g y:%g w:%g h:%g",
              self.origin.x,
              self.origin.y,
              self.width,
              self.height];
    return result;
}

@end
