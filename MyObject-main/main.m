#import <Foundation/Foundation.h>
#import "SmartRect.h"
#import "SmartCircle.h"

void printResultOfIsRectInPoint(CGPoint myPoint, SmartRect* rect);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        SmartRect *rect = [[SmartRect alloc] initWithOrigin:CGPointMake(45, 56) andWidth:80 andHeigh:60];
        
        /////   SmartRect *rect1 = [[SmartRect alloc] initWithOrigin:CGPointMake(0, 0) andWidth:300 andHeigh:200];
        
        SmartCircle *circle = [[SmartCircle alloc] initWithCenter:CGPointMake(10, 20) andRadius:30];
        
        
        NSLog(@"%@,\n %g",[rect description], [rect square]);
        
        NSLog(@"(%g, %g)", [rect center].x, [rect center].y);
        
        NSLog(@"%g", [rect diag]);
        
        NSLog(@"%g", [circle square]);
        
        printResultOfIsRectInPoint(CGPointMake(5, 5), rect);
        
        printResultOfIsRectInPoint(CGPointMake(10, 15), rect);
        
        [circle isPointInCircle:CGPointMake(10, 15)];
        
        [circle isPointInCircle:CGPointMake(35, 45)];
        
        BOOL isRectInCircle = [circle isContainRect:rect];
        
        NSString *inOut = isRectInCircle ? @"in" : @"out of";
        
        NSLog(@"rect %@ is %@ circle %@", rect, inOut, circle);
                
        
    }
    return 0;
}

void printResultOfIsRectInPoint(CGPoint myPoint, SmartRect* rect){

    NSString *inOut = [rect isPointInRect:myPoint]? @"in" : @"out of ";
    
    NSLog(@"point with coords x= %g,  y=%g is %@rect", myPoint.x, myPoint.y, inOut);


}
