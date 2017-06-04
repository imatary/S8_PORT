.class public Lcom/sec/android/app/camera/menu/Review;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "Review.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/samsung/android/glview/GLView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/Review$ReviewButtonListener;
    }
.end annotation


# static fields
.field public static final REVIEW_ALPHA_VALUE:F = 0.45f

.field private static REVIEW_DISPLAY_TIMEOUT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Review"


# instance fields
.field private final BASEMENU_GROUP_WIDTH:F

.field private final REVIEW_ANIMATION_DURATION:I

.field private final REVIEW_BUTTON_SIZE:F

.field private final REVIEW_GROUP_GAP:F

.field private final REVIEW_GROUP_HEIGHT:F

.field private final REVIEW_GROUP_WIDTH:F

.field private final REVIEW_NORMAL_HEIGHT:F

.field private final REVIEW_NORMAL_POS_X:F

.field private final REVIEW_NORMAL_WIDTH:F

.field private final REVIEW_SQUARE_POS_X:F

.field private final REVIEW_SQUARE_WIDTH:F

.field private final REVIEW_SUPER_WIDE_HEIGHT:F

.field private final REVIEW_SUPER_WIDE_WIDTH:F

.field private final REVIEW_TEXT_FONT_SIZE:F

.field private final REVIEW_TEXT_STROKE_COLOR:I

.field private final REVIEW_TEXT_STROKE_WIDTH:I

.field private final REVIEW_WIDE_HEIGHT:F

.field private final REVIEW_WIDE_POS_X:F

.field private final REVIEW_WIDE_POS_Y:F

.field private final REVIEW_WIDE_WIDTH:F

.field private final SCREEN_HEIGHT:F

.field private final SCREEN_WIDTH:F

.field private final SIDE_QUICK_SETTING_WIDTH:F

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCaptureFileName:Ljava/lang/String;

.field private mContentUri:Landroid/net/Uri;

.field private mCurrentType:I

.field private mDeleteButton:Lcom/samsung/android/glview/GLButton;

.field private mLaunchChooserRunnable:Ljava/lang/Runnable;

.field private mLaunchGalleryRunnable:Ljava/lang/Runnable;

.field private mLaunchGalleryType:Ljava/lang/String;

.field private mPopupLayoutController:Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

.field private mReview:Lcom/samsung/android/glview/GLImage;

.field private mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

.field protected mReviewButtonListener:Lcom/sec/android/app/camera/menu/Review$ReviewButtonListener;

.field private mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mReviewHeight:F

.field private mReviewPosX:F

.field private mReviewPosY:F

.field private final mReviewTimeOutCallback:Ljava/lang/Runnable;

.field private mReviewUpdating:Z

.field private mReviewWidth:F

.field private mScreenOrientation:I

.field private mShadowPadding:Landroid/graphics/Rect;

.field private mShareButton:Lcom/samsung/android/glview/GLButton;

.field private mShareViaImageHeight:F

.field private mShareViaImageWidth:F

.field private mShareViaWorking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x7d0

    sput v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_DISPLAY_TIMEOUT:I

    return-void
.end method

