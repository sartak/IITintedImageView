`IITintedImageView` is a subclass of `UIView` (not `UIImageView` due to UIKit implementation details) that supports tinting the chosen image. For best results use a white foreground and transparent background.

    IITintedImageView *imageView = [[IITintedImageView alloc] init];
    imageView.image = [UIImage imageNamed:@"hello-world.png"];
    imageView.tint = [UIColor redColor];

It's also `UIAppearance` ready!

    [[IITintedImageView appearance] setTintColor:[UIColor greenColor]];

