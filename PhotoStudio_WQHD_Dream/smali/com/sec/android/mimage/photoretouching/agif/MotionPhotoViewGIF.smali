.class public Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;
.super Landroid/widget/ImageView;
.source "MotionPhotoViewGIF.java"


# instance fields
.field HDH:I

.field HDW:I

.field hDH:I

.field hDW:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mMotionPhotoActivity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

.field qhDH:I

.field qhDW:I

.field runnable:Ljava/lang/Runnable;

.field tabH:I

.field tabW:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->runnable:Ljava/lang/Runnable;

    const/16 v0, 0x168

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->HDW:I

    const/16 v0, 0x280

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->HDH:I

    const/16 v0, 0x500

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->hDW:I

    const/16 v0, 0x2d0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->hDH:I

    const/16 v0, 0x3c0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->qhDW:I

    const/16 v0, 0x21c

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->qhDH:I

    const/16 v0, 0x300

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->tabW:I

    const/16 v0, 0x400

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->tabH:I

    check-cast p1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->mMotionPhotoActivity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->mMotionPhotoActivity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    return-void
.end method

.method public getCurentAspectRatio()Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->mMotionPhotoActivity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    return-object v0
.end method

.method public getImageBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public onAnimationFinishedSelectGridItemAtIndex(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->mMotionPhotoActivity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->onAnimationFinishedSelectGridItemAtIndex(I)V

    return-void
.end method

.method public recycleBitmap()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public startThumbSelectionAtIndex(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->mMotionPhotoActivity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->startIndex(I)V

    return-void
.end method

.method public startThumbSelectionAtIndex(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->mMotionPhotoActivity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->startIndex(IZ)V

    return-void
.end method
