.class public Lcom/sec/android/gallery3d/ui/CropView;
.super Lcom/sec/android/gallery3d/ui/GLView;
.source "CropView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/ui/GifPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;,
        Lcom/sec/android/gallery3d/ui/CropView$DetectFaceTask;,
        Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;
    }
.end annotation


# static fields
.field private static final COLOR_CIRCLE_INSIDE_OUTLINE:I

.field private static final COLOR_CIRCLE_OUTSIDE_OUTLINE:I = 0x4d000000

.field private static final DEFAULT_PADDING_CROP_HANDLER_RATIO:F = 0.16666667f

.field private static final EDGE_ADJUSTMENT:I

.field private static final FACE_PIXEL_COUNT:I = 0x1d4c0

.field private static final KNOX_DESKTOP_BAR_HEIGHT:I = 0x30

.field private static final MIN_RANGE_RATIO:F = 0.0125f

.field private static final MIN_SELECTION_LENGTH:F = 16.0f

.field public static final MOUSE_HOVERING_ALL_SCROLL:I = 0x6

.field public static final MOUSE_HOVERING_DEFAULT:I = 0x1

.field public static final MOUSE_HOVERING_HORIZONTAL_DOUBLE_ARROW:I = 0x2

.field public static final MOUSE_HOVERING_TOP_LEFT_DIAGONAL_DOUBLE_ARROW:I = 0x4

.field public static final MOUSE_HOVERING_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW:I = 0x5

.field public static final MOUSE_HOVERING_VERTICAL_DOUBLE_ARROW:I = 0x3

.field private static final MOVE_BLOCK:I = 0x10

.field private static final MOVE_BOTTOM_EDGE:I = 0x8

.field private static final MOVE_LEFT_EDGE:I = 0x1

.field private static final MOVE_RIGHT_EDGE:I = 0x4

.field private static final MOVE_TOP_EDGE:I = 0x2

.field private static final MSG_ACQUIRE_AGIF_PLAY_BOOST:I = 0x3

.field private static final MSG_RELEASE_AGIF_PLAY_BOOST:I = 0x4

.field private static final MSG_UPDATE_FACES:I = 0x1

.field private static final MSG_UPDATE_ZOOM_IN_OUT_BUTTON:I = 0x2

.field private static final OUTLINE_WIDTH:F

.field private static final PANORAMA_RATIO:F = 2.7f

.field private static final PANORAMA_SCALE_RATIO:F = 2.0f

.field private static final SIZE_UNKNOWN:I = -0x1

.field private static final SUPPORT_KNOX_DESKTOP:Z

.field private static final TAG:Ljava/lang/String; = "CropView"

.field private static final TOUCH_DEADZONE_ADJUST_a_WIDE:F = 0.02f

.field private static final UNSPECIFIED:F = -1.0f

.field private static sSelectionRatio:F


# instance fields
.field private borderDisplayRect:Landroid/graphics/RectF;

.field private mActionBarSize:I

.field private final mActivity:Lcom/sec/android/gallery3d/app/CropImage;

.field private mAgifMode:Z

.field private mAspectRatio:F

.field private mCenterX:F

.field private mCenterY:F

.field private final mContext:Landroid/content/Context;

.field private mDefaultPaddingBottomVertitcal:I

.field private mDefaultPaddingHorizontal:I

.field private mDefaultPaddingTopVertitcal:I

.field private mDexInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

.field private final mGestureListener:Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;

.field private final mGestureRecognizer:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

.field private final mHighlightRectangle:Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;

.field private mIgnoreScroll:Z

.field private mImageDefaultMaxHeight:I

.field private mImageDefaultMaxWidth:I

.field private mImageHeight:I

.field private mImageRotation:I

.field private final mImageView:Lcom/sec/android/gallery3d/ui/TileImageView;

.field private mImageWidth:I

.field private mIsCalledLayout:Z

.field private mIsConfigChanged:Z

.field private mIsCropAreaChanged:Z

.field private mIsFullHeightScreenImage:Z

.field private mIsLandscape:Z

.field private mIsManualFD:Z

.field private mIsPhotoFrame:Z

.field private mIsSNote:Z

.field private mIsSView:Z

.field public mIsSetAsContactPhoto:Z

.field private mIsSetAsOnCircle:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private final mMiddlePaint:Lcom/sec/android/gallery3d/glrenderer/GLPaint;

.field private final mMinCropRectSize:I

.field private mMove:Z

.field private mNavigationBarHeight:I

.field private final mPaint:Lcom/sec/android/gallery3d/glrenderer/GLPaint;

.field private mScreenSize:Landroid/graphics/Point;

.field private mSpotlightRatioX:F

.field private mSpotlightRatioY:F

.field private mTargetRatio:F

.field private mTouch:Z

.field private final mUseGraceCropViewUI:Z

.field private mUseSystemBar:Z

.field private mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