.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/PopupLayoutController;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    int-to-float v4, v0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->SCREEN_WIDTH:F

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->SCREEN_HEIGHT:F

    const v0, 0x7f0a0012

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->BASEMENU_GROUP_WIDTH:F

    const v0, 0x7f0a000f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->SIDE_QUICK_SETTING_WIDTH:F

    const v0, 0x7f0a004c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_SUPER_WIDE_WIDTH:F

    const v0, 0x7f0a004b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_SUPER_WIDE_HEIGHT:F

    const v0, 0x7f0a004e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_WIDE_WIDTH:F

    const v0, 0x7f0a004d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_WIDE_HEIGHT:F

    const v0, 0x7f0a004a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_SQUARE_WIDTH:F

    const v0, 0x7f0a0047

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_NORMAL_WIDTH:F

    const v0, 0x7f0a0045

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_NORMAL_HEIGHT:F

    const v0, 0x7f0a0048

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_WIDE_POS_X:F

    const v0, 0x7f0a0046

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_NORMAL_POS_X:F

    const v0, 0x7f0a0049

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_SQUARE_POS_X:F

    iget v0, p0, Lcom/sec/android/app/camera/menu/Review;->SCREEN_HEIGHT:F

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_WIDE_HEIGHT:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_WIDE_POS_Y:F

    const v0, 0x7f0a029d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_WIDTH:F

    const v0, 0x7f0a029c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    const v0, 0x7f0a029b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_GAP:F

    const v0, 0x7f0a029a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_BUTTON_SIZE:F

    const v0, 0x7f0a0389

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_TEXT_FONT_SIZE:F

    const v0, 0x7f0b0013

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_ANIMATION_DURATION:I

    const v0, 0x7f0b0054

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_TEXT_STROKE_WIDTH:I

    const v0, 0x7f0d0048

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_TEXT_STROKE_COLOR:I

    iput-object v6, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewButtonListener:Lcom/sec/android/app/camera/menu/Review$ReviewButtonListener;

    iput-object v6, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iput-object v6, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    iput-object v6, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    iput-object v6, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    iput-object v6, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iput v2, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewWidth:F

    iput v2, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewHeight:F

    iput v2, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewPosX:F

    iput v2, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewPosY:F

    iput v2, p0, Lcom/sec/android/app/camera/menu/Review;->mShareViaImageWidth:F

    iput v2, p0, Lcom/sec/android/app/camera/menu/Review;->mShareViaImageHeight:F

    iput-boolean v7, p0, Lcom/sec/android/app/camera/menu/Review;->mShareViaWorking:Z

    iput v7, p0, Lcom/sec/android/app/camera/menu/Review;->mCurrentType:I

    new-instance v0, Lcom/sec/android/app/camera/menu/Review$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/Review$1;-><init>(Lcom/sec/android/app/camera/menu/Review;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewTimeOutCallback:Ljava/lang/Runnable;

    iput-object v6, p0, Lcom/sec/android/app/camera/menu/Review;->mCaptureFileName:Ljava/lang/String;

    iput-object v6, p0, Lcom/sec/android/app/camera/menu/Review;->mContentUri:Landroid/net/Uri;

    const-string v0, "quickview"

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mLaunchGalleryType:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewUpdating:Z

    new-instance v0, Lcom/sec/android/app/camera/menu/Review$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/Review$2;-><init>(Lcom/sec/android/app/camera/menu/Review;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mLaunchGalleryRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/android/app/camera/menu/Review$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/Review$3;-><init>(Lcom/sec/android/app/camera/menu/Review;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mLaunchChooserRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p2, p0, Lcom/sec/android/app/camera/menu/Review;->mPopupLayoutController:Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->mScreenOrientation:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/menu/Review;)Lcom/sec/android/app/camera/interfaces/PopupLayoutController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mPopupLayoutController:Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/Review;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mLaunchGalleryType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/camera/menu/Review;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/Review;->mLaunchGalleryType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/menu/Review;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/menu/Review;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/menu/Review;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewTimeOutCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    sget v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_DISPLAY_TIMEOUT:I

    return v0
.end method

.method private addDeleteButton()V
    .locals 14

    const/4 v13, 0x2

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    const-string v0, "Review"

    const-string v1, "addDeleteButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/Review;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    const v6, 0x7f0201da

    move v3, v2

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_WIDTH:F

    iget v3, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_BUTTON_SIZE:F

    sub-float/2addr v1, v3

    div-float/2addr v1, v11

    iget v3, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    div-float/2addr v3, v11

    iget v4, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_BUTTON_SIZE:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f09015c

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_TEXT_FONT_SIZE:F

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v4

    mul-float/2addr v3, v4

    const v4, 0x7f0d0047

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v1, v3, v4, v7}, Lcom/samsung/android/glview/GLButton;->setText(Ljava/lang/String;FIZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v13, v12}, Lcom/samsung/android/glview/GLButton;->setTextAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    div-float/2addr v1, v11

    iget v3, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_TEXT_FONT_SIZE:F

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v11

    add-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLButton;->setTextPosition(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_TEXT_STROKE_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v12, v1, v2}, Lcom/samsung/android/glview/GLButton;->setStroke(ZFI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_GAP:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v11

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_WIDTH:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float v9, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float v10, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v7, v9, v10}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_GAP:F

    add-float/2addr v0, v1

    div-float/2addr v0, v11

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_WIDTH:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float v9, v0, v1

    iget v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float v10, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v13, v9, v10}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float v9, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_GAP:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v11

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_WIDTH:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float v10, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v12, v9, v10}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float v9, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_GAP:F

    add-float/2addr v0, v1

    div-float/2addr v0, v11

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_WIDTH:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float v10, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v9, v10}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_GAP:F

    add-float/2addr v0, v1

    div-float/2addr v0, v11

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float v9, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float v10, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v7, v9, v10}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_GAP:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v11

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float v9, v0, v1

    iget v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float v10, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v13, v9, v10}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float v9, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_GAP:F

    add-float/2addr v0, v1

    div-float/2addr v0, v11

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float v10, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v12, v9, v10}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float v9, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_GAP:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v11

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float v10, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v9, v10}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    goto/16 :goto_0
.end method

