@class SmartRect; //подключение Рект

@interface SmartCircle : NSObject

@property(nonatomic) CGPoint center;

@property(nonatomic) float radius;


-(instancetype)initWithCenter:(CGPoint)center andRadius:(float)radius;

-(float)square;

-(BOOL)isPointInCircle:(CGPoint)myPoint;

-(BOOL)isContainRect:(SmartRect*)rect;

@end