.field private mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsAmoledDisplay:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, -0x50506

    :goto_0
    sput v0, Lcom/sec/android/gallery3d/ui/CropView;->COLOR_CIRCLE_INSIDE_OUTLINE:I

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/gallery3d/ui/CropView;->OUTLINE_WIDTH:F

    sget v0, Lcom/sec/android/gallery3d/ui/CropView;->OUTLINE_WIDTH:F

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/gallery3d/ui/CropView;->EDGE_ADJUSTMENT:I

    const v0, 0x3f19999a    # 0.6f

    sput v0, Lcom/sec/android/gallery3d/ui/CropView;->sSelectionRatio:F

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->SupportKnoxDesktop:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/ui/CropView;->SUPPORT_KNOX_DESKTOP:Z

    return-void

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/app/CropImage;)V
    .locals 14

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/GLView;-><init>()V

    iput-boolean v9, p0, Lcom/sec/android/gallery3d/ui/CropView;->mIsManualFD:Z

    iput-boolean v9, p0, Lcom/sec/android/gallery3d/ui/CropView;->mIsSNote:Z

    iput-boolean v9, p0, Lcom/sec/android/gallery3d/ui/CropView;->mIsPhotoFrame:Z

    iput-boolean v9, p0, Lcom/sec/android/gallery3d/ui/CropView;->mIsSView:Z

    iput-boolean v9, p0, Lcom/sec/android/gallery3d/ui/CropView;->mIsCalledLayout:Z

    iput-boolean v9, p0, Lcom/sec/android/gallery3d/ui/CropView;->mMove:Z

    iput-boolean v9, p0, Lcom/sec/android/gallery3d/ui/CropView;->mTouch:Z

    iput-boolean v9, p0, Lcom/sec/android/gallery3d/ui/CropView;->mIsSetAsOnCircle:Z

    iput-boolean v9, p0, Lcom/sec/android/gallery3d/ui/CropView;->mIsSetAsContactPhoto:Z

    iput-boolean v9, p0, Lcom/sec/android/gallery3d/ui/CropView;->mIsLandscape:Z

    iput v8, p0, Lcom/sec/android/gallery3d/ui/CropView;->mImageWidth:I

    iput v8, p0, Lcom/sec/android/gallery3d/ui/CropView;->mImageHeight:I

    const/high16 v11, -0x40800000    # -1.0f

    iput v11, p0, Lcom/sec/android/gallery3d/ui/CropView;->mAspectRatio:F

    iput v12, p0, Lcom/sec/android/gallery3d/ui/CropView;->mSpotlightRatioX:F

    iput v12, p0, Lcom/sec/android/gallery3d/ui/CropView;->mSpotlightRatioY:F

    new-instance v11, Lcom/sec/android/gallery3d/glrenderer/GLPaint;

    invoke-direct {v11}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;-><init>()V

    iput-object v11, p0, Lcom/sec/android/gallery3d/ui/CropView;->mPaint:Lcom/sec/android/gallery3d/glrenderer/GLPaint;

    new-instance v11, Lcom/sec/android/gallery3d/glrenderer/GLPaint;

    invoke-direct {v11}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;-><init>()V

    iput-object v11, p0, Lcom/sec/android/gallery3d/ui/CropView;->mMiddlePaint:Lcom/sec/android/gallery3d/glrenderer/GLPaint;

    new-instance v11, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;-><init>(Lcom/sec/android/gallery3d/ui/CropView;Lcom/sec/android/gallery3d/ui/CropView$1;)V

    iput-object v11, p0, Lcom/sec/android/gallery3d/ui/CropView;->mGestureListener:Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    iget-object v11, p0, Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/CropImage;->getAndroidContext()Landroid/content/Context;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/gallery3d/ui/CropView;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceCropViewUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v11}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/sec/android/gallery3d/ui/CropView;->mUseGraceCropViewUI:Z

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/CropView;->updateUseNaviBar()V

    iget-object v11, p0, Lcom/sec/android/gallery3d/ui/CropView;->mDexInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/gallery3d/ui/CropView;->mDexInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/CropView;->initParams()V

    iget-object v11, p0, Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b00c9

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, p0, Lcom/sec/android/gallery3d/ui/CropView;->mMinCropRectSize:I

    new-instance v11, Lcom/sec/android/gallery3d/ui/TileImageView;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/CropImage;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/sec/android/gallery3d/ui/TileImageView;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    iput-object v11, p0, Lcom/sec/android/gallery3d/ui/CropView;->mImageView:Lcom/sec/android/gallery3d/ui/TileImageView;

    new-instance v11, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;

    invoke-direct {v11, p0}, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;-><init>(Lcom/sec/android/gallery3d/ui/CropView;)V

    iput-object v11, p0, Lcom/sec/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;

    iget-object v11, p0, Lcom/sec/android/gallery3d/ui/CropView;->mImageView:Lcom/sec/android/gallery3d/ui/TileImageView;

    invoke-virtual {p0, v11}, Lcom/sec/android/gallery3d/ui/CropView;->addComponent(Lcom/sec/android/gallery3d/ui/GLView;)V

    iget-object v11, p0, Lcom/sec/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;

    invoke-virtual {p0, v11}, Lcom/sec/android/gallery3d/ui/CropView;->addComponent(Lcom/sec/android/gallery3d/ui/GLView;)V

    iget-object v11, p0, Lcom/sec/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;

    invoke-virtual {v11, v10}, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->setVisibility(I)V

    sget-boolean v11, Lcom/sec/android/gallery3d/ui/CropView;->SUPPORT_KNOX_DESKTOP:Z

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/sec/android/gallery3d/ui/CropView;->mDexInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    invoke-interface {v11}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/CropView;->initZoomInOutButton()V

    :cond_1
    sget-object v11, Lcom/sec/samsung/gallery/features/FeatureNames;->IsAmoledDisplay:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v11}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v11

    if-eqz v11, :cond_8

    const v0, -0xa0a0b

    :goto_0
    iget-object v11, p0, Lcom/sec/android/gallery3d/ui/CropView;->mPaint:Lcom/sec/android/gallery3d/glrenderer/GLPaint;

    invoke-virtual {v11, v0}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->setColor(I)V

    iget-object v11, p0, Lcom/sec/android/gallery3d/ui/CropView;->mPaint:Lcom/sec/android/gallery3d/glrenderer/GLPaint;

    sget v12, Lcom/sec/android/gallery3d/ui/CropView;->OUTLINE_WIDTH:F

    invoke-virtual {v11, v12}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->setLineWidth(F)V

    iget-object v11, p0, Lcom/sec/android/gallery3d/ui/CropView;->mMiddlePaint:Lcom/sec/android/gallery3d/glrenderer/GLPaint;

    iget-object v12, p0, Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    const v13, 0x7f1000a8

    invoke-static {v12, v13}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->setColor(I)V

    sget-object v11, Lcom/sec/samsung/gallery/features/FeatureNames;->IsAmoledDisplay:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v11}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, p0, Lcom/sec/android/gallery3d/ui/CropView;->mMiddlePaint:Lcom/sec/android/gallery3d/glrenderer/GLPaint;

    invoke-virtual {v11, v8}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->setColor(I)V

    :cond_2
    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/CropView;->mMiddlePaint:Lcom/sec/android/gallery3d/glrenderer/GLPaint;

    iget-object v11, p0, Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b00c8

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v8, v11}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->setLineWidth(F)V

    new-instance v2, Lcom/sec/android/gallery3d/glrenderer/GLPaint;

    invoke-direct {v2}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;-><init>()V

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->setColor(I)V

    sget v8, Lcom/sec/android/gallery3d/ui/CropView;->OUTLINE_WIDTH:F

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v8, v11

    invoke-virtual {v2, v8}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->setLineWidth(F)V

    new-instance v8, Lcom/sec/android/gallery3d/ui/CropView$1;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/CropImage;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v11

    invoke-direct {v8, p0, v11}, Lcom/sec/android/gallery3d/ui/CropView$1;-><init>(Lcom/sec/android/gallery3d/ui/CropView;Lcom/sec/android/gallery3d/ui/GLRoot;)V

    iput-object v8, p0, Lcom/sec/android/gallery3d/ui/CropView;->mMainHandler:Landroid/os/Handler;

    new-instance v8, Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    iget-object v11, p0, Lcom/sec/android/gallery3d/ui/CropView;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/sec/android/gallery3d/ui/CropView;->mGestureListener:Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;

    invoke-direct {v8, v11, v12}, Lcom/sec/android/gallery3d/ui/GestureRecognizer;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;)V

    iput-object v8, p0, Lcom/sec/android/gallery3d/ui/CropView;->mGestureRecognizer:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/CropView;->mGestureRecognizer:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->setCustomTouchSlop(I)V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_7

    const-string/jumbo v8, "set-as-contactphoto"

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/gallery3d/ui/CropView;->mIsSetAsContactPhoto:Z

    const-string/jumbo v8, "set-as-oncircle"

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/gallery3d/ui/CropView;->mIsSetAsOnCircle:Z

    const-string/jumbo v8, "output"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    if-eqz v5, :cond_3

    const-string/jumbo v8, "CropView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "CropView outputPath="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean v8, p0, Lcom/sec/android/gallery3d/ui/CropView;->mIsSetAsContactPhoto:Z

    if-nez v8, :cond_7

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    new-instance v4, Lcom/sec/samsung/gallery/lib/factory/CscFeatureFactory;

    invoke-direct {v4}, Lcom/sec/samsung/gallery/lib/factory/CscFeatureFactory;-><init>()V

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-interface {v4, v8}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/CscFeatureInterface;

    const-string/jumbo v8, "CscFeature_Contact_ReplacePackageAs"

    invoke-interface {v1, v8}, Lcom/sec/samsung/gallery/lib/libinterface/CscFeatureInterface;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_4
    const-string/jumbo v6, "com.android.contacts"

    :cond_5
    const-string/jumbo v7, "com.samsung.contacts"

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v11, "CropEditUserPhoto"

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_6
    move v8, v10

    :goto_1
    iput-boolean v8, p0, Lcom/sec/android/gallery3d/ui/CropView;->mIsSetAsContactPhoto:Z

    :cond_7
    iput-boolean v9, p0, Lcom/sec/android/gallery3d/ui/CropView;->mIsCropAreaChanged:Z

    return-void

    :cond_8
    move v0, v8

    goto/16 :goto_0

    :cond_9
    move v8, v9

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/ui/CropView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/CropView;->updateZoomButtonStatus()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/CropView;->getMaxIdentityRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/gallery3d/ui/CropView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mIsCropAreaChanged:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/gallery3d/ui/CropView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mIsCropAreaChanged:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/gallery3d/ui/CropView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mIsManualFD:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/gallery3d/ui/CropView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/CropView;->isAspectRatioApplied()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/gallery3d/ui/CropView;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mAspectRatio:F

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/gallery3d/ui/CropView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/CropView;->check()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/gallery3d/ui/CropView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mMove:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/sec/android/gallery3d/ui/CropView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mMove:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mScreenSize:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/sec/android/gallery3d/ui/CropView;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mScreenSize:Landroid/graphics/Point;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/Point;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/CropView;->getScreenSize()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/app/CropImage;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/gallery3d/ui/CropView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mUseSystemBar:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/sec/android/gallery3d/ui/CropView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mIsFullHeightScreenImage:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/sec/android/gallery3d/ui/CropView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mIsFullHeightScreenImage:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/sec/android/gallery3d/ui/CropView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mActionBarSize:I

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/android/gallery3d/ui/CropView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mDefaultPaddingTopVertitcal:I

    return v0