.method private addShareButton()V
    .locals 14

    const/4 v13, 0x2

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    const-string v0, "Review"

    const-string v1, "addShareButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/Review;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    const v6, 0x7f0201db

    move v3, v2

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_WIDTH:F

    iget v3, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_BUTTON_SIZE:F

    sub-float/2addr v1, v3

    div-float/2addr v1, v11

    iget v3, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    div-float/2addr v3, v11

    iget v4, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_BUTTON_SIZE:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f090228

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_TEXT_FONT_SIZE:F

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v4

    mul-float/2addr v3, v4

    const v4, 0x7f0d0047

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v1, v3, v4, v7}, Lcom/samsung/android/glview/GLButton;->setText(Ljava/lang/String;FIZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v13, v12}, Lcom/samsung/android/glview/GLButton;->setTextAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    div-float/2addr v1, v11

    iget v3, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_TEXT_FONT_SIZE:F

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v11

    add-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLButton;->setTextPosition(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_TEXT_STROKE_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v12, v1, v2}, Lcom/samsung/android/glview/GLButton;->setStroke(ZFI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_GAP:F

    add-float/2addr v0, v1

    div-float/2addr v0, v11

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float v9, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float v10, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v7, v9, v10}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_GAP:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v11

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float v9, v0, v1

    iget v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float v10, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v13, v9, v10}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float v9, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_GAP:F

    add-float/2addr v0, v1

    div-float/2addr v0, v11

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float v10, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v12, v9, v10}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float v9, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_GAP:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v11

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float v10, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v9, v10}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_GAP:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v11

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_WIDTH:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float v9, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float v10, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v7, v9, v10}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_GAP:F

    add-float/2addr v0, v1

    div-float/2addr v0, v11

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_WIDTH:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float v9, v0, v1

    iget v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float v10, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v13, v9, v10}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float v9, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_GAP:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v11

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_WIDTH:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float v10, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v12, v9, v10}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float v9, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_GAP:F

    add-float/2addr v0, v1

    div-float/2addr v0, v11

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_WIDTH:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float v10, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v9, v10}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    goto/16 :goto_0
.end method

.method private resizeReviewWithAnimation()V
    .locals 14

    const/high16 v13, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "Review"

    const-string v2, "resizeReviewWithAnimation : did not updated review image"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/Review;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/app/camera/menu/Review;->SCREEN_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/menu/Review;->SCREEN_HEIGHT:F

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/Review;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    iget v2, p0, Lcom/sec/android/app/camera/menu/Review;->mShareViaImageWidth:F

    iget v3, p0, Lcom/sec/android/app/camera/menu/Review;->mShareViaImageHeight:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    iget v2, p0, Lcom/sec/android/app/camera/menu/Review;->SCREEN_WIDTH:F

    iget v3, p0, Lcom/sec/android/app/camera/menu/Review;->mShareViaImageWidth:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v13

    iget v3, p0, Lcom/sec/android/app/camera/menu/Review;->SCREEN_HEIGHT:F

    iget v4, p0, Lcom/sec/android/app/camera/menu/Review;->mShareViaImageHeight:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v13

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    iput-boolean v6, p0, Lcom/sec/android/app/camera/menu/Review;->mShareViaWorking:Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v1, :cond_2

    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3ee66666    # 0.45f

    invoke-direct {v8, v1, v12}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v8, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_ANIMATION_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v8, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1, v8}, Lcom/samsung/android/glview/GLRectangle;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLRectangle;->startAnimation()V

    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewWidth:F

    iget v2, p0, Lcom/sec/android/app/camera/menu/Review;->SCREEN_WIDTH:F

    div-float v11, v1, v2

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewHeight:F

    iget v2, p0, Lcom/sec/android/app/camera/menu/Review;->SCREEN_HEIGHT:F

    div-float v10, v1, v2

    cmpl-float v1, v11, v10

    if-lez v1, :cond_3

    move v0, v11

    :goto_1
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v9, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    new-instance v5, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v5}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    iget v6, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_ANIMATION_DURATION:I

    move v1, v12

    move v2, v0

    move v3, v12

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v9}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v7, v7}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    goto/16 :goto_0

    :cond_3
    move v0, v10

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Review"

    const-string v1, "clear"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewTimeOutCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mLaunchChooserRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mLaunchGalleryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/Review;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->clear()V

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    :cond_1
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    return-void
.end method

