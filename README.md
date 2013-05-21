`IITintedImageView` is a subclass of `UIView` (not `UIImageView` due to UIKit implementation details) that supports tinting the chosen image. For best results use a white foreground and transparent background.

    IITintedImageView *imageView = [[IITintedImageView alloc] init];
    imageView.image = [UIImage imageNamed:@"hello-world.png"];
    imageView.tint = [UIColor redColor];

It's also `UIAppearance` ready!

    [[IITintedImageView appearance] setTintColor:[UIColor greenColor]];

`IITintedImageView` is not a subclass of `UIImageView` because `UIImageView` optimizes rendering its attached `UIImage`, so there is no hook point for overriding that. This means you need to be careful when adding an `IITintedImageView` to your xib or storyboard; drag out a `UIView` (NOT a `UIImageView`) and set its class to `IITintedImageView`.
