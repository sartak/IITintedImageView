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

-(void)setImage:(UIImage *)image {
    [super setImage:[image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate]];
}

-(void) flipTintColors {
    UIColor *tempColor = self.secondaryTintColor;
    self.secondaryTintColor = self.tintColor;
    self.tintColor = tempColor;
}

@end