.end method

.method static synthetic access$2400(Lcom/sec/android/gallery3d/ui/CropView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mDefaultPaddingBottomVertitcal:I

    return v0
.end method

.method static synthetic access$2500(Lcom/sec/android/gallery3d/ui/CropView;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mTargetRatio:F

    return v0
.end method

.method static synthetic access$2600(II)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/sec/android/gallery3d/ui/CropView;->isPanoramaImage(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/sec/android/gallery3d/ui/CropView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mIsSetAsOnCircle:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/sec/android/gallery3d/ui/CropView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mUseGraceCropViewUI:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/sec/android/gallery3d/ui/CropView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mMinCropRectSize:I

    return v0
.end method

.method static synthetic access$3000()I
    .locals 1

    sget v0, Lcom/sec/android/gallery3d/ui/CropView;->EDGE_ADJUSTMENT:I

    return v0
.end method

.method static synthetic access$3100(Lcom/sec/android/gallery3d/ui/CropView;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mSpotlightRatioX:F

    return v0
.end method

.method static synthetic access$3200(Lcom/sec/android/gallery3d/ui/CropView;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mSpotlightRatioY:F

    return v0
.end method

.method static synthetic access$3300(Lcom/sec/android/gallery3d/ui/CropView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mIsPhotoFrame:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/glrenderer/GLPaint;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mPaint:Lcom/sec/android/gallery3d/glrenderer/GLPaint;

    return-object v0
.end method

.method static synthetic access$3600()F
    .locals 1

    sget v0, Lcom/sec/android/gallery3d/ui/CropView;->OUTLINE_WIDTH:F

    return v0
.end method

.method static synthetic access$3700(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/glrenderer/GLPaint;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mMiddlePaint:Lcom/sec/android/gallery3d/glrenderer/GLPaint;

    return-object v0
.end method

.method static synthetic access$3800()I
    .locals 1

    sget v0, Lcom/sec/android/gallery3d/ui/CropView;->COLOR_CIRCLE_INSIDE_OUTLINE:I

    return v0
.end method

.method static synthetic access$3900()F
    .locals 1

    sget v0, Lcom/sec/android/gallery3d/ui/CropView;->sSelectionRatio:F

    return v0
.end method

.method static synthetic access$4000(Lcom/sec/android/gallery3d/ui/CropView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mIsSNote:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/sec/android/gallery3d/ui/CropView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mIsSView:Z

    return v0
.end method

.method static synthetic access$4200(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/sec/android/gallery3d/ui/CropView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mDefaultPaddingHorizontal:I

    return v0
.end method

.method static synthetic access$4600(Lcom/sec/android/gallery3d/ui/CropView;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mCenterX:F

    return v0
.end method

.method static synthetic access$4602(Lcom/sec/android/gallery3d/ui/CropView;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mCenterX:F

    return p1
.end method

.method static synthetic access$4700(Lcom/sec/android/gallery3d/ui/CropView;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mCenterY:F

    return v0
.end method

.method static synthetic access$4702(Lcom/sec/android/gallery3d/ui/CropView;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mCenterY:F

    return p1
.end method

.method static synthetic access$4800(Lcom/sec/android/gallery3d/ui/CropView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mImageDefaultMaxWidth:I

    return v0
.end method

.method static synthetic access$4900(Lcom/sec/android/gallery3d/ui/CropView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mImageDefaultMaxHeight:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/sec/android/gallery3d/ui/CropView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mIgnoreScroll:Z

    return v0
.end method

.method static synthetic access$5002(Lcom/sec/android/gallery3d/ui/CropView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mIgnoreScroll:Z

    return p1
.end method

.method static synthetic access$502(Lcom/sec/android/gallery3d/ui/CropView;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    return-object p1
.end method

.method static synthetic access$5100()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/ui/CropView;->SUPPORT_KNOX_DESKTOP:Z

    return v0
.end method

.method static synthetic access$5200(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mDexInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/ui/GestureRecognizer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mGestureRecognizer:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mGestureListener:Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/gallery3d/ui/CropView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mTouch:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/gallery3d/ui/CropView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mTouch:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/gallery3d/ui/CropView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mImageWidth:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/gallery3d/ui/CropView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mImageHeight:I

    return v0
.end method

.method private check()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->left:F

    float-to-int v7, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->right:F

    float-to-int v10, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    float-to-int v11, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->left:F

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/CropView;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v14

    iput v14, v13, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->right:F

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/CropView;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v14

    iput v14, v13, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->top:F

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/CropView;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v14

    iput v14, v13, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->bottom:F

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/CropView;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v14

    iput v14, v13, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;

    invoke-static {v13}, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->access$5400(Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/app/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b00c9

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    if-eqz v9, :cond_7

    and-int/lit8 v13, v9, 0x10

    if-nez v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->left:F

    float-to-int v7, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->right:F

    float-to-int v10, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    float-to-int v11, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v13

    and-int/lit8 v13, v9, 0x2

    if-eqz v13, :cond_a

    const/4 v6, 0x1

    :goto_0
    and-int/lit8 v13, v9, 0x8

    if-eqz v13, :cond_b

    const/4 v3, 0x1

    :goto_1
    and-int/lit8 v13, v9, 0x1

    if-eqz v13, :cond_c

    const/4 v4, 0x1

    :goto_2
    and-int/lit8 v13, v9, 0x4

    if-eqz v13, :cond_d

    const/4 v5, 0x1

    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/CropView;->isAspectRatioApplied()Z

    move-result v13

    if-eqz v13, :cond_16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/gallery3d/ui/CropView;->mAspectRatio:F

    div-float v2, v13, v14

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->mScreenSize:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->x:I

    if-ne v10, v13, :cond_3

    :cond_0
    if-eqz v6, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v14, v2

    iput v14, v13, Landroid/graphics/RectF;->top:F

    :cond_1
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    const/4 v14, 0x0

    iput v14, v13, Landroid/graphics/RectF;->top:F

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/ui/CropView;->mScreenSize:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->y:I

    int-to-float v14, v14

    cmpl-float v13, v13, v14

    if-lez v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/ui/CropView;->mScreenSize:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->y:I

    int-to-float v14, v14

    iput v14, v13, Landroid/graphics/RectF;->bottom:F

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/gallery3d/ui/CropView;->mAspectRatio:F

    mul-float v12, v13, v14

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->mScreenSize:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    if-ne v1, v13, :cond_5

    :cond_4
    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->right:F

    sub-float/2addr v14, v12

    iput v14, v13, Landroid/graphics/RectF;->left:F

    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v14

    cmpg-float v13, v13, v14

    if-gez v13, :cond_12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    int-to-float v14, v8

    cmpg-float v13, v13, v14

    if-gez v13, :cond_7

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->right:F

    int-to-float v15, v8

    sub-float/2addr v14, v15

    iput v14, v13, Landroid/graphics/RectF;->left:F

    :cond_6
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/gallery3d/ui/CropView;->mAspectRatio:F

    div-float v2, v13, v14

    if-eqz v6, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v14, v2

    iput v14, v13, Landroid/graphics/RectF;->top:F

    :cond_7
    :goto_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->left:F

    int-to-float v14, v7

    cmpl-float v13, v13, v14

    if-nez v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    int-to-float v14, v11

    cmpl-float v13, v13, v14

    if-nez v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->right:F

    int-to-float v14, v10

    cmpl-float v13, v13, v14

    if-nez v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->bottom:F

    int-to-float v14, v1

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/ui/CropView;->mGestureListener:Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->identityRect(Landroid/graphics/RectF;Z)Landroid/graphics/RectF;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->access$402(Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    :cond_9
    return-void

    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_e
    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->top:F

    add-float/2addr v14, v2

    iput v14, v13, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_4

    :cond_f
    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->left:F

    add-float/2addr v14, v12

    iput v14, v13, Landroid/graphics/RectF;->right:F

    goto/16 :goto_5

    :cond_10
    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->left:F

    int-to-float v15, v8

    add-float/2addr v14, v15

    iput v14, v13, Landroid/graphics/RectF;->right:F

    goto/16 :goto_6

    :cond_11
    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->top:F

    add-float/2addr v14, v2

    iput v14, v13, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_7

    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v13

    int-to-float v14, v8

    cmpg-float v13, v13, v14

    if-gez v13, :cond_7

    if-eqz v6, :cond_14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->bottom:F

    int-to-float v15, v8

    sub-float/2addr v14, v15

    iput v14, v13, Landroid/graphics/RectF;->top:F

    :cond_13
    :goto_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/gallery3d/ui/CropView;->mAspectRatio:F

    mul-float v12, v13, v14

    if-eqz v4, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->right:F

    sub-float/2addr v14, v12

    iput v14, v13, Landroid/graphics/RectF;->left:F

    goto/16 :goto_7

    :cond_14
    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->top:F

    int-to-float v15, v8

    add-float/2addr v14, v15

    iput v14, v13, Landroid/graphics/RectF;->bottom:F

    goto :goto_8

    :cond_15
    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->left:F

    add-float/2addr v14, v12

    iput v14, v13, Landroid/graphics/RectF;->right:F

    goto/16 :goto_7

    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    int-to-float v14, v8

    cmpg-float v13, v13, v14

    if-gez v13, :cond_17

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    sub-int v14, v10, v8

    int-to-float v14, v14

    iput v14, v13, Landroid/graphics/RectF;->left:F

    :cond_17
    :goto_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v13

    int-to-float v14, v8

    cmpg-float v13, v13, v14

    if-gez v13, :cond_7

    if-eqz v6, :cond_19

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    sub-int v14, v1, v8

    int-to-float v14, v14

    iput v14, v13, Landroid/graphics/RectF;->top:F

    goto/16 :goto_7

    :cond_18
    if-eqz v5, :cond_17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    add-int v14, v7, v8

    int-to-float v14, v14

    iput v14, v13, Landroid/graphics/RectF;->right:F

    goto :goto_9

    :cond_19
    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    add-int v14, v11, v8

    int-to-float v14, v14

    iput v14, v13, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_7
.end method

.method private getMaxIdentityRect()Landroid/graphics/RectF;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mGestureListener:Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/CropView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/CropView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->identityRect(Landroid/graphics/RectF;Z)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method private getNavigationBarHeight()I
    .locals 8

    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/CropImage;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/CropImage;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getLcdRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-boolean v7, p0, Lcom/sec/android/gallery3d/ui/CropView;->mIsLandscape:Z

    if-eqz v7, :cond_0

    sub-int v1, v4, v6

    :goto_0
    if-lez v1, :cond_1

    :goto_1
    return v1

    :cond_0
    sub-int v1, v2, v5

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getScreenSize()Landroid/graphics/Point;
    .locals 8

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    const-string/jumbo v6, "window"

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/app/CropImage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v5, v2, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v5, v2, Landroid/graphics/Point;->y:I

    iget-boolean v5, p0, Lcom/sec/android/gallery3d/ui/CropView;->mUseSystemBar:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/sec/android/gallery3d/ui/CropView;->mIsLandscape:Z

    if-eqz v5, :cond_4

    iget v5, v2, Landroid/graphics/Point;->x:I

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/CropView;->getNavigationBarHeight()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v2, Landroid/graphics/Point;->x:I

    :cond_0
    :goto_0
    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/CropImage;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->getMultiWindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isMultiWindow()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/CropImage;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->getMultiWindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->getRectInfo()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/CropImage;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->getMultiWindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isScaleWindow()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget v6, v2, Landroid/graphics/Point;->x:I

    if-lt v5, v6, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v6, v2, Landroid/graphics/Point;->y:I

    if-ge v5, v6, :cond_2

    :cond_1
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v2, Landroid/graphics/Point;->y:I

    :cond_2
    sget-boolean v5, Lcom/sec/android/gallery3d/ui/CropView;->SUPPORT_KNOX_DESKTOP:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/CropView;->mDexInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    invoke-interface {v5}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, v2, Landroid/graphics/Point;->y:I

    add-int/lit8 v5, v5, -0x30

    iput v5, v2, Landroid/graphics/Point;->y:I

    :cond_3
    const-string/jumbo v5, "CropView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ScreenWidth :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ScreenHeight :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_4
    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/CropView;->getNavigationBarHeight()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v2, Landroid/graphics/Point;->y:I

    goto/16 :goto_0
.end method

.method private handleMouseHoverForDeXMode(Landroid/view/MotionEvent;)Z
    .locals 23

    const/4 v10, 0x0

    sget-boolean v19, Lcom/sec/android/gallery3d/ui/CropView;->SUPPORT_KNOX_DESKTOP:Z

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mDexInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v19

    if-eqz v19, :cond_3

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    if-nez v10, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    :cond_0
    if-nez v10, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    :cond_1
    if-nez v10, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v11, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v15, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v13, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/app/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0b0529

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    move/from16 v0, v19

    int-to-float v9, v0

    new-instance v17, Landroid/graphics/RectF;

    sub-float v19, v11, v9

    sub-float v20, v15, v9

    add-float v21, v11, v9

    add-float v22, v15, v9

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v18, Landroid/graphics/RectF;

    sub-float v19, v13, v9

    sub-float v20, v15, v9

    add-float v21, v13, v9

    add-float v22, v15, v9

    invoke-direct/range {v18 .. v22}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v7, Landroid/graphics/RectF;

    sub-float v19, v11, v9

    sub-float v20, v5, v9

    add-float v21, v11, v9

    add-float v22, v5, v9

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v8, Landroid/graphics/RectF;

    sub-float v19, v13, v9

    sub-float v20, v5, v9

    add-float v21, v13, v9

    add-float v22, v5, v9

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v8, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v12, Landroid/graphics/RectF;

    sub-float v19, v11, v9

    add-float v20, v15, v9

    add-float v21, v11, v9

    sub-float v22, v5, v9

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v14, Landroid/graphics/RectF;

    sub-float v19, v13, v9

    add-float v20, v15, v9

    add-float v21, v13, v9

    sub-float v22, v5, v9

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v16, Landroid/graphics/RectF;

    add-float v19, v11, v9

    sub-float v20, v15, v9

    sub-float v21, v13, v9

    add-float v22, v15, v9

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v6, Landroid/graphics/RectF;

    add-float v19, v11, v9

    sub-float v20, v5, v9

    sub-float v21, v13, v9

    add-float v22, v5, v9

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v19

    if-nez v19, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v19

    if-eqz v19, :cond_4

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/app/CropImage;->getAndroidContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/app/CropImage;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v20

    const/16 v21, 0x4

    invoke-static/range {v19 .. v21}, Lcom/sec/samsung/gallery/util/HoverIconUtil;->setMouseHoveringIconTo(Landroid/content/Context;Landroid/view/View;I)V

    :cond_3
    :goto_0
    return v10

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v19

    if-nez v19, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v19

    if-eqz v19, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/app/CropImage;->getAndroidContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/app/CropImage;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v20

    const/16 v21, 0x5

    invoke-static/range {v19 .. v21}, Lcom/sec/samsung/gallery/util/HoverIconUtil;->setMouseHoveringIconTo(Landroid/content/Context;Landroid/view/View;I)V

    goto :goto_0

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v19

    if-nez v19, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v19

    if-eqz v19, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/app/CropImage;->getAndroidContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/app/CropImage;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v20

    const/16 v21, 0x2

    invoke-static/range {v19 .. v21}, Lcom/sec/samsung/gallery/util/HoverIconUtil;->setMouseHoveringIconTo(Landroid/content/Context;Landroid/view/View;I)V

    goto :goto_0

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v19

    if-nez v19, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v19

    if-eqz v19, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/app/CropImage;->getAndroidContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/app/CropImage;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v20

    const/16 v21, 0x3

    invoke-static/range {v19 .. v21}, Lcom/sec/samsung/gallery/util/HoverIconUtil;->setMouseHoveringIconTo(Landroid/content/Context;Landroid/view/View;I)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v21

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v19

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/app/CropImage;->getAndroidContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/app/CropImage;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v20

    const/16 v21, 0x6

    invoke-static/range {v19 .. v21}, Lcom/sec/samsung/gallery/util/HoverIconUtil;->setMouseHoveringIconTo(Landroid/content/Context;Landroid/view/View;I)V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/app/CropImage;->getAndroidContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/app/CropImage;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v20

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Lcom/sec/samsung/gallery/util/HoverIconUtil;->setMouseHoveringIconTo(Landroid/content/Context;Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method private initParams()V
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isLandscapeOrientation(Landroid/app/Activity;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mIsLandscape:Z

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/CropView;->getScreenSize()Landroid/graphics/Point;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mScreenSize:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getActionBarSize(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mActionBarSize:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mUseGraceCropViewUI:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mDefaultPaddingHorizontal:I

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mUseGraceCropViewUI:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    iput v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mDefaultPaddingBottomVertitcal:I

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mUseGraceCropViewUI:Z

    if-eqz v1, :cond_5

    move v1, v2

    :goto_2
    iput v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mDefaultPaddingTopVertitcal:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mScreenSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/sec/android/gallery3d/ui/CropView;->mDefaultPaddingHorizontal:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mImageDefaultMaxWidth:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mScreenSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/sec/android/gallery3d/ui/CropView;->mDefaultPaddingTopVertitcal:I

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/sec/android/gallery3d/ui/CropView;->mDefaultPaddingBottomVertitcal:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mImageDefaultMaxHeight:I

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mUseSystemBar:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isMobileKeyboardCovered(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/CropImage;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->getMultiWindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isMultiWindow()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/CropView;->getNavigationBarHeight()I

    move-result v2

    :cond_0
    iput v2, p0, Lcom/sec/android/gallery3d/ui/CropView;->mNavigationBarHeight:I

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mIsLandscape:Z

    if-eqz v1, :cond_2

    const v1, 0x7f0b00cc

    :goto_3
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_2
    const v1, 0x7f0b00cb

    goto :goto_3

    :cond_3
    iget-boolean v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mIsLandscape:Z

    if-eqz v1, :cond_4

    const v1, 0x7f0b00ce

    :goto_4
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1

    :cond_4
    const v1, 0x7f0b00cd

    goto :goto_4

    :cond_5
    iget v3, p0, Lcom/sec/android/gallery3d/ui/CropView;->mActionBarSize:I

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mIsLandscape:Z

    if-eqz v1, :cond_6

    const v1, 0x7f0b00d0

    :goto_5
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, v3

    goto :goto_2

    :cond_6
    const v1, 0x7f0b00cf

    goto :goto_5
.end method

.method private initZoomInOutButton()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/CropImage;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Z)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    new-instance v0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/CropImage;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Z)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    new-instance v1, Lcom/sec/android/gallery3d/ui/CropView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/ui/CropView$2;-><init>(Lcom/sec/android/gallery3d/ui/CropView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->setOnClickListener(Lcom/sec/android/gallery3d/ui/GLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    new-instance v1, Lcom/sec/android/gallery3d/ui/CropView$3;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/ui/CropView$3;-><init>(Lcom/sec/android/gallery3d/ui/CropView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->setOnClickListener(Lcom/sec/android/gallery3d/ui/GLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/CropView;->addComponent(Lcom/sec/android/gallery3d/ui/GLView;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/CropView;->addComponent(Lcom/sec/android/gallery3d/ui/GLView;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->setEnable(Z)V

    return-void
.end method

.method private initializeHighlightRectangle(Landroid/graphics/RectF;Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;

    invoke-static {v0, p1}, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->access$4400(Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;Landroid/graphics/RectF;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isAspectRatioApplied()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mAspectRatio:F

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->equals(FF)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPanoramaImage(II)Z
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-le p0, p1, :cond_0

    int-to-float v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    :goto_0
    const v1, 0x402ccccd    # 2.7f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    int-to-float v0, p1

    int-to-float v1, p0

    div-float/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private layoutZoomInOutButton(II)V
    .locals 2

    sget-boolean v0, Lcom/sec/android/gallery3d/ui/CropView;->SUPPORT_KNOX_DESKTOP:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mDexInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->measure(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->getMeasuredRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->layout(Landroid/graphics/Rect;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->measure(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->getMeasuredRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->layout(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method private setImageViewPosition(FFF)Z
    .locals 6

    const/4 v5, 0x0

    iget v4, p0, Lcom/sec/android/gallery3d/ui/CropView;->mImageWidth:I

    int-to-float v4, v4

    sub-float v0, v4, p1

    iget v4, p0, Lcom/sec/android/gallery3d/ui/CropView;->mImageHeight:I

    int-to-float v4, v4

    sub-float v1, v4, p2

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/CropView;->mImageView:Lcom/sec/android/gallery3d/ui/TileImageView;

    iget v2, p0, Lcom/sec/android/gallery3d/ui/CropView;->mImageRotation:I

    sparse-switch v2, :sswitch_data_0

    invoke-virtual {v3, p1, p2, p3, v5}, Lcom/sec/android/gallery3d/ui/TileImageView;->setPosition(FFFI)Z

    move-result v4

    :goto_0
    return v4

    :sswitch_0
    invoke-virtual {v3, p1, p2, p3, v5}, Lcom/sec/android/gallery3d/ui/TileImageView;->setPosition(FFFI)Z

    move-result v4

    goto :goto_0

    :sswitch_1
    const/16 v4, 0x5a

    invoke-virtual {v3, p2, v0, p3, v4}, Lcom/sec/android/gallery3d/ui/TileImageView;->setPosition(FFFI)Z

    move-result v4

    goto :goto_0

    :sswitch_2
    const/16 v4, 0xb4

    invoke-virtual {v3, v0, v1, p3, v4}, Lcom/sec/android/gallery3d/ui/TileImageView;->setPosition(FFFI)Z

    move-result v4

    goto :goto_0

    :sswitch_3
    const/16 v4, 0x10e

    invoke-virtual {v3, v1, p1, p3, v4}, Lcom/sec/android/gallery3d/ui/TileImageView;->setPosition(FFFI)Z

    move-result v4

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private setVisibleForZoomButton()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-boolean v4, Lcom/sec/android/gallery3d/ui/CropView;->SUPPORT_KNOX_DESKTOP:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/CropView;->mDexInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    invoke-interface {v4}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b06be

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/CropImage;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v4, v0, :cond_1

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/CropView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/CropView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/CropView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    if-eqz v1, :cond_2

    move v4, v3

    :goto_1
    invoke-virtual {v5, v4}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/CropView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    if-eqz v1, :cond_3

    :goto_2
    invoke-virtual {v4, v3}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/CropView;->mMainHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v4, v2

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_2
.end method

.method private updateZoomButtonStatus()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mGestureListener:Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->access$300(Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;)F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mGestureListener:Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->getMaxScale()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->setEnable(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->setEnable(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mGestureListener:Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->access$300(Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;)F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mGestureListener:Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->getMinScale()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->setEnable(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->setEnable(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->getEnable()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->setEnable(Z)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->getEnable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->setEnable(Z)V

    goto :goto_0
.end method


# virtual methods
.method public detectFaces(Landroid/graphics/Bitmap;)V
    .locals 12

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v4, p0, Lcom/sec/android/gallery3d/ui/CropView;->mImageRotation:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const-wide v8, 0x40fd4c0000000000L    # 120000.0

    mul-int v10, v7, v3

    int-to-double v10, v10

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v5, v8

    div-int/lit8 v8, v4, 0x5a

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_1

    int-to-float v8, v7

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    and-int/lit8 v6, v8, -0x2

    int-to-float v8, v3

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v8, v4

    int-to-float v9, v6

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    int-to-float v10, v2

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v0, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    int-to-float v8, v6

    int-to-float v9, v7

    div-float/2addr v8, v9

    int-to-float v9, v2

    int-to-float v10, v3

    div-float/2addr v9, v10

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Landroid/graphics/Paint;

    const/4 v11, 0x2

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v0, p1, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_1
    new-instance v8, Lcom/sec/android/gallery3d/ui/CropView$DetectFaceTask;

    invoke-direct {v8, p0}, Lcom/sec/android/gallery3d/ui/CropView$DetectFaceTask;-><init>(Lcom/sec/android/gallery3d/ui/CropView;)V

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/ui/CropView$DetectFaceTask;->start()V

    goto :goto_0

    :cond_1
    int-to-float v8, v3

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    and-int/lit8 v6, v8, -0x2

    int-to-float v8, v7

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v8, v6

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    int-to-float v9, v2

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    int-to-float v8, v4

    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v8, v2

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    neg-int v9, v6

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    int-to-float v8, v6

    int-to-float v9, v3

    div-float/2addr v8, v9

    int-to-float v9, v2

    int-to-float v10, v7

    div-float/2addr v9, v10

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Landroid/graphics/Paint;

    const/4 v11, 0x2

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v0, p1, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/CropView;->handleMouseHoverForDeXMode(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0x3eb

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0x3ea

    if-ne v1, v2, :cond_2

    :cond_0
    sget-boolean v1, Lcom/sec/android/gallery3d/ui/CropView;->SUPPORT_KNOX_DESKTOP:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mDexInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    invoke-interface {v1}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->onGenericMotion(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->onGenericMotion(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mGestureRecognizer:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mGestureRecognizer:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)V

    :cond_3
    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public getCropRectangle()Landroid/graphics/RectF;
    .locals 7

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->access$400(Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/sec/android/gallery3d/ui/CropView;->mImageWidth:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/sec/android/gallery3d/ui/CropView;->mImageHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lcom/sec/android/gallery3d/ui/CropView;->mImageWidth:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget v6, p0, Lcom/sec/android/gallery3d/ui/CropView;->mImageHeight:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0
.end method

.method public getCropRectangleEx(II)Landroid/graphics/RectF;
    .locals 7

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->access$400(Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    int-to-float v3, p1

    mul-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    int-to-float v4, p2

    mul-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/RectF;->right:F

    int-to-float v5, p1

    mul-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, p2

    mul-float/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0
.end method

.method public getHeight()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, v0, v1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mUseSystemBar:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mIsLandscape:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mNavigationBarHeight:I

    :goto_0
    sub-int v0, v1, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHighlightRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->access$400(Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getImageHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mImageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mImageWidth:I

    return v0
.end method

.method public getTileImageView()Lcom/sec/android/gallery3d/ui/TileImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mImageView:Lcom/sec/android/gallery3d/ui/TileImageView;

    return-object v0
.end method

.method public getWidth()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int v1, v0, v1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mUseSystemBar:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mIsLandscape:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mNavigationBarHeight:I

    :goto_0
    sub-int v0, v1, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initializeHighlightRectangle(Landroid/graphics/RectF;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/gallery3d/ui/CropView;->initializeHighlightRectangle(Landroid/graphics/RectF;Z)V

    return-void
.end method

.method public isAGiFMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mAgifMode:Z

    return v0
.end method

.method public isCropAreaChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mIsCropAreaChanged:Z

    return v0
.end method

.method public onConfigChanged()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mIsConfigChanged:Z

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/CropView;->setVisibleForZoomButton()V

    return-void
.end method

.method public onGenericMotionCancel()V
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/ui/CropView;->SUPPORT_KNOX_DESKTOP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mDexInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->onGenericMotionCancel()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->onGenericMotionCancel()V

    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 36

    const-string/jumbo v32, "CropView"

    const-string/jumbo v33, "onLayout"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-int v31, p4, p2

    sub-int v12, p5, p3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mGestureListener:Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->access$300(Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;)F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mGestureListener:Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->getMinScale()F

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->equals(FF)Z

    move-result v32

    if-nez v32, :cond_f

    const/high16 v32, 0x3f000000    # 0.5f

    move/from16 v0, v23

    move/from16 v1, v32

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->equals(FF)Z

    move-result v32

    if-nez v32, :cond_f

    const/16 v17, 0x1

    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/CropView;->initParams()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mUseSystemBar:Z

    move/from16 v32, v0

    if-eqz v32, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mIsLandscape:Z

    move/from16 v32, v0

    if-eqz v32, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mNavigationBarHeight:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mScreenSize:Landroid/graphics/Point;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v31

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mScreenSize:Landroid/graphics/Point;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-eq v0, v12, :cond_11

    :cond_1
    sget-object v32, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v32 .. v32}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v32

    if-nez v32, :cond_11

    const/16 v18, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3, v12}, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mImageView:Lcom/sec/android/gallery3d/ui/TileImageView;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3, v12}, Lcom/sec/android/gallery3d/ui/TileImageView;->layout(IIII)V

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/gallery3d/ui/CropView;->mIsCalledLayout:Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mImageHeight:I

    move/from16 v32, v0

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mGestureListener:Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->initialize()V

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/CropView;->isAspectRatioApplied()Z

    move-result v16

    if-eqz v16, :cond_3

    if-nez v18, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mIsSetAsContactPhoto:Z

    move/from16 v32, v0

    if-nez v32, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mIsConfigChanged:Z

    move/from16 v32, v0

    if-nez v32, :cond_3

    if-nez v17, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mIsSetAsOnCircle:Z

    move/from16 v32, v0

    if-eqz v32, :cond_15

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mGestureListener:Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->access$400(Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->mapRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mImageWidth:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mGestureListener:Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->access$300(Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;)F

    move-result v33

    mul-float v15, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mImageHeight:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mGestureListener:Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->access$300(Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;)F

    move-result v33

    mul-float v14, v32, v33

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v32, v32, v15

    const/high16 v33, 0x40000000    # 2.0f

    div-float v8, v32, v33

    add-float v9, v8, v15

    int-to-float v0, v12

    move/from16 v32, v0

    sub-float v32, v32, v14

    const/high16 v33, 0x40000000    # 2.0f

    div-float v10, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mDefaultPaddingTopVertitcal:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    cmpg-float v32, v10, v32

    if-gez v32, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mDefaultPaddingTopVertitcal:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v10, v0

    :cond_4
    add-float v7, v10, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/RectF;->height()F

    move-result v4

    if-eqz v17, :cond_12

    mul-float v32, v5, v23

    div-float v26, v32, v21

    mul-float v32, v4, v23

    div-float v25, v32, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mMinCropRectSize:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    cmpg-float v32, v26, v32

    if-gez v32, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mMinCropRectSize:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v26, v0

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mMinCropRectSize:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    cmpg-float v32, v25, v32

    if-gez v32, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mMinCropRectSize:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v25, v0

    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mMinCropRectSize:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    cmpg-float v32, v5, v32

    if-gez v32, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v33, v0

    const/high16 v34, 0x40000000    # 2.0f

    div-float v34, v26, v34

    const/high16 v35, 0x40000000    # 2.0f

    div-float v35, v5, v35

    sub-float v34, v34, v35

    sub-float v33, v33, v34

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    cmpg-float v32, v32, v8

    if-gez v32, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iput v8, v0, Landroid/graphics/RectF;->left:F

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v33, v0

    add-float v33, v33, v26

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v32, v0

    cmpl-float v32, v32, v9

    if-lez v32, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iput v9, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v33, v0

    sub-float v33, v33, v26

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/graphics/RectF;->left:F

    :cond_8
    const/16 v22, 0x1

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mMinCropRectSize:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    cmpg-float v32, v4, v32

    if-gez v32, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    const/high16 v34, 0x40000000    # 2.0f

    div-float v34, v25, v34

    const/high16 v35, 0x40000000    # 2.0f

    div-float v35, v4, v35

    sub-float v34, v34, v35

    sub-float v33, v33, v34

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v32, v0

    cmpg-float v32, v32, v10

    if-gez v32, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iput v10, v0, Landroid/graphics/RectF;->top:F

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    add-float v33, v33, v25

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v32, v0

    cmpl-float v32, v32, v7

    if-lez v32, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iput v7, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v33, v0

    sub-float v33, v33, v25

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/graphics/RectF;->top:F

    :cond_b
    const/16 v22, 0x1

    :cond_c
    if-eqz v22, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mGestureListener:Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v33 .. v35}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->identityRect(Landroid/graphics/RectF;Z)Landroid/graphics/RectF;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->access$402(Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    :cond_d
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/sec/android/gallery3d/app/CropImage;->isFromDetailView()Z

    move-result v32

    if-eqz v32, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/sec/android/gallery3d/app/CropImage;->startCropHandler()V

    :cond_e
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1, v12}, Lcom/sec/android/gallery3d/ui/CropView;->layoutZoomInOutButton(II)V

    return-void

    :cond_f
    const/16 v17, 0x0

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mNavigationBarHeight:I

    move/from16 v32, v0

    sub-int v12, v12, v32

    goto/16 :goto_1

    :cond_11
    const/16 v18, 0x0

    goto/16 :goto_2

    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mIsConfigChanged:Z

    move/from16 v32, v0

    if-eqz v32, :cond_13

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/gallery3d/ui/CropView;->mIsConfigChanged:Z

    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mMinCropRectSize:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v26, v25

    if-eqz v16, :cond_6

    cmpg-float v32, v5, v4

    if-gtz v32, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mAspectRatio:F

    move/from16 v32, v0

    div-float v25, v26, v32

    goto/16 :goto_3

    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mAspectRatio:F

    move/from16 v32, v0

    mul-float v26, v25, v32

    goto/16 :goto_3

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mGestureListener:Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v33 .. v35}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->identityRect(Landroid/graphics/RectF;Z)Landroid/graphics/RectF;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->access$402(Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->access$400(Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v24

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/CropView;->getMaxIdentityRect()Landroid/graphics/RectF;

    move-result-object v20

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    const/high16 v33, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mImageWidth:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    div-float v33, v33, v34

    add-float v19, v32, v33

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v32, v0

    const/high16 v33, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mImageWidth:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    div-float v33, v33, v34

    sub-float v27, v32, v33

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v32, v0

    const/high16 v33, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mImageHeight:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    div-float v33, v33, v34

    add-float v29, v32, v33

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v32, v0

    const/high16 v33, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mImageHeight:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    div-float v33, v33, v34

    sub-float v6, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mAspectRatio:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mImageHeight:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mImageWidth:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v28, v32, v33

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->width()F

    move-result v32

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->height()F

    move-result v33

    div-float v32, v32, v33

    cmpl-float v32, v32, v28

    if-lez v32, :cond_17

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->width()F

    move-result v32

    div-float v11, v32, v28

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v32, v0

    add-float v32, v32, v11

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v29

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v32, v0

    sub-float v32, v32, v11

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-static {v0, v1, v6}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/RectF;->top:F

    :goto_5
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->width()F

    move-result v32

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->height()F

    move-result v33

    div-float v32, v32, v33

    cmpl-float v32, v32, v28

    if-lez v32, :cond_18

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->height()F

    move-result v32

    mul-float v30, v32, v28

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v32, v0

    sub-float v32, v32, v30

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    add-float v32, v32, v30

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v19

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/RectF;->right:F

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mGestureListener:Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->access$400(Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->mapRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mTargetRatio:F

    move/from16 v32, v0

    const/high16 v33, 0x3f800000    # 1.0f

    cmpl-float v32, v32, v33

    if-ltz v32, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/RectF;->width()F

    move-result v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mAspectRatio:F

    move/from16 v33, v0

    div-float v4, v32, v33

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mIsFullHeightScreenImage:Z

    move/from16 v32, v0

    if-eqz v32, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mImageHeight:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v13, v32, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mDefaultPaddingTopVertitcal:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    sub-float v34, v13, v4

    const/high16 v35, 0x40000000    # 2.0f

    div-float v34, v34, v35

    add-float v33, v33, v34

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/graphics/RectF;->top:F

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    add-float v33, v33, v4

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mGestureListener:Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v33 .. v35}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->identityRect(Landroid/graphics/RectF;Z)Landroid/graphics/RectF;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->access$402(Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/CropView;->invalidate()V

    goto/16 :goto_4

    :cond_17
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->height()F

    move-result v32

    mul-float v30, v32, v28

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v32, v0

    sub-float v32, v32, v30

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    add-float v32, v32, v30

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v19

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/RectF;->right:F

    goto/16 :goto_5

    :cond_18
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->width()F

    move-result v32

    div-float v11, v32, v28

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v32, v0

    add-float v32, v32, v11

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v29

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v32, v0

    sub-float v32, v32, v11

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-static {v0, v1, v6}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/RectF;->top:F

    goto/16 :goto_6

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView;->mScreenSize:Landroid/graphics/Point;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    sub-float v33, v33, v4

    const/high16 v34, 0x40000000    # 2.0f

    div-float v33, v33, v34

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/graphics/RectF;->top:F

    goto/16 :goto_7
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mImageView:Lcom/sec/android/gallery3d/ui/TileImageView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/TileImageView;->freeTextures()V

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mAgifMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/ui/CropView;->resetAgifMode(ZLcom/sec/android/gallery3d/data/MediaItem;)V

    :cond_0
    return-void
.end method

.method public render(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 3

    iget v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mCenterX:F

    iget v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mCenterY:F

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/CropView;->mGestureListener:Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->access$300(Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;)F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/gallery3d/ui/CropView;->setImageViewPosition(FFF)Z

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mAgifMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/CropImage;->getGifCropper()Lcom/sec/android/gallery3d/crop/GifCropper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/crop/GifCropper;->onAgifPlayRequests()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/CropView;->invalidate()V

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/ui/GLView;->render(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V

    return-void
.end method

.method public renderBackground(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 0

    invoke-interface {p1}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->clearBuffer()V

    return-void
.end method

.method public resetAgifMode(ZLcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mAgifMode:Z

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mAgifMode:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/CropImage;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->runIdleListener()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/CropView;->invalidate()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAGIFPlayBoost:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mAgifMode:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAGIFPlayBoost:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public resume()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mImageView:Lcom/sec/android/gallery3d/ui/TileImageView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/TileImageView;->prepareTextures()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mGestureListener:Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/CropView;->borderDisplayRect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->identityRect(Landroid/graphics/RectF;Z)Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->access$402(Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/CropView;->check()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/CropView;->invalidate()V

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mIsManualFD:Z

    if-eqz v0, :cond_0

    const v0, 0x3ecccccd    # 0.4f

    :goto_0
    sput v0, Lcom/sec/android/gallery3d/ui/CropView;->sSelectionRatio:F

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/CropView;->setVisibleForZoomButton()V

    return-void

    :cond_0
    const v0, 0x3f19999a    # 0.6f

    goto :goto_0
.end method

.method public setAspectRatio(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mAspectRatio:F

    return-void
.end method

.method public setDataModel(Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;I)V
    .locals 2

    div-int/lit8 v0, p2, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;->getImageHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mImageWidth:I

    invoke-interface {p1}, Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;->getImageWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mImageHeight:I

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/CropView;->isAspectRatioApplied()Z

    move-result v0

    if-nez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    iput v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mTargetRatio:F

    iput p2, p0, Lcom/sec/android/gallery3d/ui/CropView;->mImageRotation:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mImageView:Lcom/sec/android/gallery3d/ui/TileImageView;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/TileImageView;->setModel(Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mGestureListener:Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->initialize()V

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mIsCalledLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/CropView;->requestLayout()V

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;->getImageWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mImageWidth:I

    invoke-interface {p1}, Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;->getImageHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mImageHeight:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mAspectRatio:F

    iget v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mImageHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mImageWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_1
.end method

.method public setIsPhotoFrame(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mIsPhotoFrame:Z

    return-void
.end method

.method public setIsSNote(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mIsSNote:Z

    return-void
.end method

.method public setIsSView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mIsSView:Z

    return-void
.end method

.method public setManualFD(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mIsManualFD:Z

    return-void
.end method

.method public setSpotlightRatio(FF)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/ui/CropView;->mSpotlightRatioX:F

    iput p2, p0, Lcom/sec/android/gallery3d/ui/CropView;->mSpotlightRatioY:F

    return-void
.end method

.method public updateUseNaviBar()V
    .locals 3

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsImmersiveMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/CropView;->mUseSystemBar:Z

    const-string/jumbo v0, "CropView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UseNaviBar : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/ui/CropView;->mUseSystemBar:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
