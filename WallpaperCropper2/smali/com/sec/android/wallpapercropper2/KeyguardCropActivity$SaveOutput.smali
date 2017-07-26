.class Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;
.super Ljava/lang/Object;
.source "KeyguardCropActivity.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveOutput"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCropBounds:Landroid/graphics/RectF;

.field mInFilePath:Ljava/lang/String;

.field mInImageBytes:[B

.field mInResId:I

.field private mInUri:Landroid/net/Uri;

.field private mRotation:I

.field final synthetic this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;


# direct methods
.method static synthetic -get0(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mInResId:I

    iput-object p2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mContext:Landroid/content/Context;

    iget-object v0, p1, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mInUri:Landroid/net/Uri;

    iget-object v0, p1, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    :goto_0
    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/CropView;->getImageRotation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mRotation:I

    return-void

    :cond_0
    iget-object v0, p1, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    goto :goto_0
.end method

.method private cropBitmap(Z)Landroid/graphics/Bitmap;
    .locals 11

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-boolean v0, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsAttachedMobileKeyboard:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get18(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-boolean v1, v1, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsAttachedMobileKeyboard:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get18(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    :goto_1
    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget v2, v2, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-virtual {v1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07009f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_0
    invoke-static {}, Lcom/android/gallery3d/util/Utils;->isLockScreenRotateDisabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget v2, v2, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-virtual {v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get18(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get18(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    :cond_1
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    sget-boolean v2, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mSupportWideHome:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-boolean v2, v2, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWideWallpaperApplied:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-object v2, v2, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWideRect:Landroid/graphics/RectF;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget v2, v2, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-object v3, v3, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWideRect:Landroid/graphics/RectF;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mCropBounds:Landroid/graphics/RectF;

    :goto_2
    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget v2, v2, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperType:I

    packed-switch v2, :pswitch_data_0

    :goto_3
    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get16(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get16(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get16(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-gez v2, :cond_9

    const/4 v2, 0x0

    :goto_4
    iput v2, v3, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get16(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get16(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-gez v2, :cond_a

    const/4 v2, 0x0

    :goto_5
    iput v2, v3, Landroid/graphics/Rect;->top:I

    :cond_2
    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get10(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get10(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get10(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-gez v2, :cond_b

    const/4 v2, 0x0

    :goto_6
    iput v2, v3, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get10(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get10(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-gez v2, :cond_c

    const/4 v2, 0x0

    :goto_7
    iput v2, v3, Landroid/graphics/Rect;->top:I

    :cond_3
    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mRotation:I

    if-lez v3, :cond_f

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-object v2, v2, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mBitmapSource:Lcom/sec/android/wallpapercropper2/UriBitmapSource;

    invoke-virtual {v2}, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->getRegionDecoder()Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mRotation:I

    int-to-float v3, v3

    invoke-virtual {v8, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    iget v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mRotation:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v7}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mCropBounds:Landroid/graphics/RectF;

    if-eqz v2, :cond_d

    new-instance v3, Landroid/graphics/Point;

    invoke-interface {v2}, Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;->getWidth()I

    move-result v5

    invoke-interface {v2}, Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;->getHeight()I

    move-result v6

    invoke-direct {v3, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    :goto_8
    if-nez v3, :cond_e

    const-string/jumbo v0, "Cropper2_KeyguardAct"

    const-string/jumbo v1, "cannot get bounds for image"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get21(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)F

    move-result v0

    float-to-int v0, v0

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get20(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)F

    move-result v1

    float-to-int v1, v1

    goto/16 :goto_1

    :cond_6
    if-nez p1, :cond_7

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-object v3, v3, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v3}, Lcom/sec/android/wallpapercropper2/CropView;->getCrop()Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mCropBounds:Landroid/graphics/RectF;

    goto/16 :goto_2

    :cond_7
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-object v3, v3, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v3}, Lcom/sec/android/wallpapercropper2/CropView;->getCrop()Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mCropBounds:Landroid/graphics/RectF;

    goto/16 :goto_2

    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v2, v3}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-set1(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mCropBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v3}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get16(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-set0(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    goto/16 :goto_3

    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v2, v3}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-set0(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mCropBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v3}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get10(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-set1(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    goto/16 :goto_3

    :pswitch_2
    if-eqz p1, :cond_8

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v2, v3}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-set0(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mCropBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v3}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get10(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    goto/16 :goto_3

    :cond_8
    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v2, v3}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-set1(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mCropBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v3}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get16(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    goto/16 :goto_3

    :cond_9
    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get16(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    goto/16 :goto_4

    :cond_a
    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get16(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    goto/16 :goto_5

    :cond_b
    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get10(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    goto/16 :goto_6

    :cond_c
    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get10(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    goto/16 :goto_7

    :cond_d
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->getImageBounds()Landroid/graphics/Point;

    move-result-object v3

    goto/16 :goto_8

    :cond_e
    const/4 v5, 0x2

    new-array v5, v5, [F

    iget v6, v3, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    const/4 v9, 0x0

    aput v6, v5, v9

    iget v6, v3, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    const/4 v9, 0x1

    aput v6, v5, v9

    invoke-virtual {v8, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 v6, 0x0

    aget v6, v5, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/4 v9, 0x0

    aput v6, v5, v9

    const/4 v6, 0x1

    aget v6, v5, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/4 v9, 0x1

    aput v6, v5, v9

    iget-object v6, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mCropBounds:Landroid/graphics/RectF;

    const/4 v9, 0x0

    aget v9, v5, v9

    neg-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    const/4 v10, 0x1

    aget v5, v5, v10

    neg-float v5, v5

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v5, v10

    invoke-virtual {v6, v9, v5}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v5, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v4, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mCropBounds:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    invoke-virtual {v4, v5, v3}, Landroid/graphics/RectF;->offset(FF)V

    :cond_f
    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v7}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    iget v3, v7, Landroid/graphics/Rect;->left:I

    if-gez v3, :cond_11

    const/4 v3, 0x0

    :goto_9
    iput v3, v7, Landroid/graphics/Rect;->left:I

    iget v3, v7, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_12

    const/4 v3, 0x0

    :goto_a
    iput v3, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lez v3, :cond_10

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-gtz v3, :cond_13

    :cond_10
    const-string/jumbo v0, "Cropper2_KeyguardAct"

    const-string/jumbo v1, "crop has bad values for full size image"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_11
    iget v3, v7, Landroid/graphics/Rect;->left:I

    goto :goto_9

    :cond_12
    iget v3, v7, Landroid/graphics/Rect;->top:I

    goto :goto_a

    :cond_13
    const/4 v3, 0x1

    if-eqz v0, :cond_14

    if-eqz v1, :cond_14

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/2addr v3, v0

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_14
    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v6, 0x1

    if-lt v3, v6, :cond_15

    iput v3, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_15
    if-nez v2, :cond_16

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-object v2, v2, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mBitmapSource:Lcom/sec/android/wallpapercropper2/UriBitmapSource;

    invoke-virtual {v2}, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->getRegionDecoder()Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    move-result-object v2

    :cond_16
    if-eqz v2, :cond_17

    invoke-interface {v2}, Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;->isRecycled()Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-eqz v6, :cond_1e

    :cond_17
    :goto_b
    const/4 v6, 0x0

    const/4 v5, 0x0

    if-nez v4, :cond_1c

    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->regenerateInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    const/4 v2, 0x0

    if-eqz v6, :cond_18

    :try_start_2
    invoke-virtual {p0, v3}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->calculateBitmapOptionsSampleSize(I)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    const/4 v9, 0x0

    invoke-static {v6, v9, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v5

    :cond_18
    if-nez v5, :cond_19

    :try_start_3
    iget-object v9, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-object v10, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mInUri:Landroid/net/Uri;

    invoke-static {v9, v10}, Lcom/android/gallery3d/util/Utils;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mInFilePath:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mInFilePath:Ljava/lang/String;

    if-eqz v9, :cond_19

    iget-object v9, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mInFilePath:Ljava/lang/String;

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f

    :cond_19
    :goto_c
    if-eqz v5, :cond_1b

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get13(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v3, 0x1

    :cond_1a
    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mCropBounds:Landroid/graphics/RectF;

    iget v9, v2, Landroid/graphics/RectF;->left:F

    int-to-float v10, v3

    div-float/2addr v9, v10

    iput v9, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mCropBounds:Landroid/graphics/RectF;

    iget v9, v2, Landroid/graphics/RectF;->top:F

    int-to-float v10, v3

    div-float/2addr v9, v10

    iput v9, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mCropBounds:Landroid/graphics/RectF;

    iget v9, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v10, v3

    div-float/2addr v9, v10

    iput v9, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mCropBounds:Landroid/graphics/RectF;

    iget v9, v2, Landroid/graphics/RectF;->right:F

    int-to-float v3, v3

    div-float v3, v9, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v7}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    iget v2, v7, Landroid/graphics/Rect;->left:I

    if-gez v2, :cond_22

    const/4 v2, 0x0

    :goto_d
    iput v2, v7, Landroid/graphics/Rect;->left:I

    iget v2, v7, Landroid/graphics/Rect;->top:I

    if-gez v2, :cond_23

    const/4 v2, 0x0

    :goto_e
    iput v2, v7, Landroid/graphics/Rect;->top:I

    iget v2, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_24

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    :goto_f
    iput v2, v7, Landroid/graphics/Rect;->right:I

    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_25

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    :goto_10
    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    iget v2, v7, Landroid/graphics/Rect;->left:I

    iget v3, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v5, v2, v3, v9, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    :cond_1b
    invoke-static {v6}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    :cond_1c
    move-object v3, v4

    :goto_11
    if-nez v3, :cond_27

    const-string/jumbo v0, "Cropper2_KeyguardAct"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cannot decode file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mInUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_1d

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_1d
    :goto_12
    const/4 v0, 0x0

    return-object v0

    :cond_1e
    :try_start_4
    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    invoke-interface {v2, v7, v5}, Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v4

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_b

    :catch_0
    move-exception v2

    const-string/jumbo v5, "Cropper2_KeyguardAct"

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :catchall_0
    move-exception v5

    :try_start_7
    monitor-exit v2

    throw v5
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception v2

    const-string/jumbo v5, "Cropper2_KeyguardAct"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_1f
    if-nez v2, :cond_20

    :try_start_8
    invoke-virtual {p0, v3}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->calculateBitmapOptionsSampleSize(I)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    :cond_20
    iget-object v9, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mInFilePath:Ljava/lang/String;

    const-string/jumbo v10, ".golf"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_21

    new-instance v2, Lcom/android/gallery3d/golf/GolfMgr;

    invoke-direct {v2}, Lcom/android/gallery3d/golf/GolfMgr;-><init>()V

    iget-object v9, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mInFilePath:Ljava/lang/String;

    invoke-virtual {v2, v9}, Lcom/android/gallery3d/golf/GolfMgr;->CreateThumbnails(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto/16 :goto_c

    :cond_21
    iget-object v9, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mInFilePath:Ljava/lang/String;

    invoke-static {v9, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto/16 :goto_c

    :cond_22
    iget v2, v7, Landroid/graphics/Rect;->left:I

    goto/16 :goto_d

    :cond_23
    iget v2, v7, Landroid/graphics/Rect;->top:I

    goto/16 :goto_e

    :cond_24
    iget v2, v7, Landroid/graphics/Rect;->right:I

    goto/16 :goto_f

    :cond_25
    iget v2, v7, Landroid/graphics/Rect;->bottom:I
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_10

    :catch_2
    move-exception v2

    move-object v3, v5

    move-object v5, v6

    :goto_13
    :try_start_9
    const-string/jumbo v6, "Cropper2_KeyguardAct"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    invoke-static {v5}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    :goto_14
    move-object v5, v3

    move-object v3, v4

    goto/16 :goto_11

    :catch_3
    move-exception v2

    :try_start_a
    const-string/jumbo v3, "Cropper2_KeyguardAct"

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    invoke-static {v6}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v3, v5

    goto :goto_14

    :catchall_1
    move-exception v0

    :goto_15
    invoke-static {v6}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :cond_26
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_12

    :cond_27
    sget-boolean v2, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mSupportWideHome:Z

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-boolean v2, v2, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWideWallpaperApplied:Z

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-object v2, v2, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWideRect:Landroid/graphics/RectF;

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget v2, v2, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperType:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2d

    const/4 v2, 0x1

    :goto_16
    const/4 v4, 0x0

    if-lez v0, :cond_2e

    if-lez v1, :cond_2e

    :cond_28
    const/4 v4, 0x2

    new-array v4, v4, [F

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x0

    aput v6, v4, v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x1

    aput v6, v4, v7

    invoke-virtual {v8, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 v6, 0x0

    aget v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/4 v7, 0x0

    aput v6, v4, v7

    const/4 v6, 0x1

    aget v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/4 v7, 0x1

    aput v6, v4, v7

    if-nez v2, :cond_29

    if-lez v0, :cond_29

    if-gtz v1, :cond_2f

    :cond_29
    :goto_17
    const/4 v0, 0x0

    aget v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x1

    aget v1, v4, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    :cond_2a
    new-instance v2, Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, v4, v8

    const/4 v9, 0x1

    aget v4, v4, v9

    invoke-direct {v2, v6, v7, v8, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v4, Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/4 v7, 0x0

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-direct {v4, v6, v7, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mRotation:I

    const/4 v1, 0x1

    invoke-static {v3, v2, v4, v0, v1}, Lcom/android/gallery3d/util/BitmapUtils;->getRotatedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_18
    if-eqz v5, :cond_2b

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_30

    :cond_2b
    :goto_19
    if-nez v0, :cond_2c

    move-object v0, v3

    :cond_2c
    return-object v0

    :cond_2d
    const/4 v2, 0x0

    goto :goto_16

    :cond_2e
    iget v6, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mRotation:I

    if-gtz v6, :cond_28

    move-object v0, v4

    goto :goto_18

    :cond_2f
    int-to-float v2, v0

    const/4 v6, 0x0

    aget v6, v4, v6

    cmpl-float v2, v2, v6

    if-lez v2, :cond_2a

    int-to-float v2, v1

    const/4 v6, 0x1

    aget v6, v4, v6

    cmpl-float v2, v2, v6

    if-lez v2, :cond_2a

    goto :goto_17

    :cond_30
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_19

    :catchall_2
    move-exception v0

    move-object v6, v5

    goto/16 :goto_15

    :catch_4
    move-exception v2

    move-object v3, v5

    move-object v5, v6

    goto/16 :goto_13

    :catch_5
    move-exception v2

    move-object v3, v5

    move-object v5, v6

    goto/16 :goto_13

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private regenerateInputStream()Ljava/io/InputStream;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mInUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mInResId:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mInFilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mInImageBytes:[B

    if-nez v0, :cond_0

    const-string/jumbo v0, "Cropper2_KeyguardAct"

    const-string/jumbo v1, "cannot read original file, no input URI, resource ID, or image byte array given"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v3

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mInUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mInUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mInFilePath:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mInFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mInImageBytes:[B

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mInImageBytes:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    :cond_3
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-virtual {v1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mInResId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput$1;

    invoke-direct {v2, p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput$1;-><init>(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string/jumbo v0, "Cropper2_KeyguardAct"

    const-string/jumbo v2, "cannot read file: "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected calculateBitmapOptionsSampleSize(I)Landroid/graphics/BitmapFactory$Options;
    .locals 3

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get14(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get2(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get1(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x44800000    # 1024.0f

    div-float v1, v2, v1

    invoke-static {v1}, Lcom/android/gallery3d/util/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0
.end method

.method public getImageBounds()Landroid/graphics/Point;
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->regenerateInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v0, :cond_0

    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    :cond_0
    return-object v3
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-boolean v0, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsDestroyStart:Z

    if-eqz v0, :cond_1

    :cond_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-boolean v0, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsDualViewLockscreen:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get6(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    move-result-object v0

    sget-object v4, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->DUAL_MODE_RIGHT:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    if-eq v0, v4, :cond_7

    invoke-direct {p0, v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->cropBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "Cropper2_KeyguardAct"

    const-string/jumbo v2, "SaveOutput : cropBitmapLeft NULL"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get6(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    move-result-object v2

    sget-object v4, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->DUAL_MODE_LEFT:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    if-ne v2, v4, :cond_5

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-virtual {v2, p1, v1, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->saveLockScreenImageMOS(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    :cond_3
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    return-object v0

    :cond_5
    invoke-direct {p0, v3}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->cropBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_6

    const-string/jumbo v0, "Cropper2_KeyguardAct"

    const-string/jumbo v2, "SaveOutput : cropBitmapRight NULL"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_6
    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-virtual {v1, p1, v2, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->saveLockScreenImageMOS(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-boolean v0, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsBothScreenView:Z

    if-eqz v0, :cond_10

    invoke-direct {p0, v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->cropBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_8

    const-string/jumbo v0, "Cropper2_KeyguardAct"

    const-string/jumbo v2, "SaveOutput : cropBitmapLeft NULL"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_8
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageType:Ljava/lang/String;

    const-string/jumbo v5, "cinematic"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0, v3}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->cropBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "Cropper2_KeyguardAct"

    const-string/jumbo v2, "SaveOutput : cropBitmapLock NULL"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_9
    move-object v0, v1

    :cond_a
    iget-object v5, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-virtual {v5, p1, v0, v4}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->saveCroppedImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-boolean v5, v5, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsDestroyStart:Z

    if-eqz v5, :cond_f

    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_c
    :goto_1
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_d
    :goto_2
    if-eqz v3, :cond_4

    return-object v1

    :cond_e
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :cond_f
    const-string/jumbo v0, "Cropper2_KeyguardAct"

    const-string/jumbo v3, "cannot save bitmap"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    goto :goto_2

    :cond_10
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget v0, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperType:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_11

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageType:Ljava/lang/String;

    const-string/jumbo v4, "cinematic"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_3
    if-nez v0, :cond_12

    invoke-direct {p0, v3}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->cropBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "Cropper2_KeyguardAct"

    const-string/jumbo v2, "SaveOutput : cropBitmap NULL"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_11
    move v0, v3

    goto :goto_3

    :cond_12
    move-object v0, v1

    :cond_13
    iget-object v4, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-virtual {v4, p1, v0, v1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->saveCroppedImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z

    move-result v4

    if-nez v4, :cond_14

    iget-object v4, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-boolean v4, v4, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsDestroyStart:Z

    if-eqz v4, :cond_17

    :cond_14
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_15
    move v0, v3

    :goto_4
    if-eqz v0, :cond_4

    return-object v1

    :cond_16
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move v0, v3

    goto :goto_4

    :cond_17
    const-string/jumbo v0, "Cropper2_KeyguardAct"

    const-string/jumbo v3, "cannot save bitmap"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_4
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
