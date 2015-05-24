//
//  GetImageViewController.m
//  
//
//  Created by Parker, Carl (HBO) on 5/18/15.
//
//

#import "GetImageViewController.h"
#import "ImageInfo.h"


@interface GetImageViewController () 

@end

@implementation GetImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)captureImageIconTapped:(id)sender {
    
    BOOL isCameraAvailable = [UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera];
    
    BOOL isPhotoLibraryAvailable = [UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypePhotoLibrary];
    
    UIAlertController *ac = [UIAlertController alertControllerWithTitle:@"Image Source"
                                                                message:@"Select the Source from Which to Capture the Image?"
                                                         preferredStyle:UIAlertControllerStyleActionSheet];
    
    if (isCameraAvailable) {
        [ac addAction:[UIAlertAction actionWithTitle:@"Camera"
                                               style:UIAlertActionStyleDefault
                                             handler:^(UIAlertAction *action) {
                                                 NSLog(@"Image Src: Camera");
                                                 
                                                 [self _presentImagePicker:UIImagePickerControllerSourceTypeCamera];
                                             }]];
    }
    
    if (isPhotoLibraryAvailable) {
        [ac addAction:[UIAlertAction actionWithTitle:@"Photo Library"
                                               style:UIAlertActionStyleDefault
                                             handler:^(UIAlertAction *action) {
                                                 NSLog(@"Image Src: Photo Lib");
                                                 
                                                 [self _presentImagePicker:UIImagePickerControllerSourceTypePhotoLibrary];
                                                 
                                             }]];
        
    }
    
    [ac addAction:[UIAlertAction actionWithTitle:@"Cancel"
                                           style:UIAlertActionStyleCancel
                                         handler:nil]];
    //
    // Present the action sheet.
    //
    // In the demo, Shawn uses [self showDetailViewController...] here
    //
    [self presentViewController:ac animated:YES completion:nil];

}

-(void) _presentImagePicker:(UIImagePickerControllerSourceType)sourceType {
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    imagePicker.sourceType = sourceType;
    imagePicker.mediaTypes = @[ (NSString *) kUTTypeImage ];
    imagePicker.delegate = self;
    
    [self presentViewController:imagePicker animated:YES completion:nil];
}


-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {

    NSLog( @"@%s", __PRETTY_FUNCTION__ );
    UIImage *selectedImage = info[UIImagePickerControllerOriginalImage];
    
    self.displayPickedImageView.image = selectedImage;
    
    ImageInfo *imageInfo = [[ImageInfo alloc] initWithImage:selectedImage];
    
    [self.getImageDelegate getImageViewController:self didGetImageInfo:imageInfo];

    [self dismissViewControllerAnimated:YES completion:nil];
    
    
}


-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {

    NSLog( @"@%s", __PRETTY_FUNCTION__ );
    [self dismissViewControllerAnimated:YES completion:nil];
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
