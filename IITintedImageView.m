#import "IITintedImageView.h"

@implementation IITintedImageView

-(id)init {
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.opaque = NO;
    }
    return self;
}

-(id)initWithImage:(UIImage *)image tinted:(UIColor *)tintColor {
    self = [self init];
    if (self) {
        self.image = image;
        self.tintColor = tintColor;
    }
    return self;
}

-(void) setImage:(UIImage *)image {
    _image = image;
    self.bounds = CGRectMake(0, 0, image.size.width, image.size.height);
    [self setNeedsDisplay];
}

-(void) setTintColor:(UIColor *)tintColor {
    _tintColor = tintColor;
    [self setNeedsDisplay];
}

-(void) flipTintColors {
    UIColor *tempColor = self.secondaryTintColor;
    self.secondaryTintColor = self.tintColor;
    self.tintColor = tempColor;
}

- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();

    //resolve CG/iOS coordinate mismatch
    CGContextScaleCTM(context, 1, -1);
    CGContextTranslateCTM(context, 0, -rect.size.height);

    CGContextClipToMask(context, rect, self.image.CGImage);

    if (self.tintColor) {
        CGContextSetFillColor(context, CGColorGetComponents(self.tintColor.CGColor));
        CGContextFillRect(context, rect);

        CGContextSetBlendMode(context, kCGBlendModeDestinationAtop);
    }
}

@end
