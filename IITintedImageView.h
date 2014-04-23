#import <UIKit/UIKit.h>

@interface IITintedImageView : UIImageView

@property (nonatomic, strong) UIColor *secondaryTintColor UI_APPEARANCE_SELECTOR;

-(id)initWithImage:(UIImage *)image tinted:(UIColor *)tintColor;

@end
