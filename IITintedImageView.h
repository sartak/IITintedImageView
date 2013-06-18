#import <UIKit/UIKit.h>

@interface IITintedImageView : UIView

@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) UIColor *tintColor UI_APPEARANCE_SELECTOR;
@property (nonatomic, strong) UIColor *secondaryTintColor UI_APPEARANCE_SELECTOR;

-(id)initWithImage:(UIImage *)image tinted:(UIColor *)tintColor;

@end
