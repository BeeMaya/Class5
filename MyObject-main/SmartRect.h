@class SmartCircle;

@interface SmartRect : NSObject

@property(nonatomic) CGPoint origin;

@property(nonatomic) float width;

@property(nonatomic) float height;

-(instancetype)initWithOrigin:(CGPoint)origin
                     andWidth:(float)width
                     andHeigh:(float)height;

-(float)square;

-(CGPoint)center;

-(float)diag;

-(BOOL)isPointInRect:(CGPoint)myPoint;


@end