.method public getCaptureFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mCaptureFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/Review;->mCurrentType:I

    return v0
.end method

.method public hideReview()V
    .locals 3

    const/4 v2, 0x4

    const-string v0, "Review"

    const-string v1, "hideReview"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareViaWorking:Z

    return-void
.end method

.method protected isReviewUpdating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewUpdating:Z

    return v0
.end method

.method protected isShareViaWorking()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareViaWorking:Z

    return v0
.end method

.method protected launchGallery()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mLaunchGalleryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mLaunchGalleryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1053"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewButtonListener:Lcom/sec/android/app/camera/menu/Review$ReviewButtonListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewButtonListener:Lcom/sec/android/app/camera/menu/Review$ReviewButtonListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/menu/Review$ReviewButtonListener;->onDeleteClicked()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1052"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewButtonListener:Lcom/sec/android/app/camera/menu/Review$ReviewButtonListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewButtonListener:Lcom/sec/android/app/camera/menu/Review$ReviewButtonListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/menu/Review$ReviewButtonListener;->onShareClicked()V

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 3

    const-string v0, "Review"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/camera/menu/Review;->mScreenOrientation:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/sec/android/app/camera/menu/Review;->mScreenOrientation:I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mPopupLayoutController:Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->hideReview(Z)V

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->onOrientationChanged(I)V

    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->isAnimationFinished()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/Review;->isShareViaWorking()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Review"

    const-string v1, "return because ShareVia is working"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "1054"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mPopupLayoutController:Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->hideReview(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1051"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    const-string v0, "reviewon"

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mLaunchGalleryType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/Review;->hideReview()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/Review;->launchGallery()V

    goto :goto_0
.end method

.method public removeReviewTimeOutCallback()V
    .locals 2

    const-string v0, "Review"

    const-string v1, "removeReviewTimeOutCallback"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewTimeOutCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setReviewButtonListener(Lcom/sec/android/app/camera/menu/Review$ReviewButtonListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewButtonListener:Lcom/sec/android/app/camera/menu/Review$ReviewButtonListener;

    return-void
.end method

.method public startShareViaAnimation()V
    .locals 4

    const-string v0, "Review"

    const-string v1, "startShareViaAnimation"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/Review;->resizeReviewWithAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mLaunchChooserRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mLaunchChooserRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_ANIMATION_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startShowReviewAnimation()V
    .locals 10

    const/4 v4, 0x1

    const v0, 0x3fb33333    # 1.4f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const-string v2, "Review"

    const-string v3, "startShowReviewAnimation"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v2, :cond_0

    const-string v0, "Review"

    const-string v1, "startShowReviewAnimation : did not updated ReviewGroup"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v2, :cond_1

    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const v3, 0x3ee66666    # 0.45f

    invoke-direct {v8, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v8, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget v2, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_ANIMATION_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v8, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v2, v8}, Lcom/samsung/android/glview/GLRectangle;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLRectangle;->startAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v2, v7, v7}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(IZ)V

    :cond_1
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v9, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    new-instance v5, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v5}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    sget v6, Lcom/sec/android/app/camera/util/AnimationUtil;->DURATION_NORMAL:I

    move v2, v0

    move v3, v1

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_ANIMATION_DURATION:I

    invoke-static {v0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lcom/sec/android/app/camera/menu/Review$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/Review$4;-><init>(Lcom/sec/android/app/camera/menu/Review;)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v7, v7}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/menu/Review;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateReview(Landroid/graphics/Bitmap;ILjava/lang/String;Landroid/net/Uri;)V
    .locals 18

    const-string v2, "AXLOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateReview**StartU["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]**"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    if-nez p1, :cond_0

    const-string v2, "Review"

    const-string v3, "bitmap is null!"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewUpdating:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->clear()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->mScreenOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/16 v2, 0x5a

    move/from16 v0, p2

    if-eq v0, v2, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->mScreenOrientation:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    const/16 v2, 0x10e

    move/from16 v0, p2

    if-ne v0, v2, :cond_4

    :cond_3
    const-string v2, "Review"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateReview : this review should be rotated. mScreenOrientation ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/Review;->mScreenOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", orientation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    :cond_4
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/Review;->mCaptureFileName:Ljava/lang/String;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/Review;->mContentUri:Landroid/net/Uri;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/Util;->getAspectRatio(II)D

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/sec/android/app/camera/util/Util;->getAspectRatioType(D)I

    move-result v11

    packed-switch v11, :pswitch_data_0

    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_NORMAL_WIDTH:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewWidth:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_NORMAL_WIDTH:F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewHeight:F

    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewWidth:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/Review;->SCREEN_HEIGHT:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewHeight:F

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mShareViaImageWidth:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mShareViaImageHeight:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    if-nez v2, :cond_5

    new-instance v2, Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/Review;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/Review;->SCREEN_HEIGHT:F

    const v8, 0x7f0d000c

    invoke-static {v8}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLRectangle;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(IZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/Review;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/Review;->removeView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    :cond_6
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/Review;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/Review;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/Review;->SCREEN_HEIGHT:F

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const v3, 0x7f0201df

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setNinePatchBackground(I)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/Review;->addView(Lcom/samsung/android/glview/GLView;)V

    if-eqz v14, :cond_7

    const/16 v2, 0xb4

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/ImageUtils;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_7
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/Review;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/Review;->mShareViaImageWidth:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/Review;->mShareViaImageHeight:F

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLImage;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0900ea

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_WIDE_POS_Y:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_WIDE_HEIGHT:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewHeight:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewPosY:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewWidth:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewPosX:F

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewWidth:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewHeight:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewWidth:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewHeight:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewPosX:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewPosY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->clear()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/Review;->addShareButton()V

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->clear()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/Review;->addDeleteButton()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewUpdating:Z

    const-string v2, "AXLOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateReview**EndU["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]** "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v16

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_SUPER_WIDE_WIDTH:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewWidth:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_SUPER_WIDE_WIDTH:F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewHeight:F

    goto/16 :goto_1

    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_SUPER_WIDE_HEIGHT:F

    mul-float/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewWidth:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_SUPER_WIDE_HEIGHT:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewHeight:F

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->mCurrentType:I

    if-nez v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_WIDE_WIDTH:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewWidth:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_WIDE_WIDTH:F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewHeight:F

    goto/16 :goto_1

    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_WIDE_HEIGHT:F

    mul-float/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewWidth:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_WIDE_HEIGHT:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewHeight:F

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_WIDE_WIDTH:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewWidth:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_WIDE_HEIGHT:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewHeight:F

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_SQUARE_WIDTH:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewWidth:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_SQUARE_WIDTH:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewHeight:F

    goto/16 :goto_1

    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_NORMAL_HEIGHT:F

    mul-float/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewWidth:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_NORMAL_HEIGHT:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewHeight:F

    goto/16 :goto_1

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_WIDE_POS_X:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_WIDE_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewWidth:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewPosX:F

    goto/16 :goto_2

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSquareResolution(I)Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_SQUARE_POS_X:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_SQUARE_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewWidth:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewPosX:F

    goto/16 :goto_2

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSuperWideResolution(I)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->SIDE_QUICK_SETTING_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/Review;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/Review;->SIDE_QUICK_SETTING_WIDTH:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/Review;->BASEMENU_GROUP_WIDTH:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewWidth:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewPosX:F

    goto/16 :goto_2

    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_NORMAL_POS_X:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_NORMAL_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewWidth:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewPosX:F

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
