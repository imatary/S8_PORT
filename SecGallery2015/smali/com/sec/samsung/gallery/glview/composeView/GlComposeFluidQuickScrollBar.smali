.class public Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;
.source "GlComposeFluidQuickScrollBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidTouchAnimation;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidComeBackAnimation;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidMoveAnimation;
    }
.end annotation


# static fields
.field private static final CANVAS_CENTER_POPUP:I = 0x2

.field private static final CANVAS_LOCATION_POPUP:I = 0x1

.field private static final CANVAS_NORMAL_POPUP:I = 0x0

.field private static final CANVAS_SIZE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "GlCompseFluidQckScrlBar"


# instance fields
.field private mCurrentGroupTitle:Ljava/lang/String;

.field private mFluidCenterPopupCanvasH:I

.field private mFluidCenterPopupCanvasW:I

.field private mFluidCenterPopupRadius:I

.field private mFluidComeBackAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidComeBackAnimation;

.field private mFluidFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

.field private mFluidLocationCenterPopupCanvasH:I

.field private mFluidLocationPopupCanvasH:I

.field private mFluidMoveAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidMoveAnimation;

.field private mFluidPopupCanvasH:I

.field private mFluidPopupCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

.field private mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

.field private mFluidPopupRadius:I

.field private final mFluidPopupView:Lcom/sec/android/gallery3d/glcore/GlView;

.field private mFluidTouchAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidTouchAnimation;

.field private mFluidTouchCanvasH:I

.field private mFluidTouchCanvasW:I

.field private mFluidTouchObj:Lcom/sec/android/gallery3d/glcore/GlObject;

.field private mFluidTouchViewList:[Lcom/sec/android/gallery3d/glcore/GlImageView;

.field private mHasLocation:Z

.field private final mIsHighContrastMode:Z

.field private mLastFontSize:F

.field private mLastPopupHeight:I

.field private mLastPopupRadius:I

.field private mLastPopupRightMargin:I

.field private mLastPopupWidth:I

.field private final mRemoveShadow:Z

.field private mShadowCanvasH:I

.field private mShadowObj:Lcom/sec/android/gallery3d/glcore/GlObject;

.field private mShadowObjH:F

.field private mStartPopupWidth:I


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;)V

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupView:Lcom/sec/android/gallery3d/glcore/GlView;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mCurrentGroupTitle:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->setSupportRtl(Z)V

    iget-boolean v0, p3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mRemoveFastScrollShadow:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mRemoveShadow:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->isHighContrastFontMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mIsHighContrastMode:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;FZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->updateFluidPopupView(FZZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupView:Lcom/sec/android/gallery3d/glcore/GlView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;)Lcom/sec/android/gallery3d/glcore/GlObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;FZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->updateFluidPopupView(FZZZ)V

    return-void
.end method

.method private calcTargetWidth()V
    .locals 8

    const/4 v7, 0x2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mQuickScrollFontSize:F

    invoke-static {v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mCurrentGroupTitle:Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mScrollPopupCanvasW:I

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mQuickScrollPopupPadding:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v3, v4, v5, v0}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mQuickScrollFontSize:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mTextColor:I

    invoke-static {v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;

    move-result-object v1

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mQuickScrollFontSize:F

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->setTextSize(F)V

    invoke-virtual {v1, v7, v7}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->setAlign(II)V

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mQuickScrollPopupPadding:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mStartPopupWidth:I

    return-void
.end method

.method private hideAll()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setVisibility(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setVisibility(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setVisibility(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mShadowObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mShadowObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setVisibility(Z)V

    :cond_3
    return-void
.end method

.method private initFluidPopupObject()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;FF)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setSupportRtl(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setVisibility(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->moveToLast()V

    return-void
.end method

.method private initFluidTouchObject()V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchCanvasW:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mWidthViewRatio:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchCanvasH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mHeightViewRatio:F

    mul-float/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;FF)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setSupportRtl(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v3, v3, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchCanvasW:I

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchCanvasH:I

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mWidthSpace:F

    div-float/2addr v1, v6

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchCanvasW:I

    int-to-float v2, v2

    div-float/2addr v2, v6

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mWidthViewRatio:F

    mul-float/2addr v2, v3

    sub-float v0, v1, v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->getY()F

    move-result v2

    const/high16 v3, -0x3bb80000    # -800.0f

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->setPos(FFF)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setAlpha(F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->moveToLast()V

    return-void
.end method

.method private initFluidTouchViewList()V
    .locals 14

    const/16 v13, 0xa

    new-array v1, v13, [Lcom/sec/android/gallery3d/glcore/GlImageView;

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchViewList:[Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v9

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v13, :cond_1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v9, v11, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mContext:Landroid/content/Context;

    const v2, 0x7f100112

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v12, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-boolean v1, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v1, :cond_0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchViewList:[Lcom/sec/android/gallery3d/glcore/GlImageView;

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v11

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchViewList:[Lcom/sec/android/gallery3d/glcore/GlImageView;

    aget-object v1, v1, v11

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchViewList:[Lcom/sec/android/gallery3d/glcore/GlImageView;

    aget-object v1, v1, v11

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchViewList:[Lcom/sec/android/gallery3d/glcore/GlImageView;

    aget-object v1, v1, v11

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchCanvasW:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchCanvasH:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    :goto_1
    return-void

    :catch_0
    move-exception v10

    :try_start_1
    const-string/jumbo v1, "GlCompseFluidQckScrlBar"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private initShadowObject()V
    .locals 8

    const/4 v7, 0x2

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mRemoveShadow:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mWidthSpace:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mShadowObjH:F

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;FF)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mShadowObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mShadowObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mHeightSpace:F

    div-float v3, v1, v5

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getMarginTop()F

    move-result v1

    sub-float v1, v3, v1

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mShadowObjH:F

    div-float/2addr v3, v5

    sub-float/2addr v1, v3

    const/high16 v3, -0x3bb80000    # -800.0f

    invoke-virtual {v2, v6, v1, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->setPos(FFF)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mShadowObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v3, v3, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v4, v4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mShadowCanvasH:I

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mShadowObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1, v6}, Lcom/sec/android/gallery3d/glcore/GlObject;->setAlpha(F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mShadowObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    const v2, 0x7f0200ff

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlLayer;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v7, v7}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mShadowCanvasH:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mShadowObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mShadowObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->moveToLast()V

    goto :goto_0
.end method

.method private isHighContrastFontMode(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "high_text_contrast_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private resetFluidPopupCanvasList()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->clean()V

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mScrollPopupCanvasW:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mScrollPopupRightMarginPixel:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupCanvasH:I

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    aput-object v1, v0, v6

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    aget-object v0, v0, v6

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->setManualRecycle(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mScrollPopupCanvasW:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mScrollPopupRightMarginPixel:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidLocationPopupCanvasH:I

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    aput-object v1, v0, v5

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    aget-object v0, v0, v5

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->setManualRecycle(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v3, v3, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidLocationCenterPopupCanvasH:I

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    aput-object v1, v0, v7

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    aget-object v0, v0, v7

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->setManualRecycle(Z)V

    return-void
.end method

.method private resetFluidPopupObject()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->initFluidPopupObject()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->resetFluidPopupCanvasList()V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->updateFluidPopupView(FZZZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    goto :goto_0
.end method

.method private resetFluidTouchObject()V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchCanvasW:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mWidthViewRatio:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchCanvasH:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mHeightViewRatio:F

    mul-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->setSize(FF)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v3, v3, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchCanvasW:I

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchCanvasH:I

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mWidthSpace:F

    div-float/2addr v1, v6

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchCanvasW:I

    int-to-float v2, v2

    div-float/2addr v2, v6

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mWidthViewRatio:F

    mul-float/2addr v2, v3

    sub-float v0, v1, v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->getY()F

    move-result v2

    const/high16 v3, -0x3bb80000    # -800.0f

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->setPos(FFF)V

    :cond_0
    return-void
.end method

.method private resetShadowObject()V
    .locals 7

    const/4 v6, 0x2

    const/high16 v5, 0x40000000    # 2.0f

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mShadowObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mShadowObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mWidthSpace:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mShadowObjH:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->setSize(FF)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mShadowObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    const/4 v3, 0x0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mHeightSpace:F

    div-float v4, v1, v5

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getMarginTop()F

    move-result v1

    sub-float v1, v4, v1

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mShadowObjH:F

    div-float/2addr v4, v5

    sub-float/2addr v1, v4

    const/high16 v4, -0x3bb80000    # -800.0f

    invoke-virtual {v2, v3, v1, v4}, Lcom/sec/android/gallery3d/glcore/GlObject;->setPos(FFF)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mShadowObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v3, v3, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v4, v4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mShadowCanvasH:I

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    const v2, 0x7f0200ff

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlLayer;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v6, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mShadowCanvasH:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mShadowObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mShadowObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->moveToLast()V

    :cond_0
    return-void
.end method

.method private selectPopupCanvas(I)V
    .locals 10

    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/high16 v5, -0x3bb80000    # -800.0f

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->resetFluidPopupCanvasList()V

    :cond_0
    if-nez p1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    aget-object v2, v2, v9

    if-ne v1, v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mScrollPopupObjW:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mScrollPopupRightMargin:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupCanvasH:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mHeightViewRatio:F

    mul-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->setSize(FF)V

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mWidthSpace:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mScrollPopupObjW:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mScrollPopupRightMargin:F

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float v0, v1, v8

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->getY()F

    move-result v2

    invoke-virtual {v1, v0, v2, v5}, Lcom/sec/android/gallery3d/glcore/GlObject;->setPos(FFF)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    aget-object v2, v2, v9

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    goto :goto_0

    :cond_4
    if-ne p1, v6, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    aget-object v2, v2, v6

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mScrollPopupObjW:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mScrollPopupRightMargin:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidLocationPopupCanvasH:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mHeightViewRatio:F

    mul-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->setSize(FF)V

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mWidthSpace:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mScrollPopupObjW:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mScrollPopupRightMargin:F

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float v0, v1, v8

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->getY()F

    move-result v2

    invoke-virtual {v1, v0, v2, v5}, Lcom/sec/android/gallery3d/glcore/GlObject;->setPos(FFF)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    goto :goto_1

    :cond_5
    if-ne p1, v7, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    aget-object v2, v2, v7

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mWidthSpace:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidLocationCenterPopupCanvasH:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mHeightViewRatio:F

    mul-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->setSize(FF)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3, v5}, Lcom/sec/android/gallery3d/glcore/GlObject;->setPos(FFF)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    aget-object v2, v2, v7

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    goto :goto_1
.end method

.method private stopAllAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidTouchAnimation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidTouchAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidTouchAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidTouchAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidTouchAnimation;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidTouchAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidTouchAnimation;->stop()V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidMoveAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidMoveAnimation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidMoveAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidMoveAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidMoveAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidMoveAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidMoveAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidMoveAnimation;->isReady()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidMoveAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidMoveAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidMoveAnimation;->stop()V

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidComeBackAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidComeBackAnimation;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidComeBackAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidComeBackAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidComeBackAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidComeBackAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidComeBackAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidComeBackAnimation;->isReady()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidComeBackAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidComeBackAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidComeBackAnimation;->stop()V

    :cond_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->isReady()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->stop()V

    :cond_7
    return-void
.end method

.method private updateFluidPopupView(FZZ)V
    .locals 10

    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->selectPopupCanvas(I)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mQuickScrollFontSize:F

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mQuickCenterPopupFontSize:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mQuickScrollFontSize:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, p1

    add-float/2addr v6, v7

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLastFontSize:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLastFontSize:F

    invoke-static {v6}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v2

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mStartPopupWidth:I

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidCenterPopupCanvasW:I

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mStartPopupWidth:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, p1

    float-to-int v7, v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLastPopupWidth:I

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mHasLocation:Z

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidLocationPopupCanvasH:I

    :goto_0
    iget-boolean v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mHasLocation:Z

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidLocationCenterPopupCanvasH:I

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidLocationPopupCanvasH:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, p1

    float-to-int v7, v7

    :goto_1
    add-int/2addr v6, v7

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLastPopupHeight:I

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupRadius:I

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidCenterPopupRadius:I

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupRadius:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, p1

    float-to-int v7, v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLastPopupRadius:I

    if-eqz p2, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mGroupTitle:Ljava/lang/String;

    :goto_2
    const/4 v7, 0x0

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLastPopupWidth:I

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mQuickScrollPopupPadding:I

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-static {v6, v7, v8, v2}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b03a1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-nez v3, :cond_4

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02028a

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/graphics/drawable/GradientDrawable;

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLastPopupRadius:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/16 v6, 0xcb

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLastFontSize:F

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mTextColor:I

    invoke-static {v5, v6, v7}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;

    move-result-object v4

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLastFontSize:F

    invoke-virtual {v4, v6}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->setTextSize(F)V

    const/4 v6, 0x2

    const/4 v7, 0x2

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->setAlign(II)V

    const/4 v6, 0x0

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/TextPaint;->descent()F

    move-result v7

    float-to-int v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->setMargin(IIII)V

    new-instance v3, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_3
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mIsHighContrastMode:Z

    if-eqz v6, :cond_6

    invoke-virtual {v4, v1}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->setExtraWidthInHighContrastFont(I)V

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->getWidth()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->getHeight()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->setSize(II)V

    :goto_4
    if-eqz p2, :cond_7

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mGroupTitle:Ljava/lang/String;

    iput-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mCurrentGroupTitle:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v6, v6, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidCenterPopupCanvasW:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    mul-float/2addr v6, p1

    float-to-int v6, v6

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLastPopupRightMargin:I

    :goto_5
    const/4 v6, 0x3

    const/4 v7, 0x2

    invoke-virtual {v3, v6, v7}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLastPopupRightMargin:I

    const/4 v9, 0x0

    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLastPopupWidth:I

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLastPopupHeight:I

    invoke-virtual {v3, v6, v7}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    :cond_0
    return-void

    :cond_1
    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupCanvasH:I

    goto/16 :goto_0

    :cond_2
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidCenterPopupCanvasH:I

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupCanvasH:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, p1

    float-to-int v7, v7

    goto/16 :goto_1

    :cond_3
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mCurrentGroupTitle:Ljava/lang/String;

    goto/16 :goto_2

    :cond_4
    if-eqz p3, :cond_5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02028a

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/graphics/drawable/GradientDrawable;

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLastPopupRadius:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/16 v6, 0xcb

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v3, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;

    if-eqz v4, :cond_0

    const/4 v6, 0x2

    const/4 v7, 0x2

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->setAlign(II)V

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLastFontSize:F

    invoke-virtual {v4, v6}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->setTextSize(F)V

    const/4 v6, 0x0

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/TextPaint;->descent()F

    move-result v7

    float-to-int v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->setMargin(IIII)V

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->setText(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_6
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->setExtraWidthInHighContrastFont(I)V

    goto/16 :goto_4

    :cond_7
    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mScrollPopupRightMarginPixel:I

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v7, v7, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidCenterPopupCanvasW:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mScrollPopupRightMarginPixel:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, p1

    float-to-int v7, v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLastPopupRightMargin:I

    goto/16 :goto_5
.end method

.method private updateFluidPopupView(FZZZ)V
    .locals 15

    if-eqz p4, :cond_1

    const/4 v11, 0x2

    invoke-direct {p0, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->selectPopupCanvas(I)V

    :goto_0
    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLastFontSize:F

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mQuickScrollFontSize:F

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLastFontSize:F

    sub-float/2addr v12, v13

    mul-float v12, v12, p1

    add-float v3, v11, v12

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLastPopupWidth:I

    int-to-float v11, v11

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mStartPopupWidth:I

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLastPopupWidth:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    mul-float v12, v12, p1

    add-float/2addr v11, v12

    float-to-int v10, v11

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLastPopupHeight:I

    iget-boolean v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mHasLocation:Z

    if-eqz v11, :cond_3

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidLocationPopupCanvasH:I

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLastPopupHeight:I

    sub-int/2addr v11, v13

    int-to-float v11, v11

    mul-float v11, v11, p1

    float-to-int v11, v11

    :goto_1
    add-int v4, v12, v11

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLastPopupRadius:I

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupRadius:I

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLastPopupRadius:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    mul-float v12, v12, p1

    float-to-int v12, v12

    add-int v7, v11, v12

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mCurrentGroupTitle:Ljava/lang/String;

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mGroupTitle:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    if-nez p4, :cond_4

    :cond_0
    :goto_2
    return-void

    :cond_1
    iget-boolean v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mHasLocation:Z

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    :goto_3
    invoke-direct {p0, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->selectPopupCanvas(I)V

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    goto :goto_3

    :cond_3
    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupCanvasH:I

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLastPopupHeight:I

    sub-int/2addr v11, v13

    int-to-float v11, v11

    mul-float v11, v11, p1

    float-to-int v11, v11

    goto :goto_1

    :cond_4
    invoke-static {v3}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v5

    if-eqz p3, :cond_6

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mGroupTitle:Ljava/lang/String;

    :goto_4
    const/4 v12, 0x0

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mScrollPopupCanvasW:I

    iget v14, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mQuickScrollPopupPadding:I

    mul-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    int-to-float v13, v13

    invoke-static {v11, v12, v13, v5}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v9

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b03a1

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-nez v6, :cond_7

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f02028a

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/graphics/drawable/GradientDrawable;

    int-to-float v12, v7

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/16 v11, 0xcb

    invoke-virtual {v1, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mTextColor:I

    invoke-static {v9, v3, v11}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->setTextSize(F)V

    const/4 v11, 0x2

    const/4 v12, 0x2

    invoke-virtual {v8, v11, v12}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->setAlign(II)V

    const/4 v11, 0x0

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v12

    invoke-virtual {v12}, Landroid/text/TextPaint;->descent()F

    move-result v12

    float-to-int v12, v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v8, v11, v12, v13, v14}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->setMargin(IIII)V

    new-instance v6, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-direct {v6, v11}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v12, 0x0

    invoke-virtual {v11, v6, v12}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    const/4 v11, 0x2

    invoke-virtual {v6, v8, v11}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_5
    iget-boolean v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mIsHighContrastMode:Z

    if-eqz v11, :cond_9

    invoke-virtual {v8, v2}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->setExtraWidthInHighContrastFont(I)V

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->getWidth()I

    move-result v11

    add-int/2addr v11, v2

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->getHeight()I

    move-result v12

    invoke-virtual {v8, v11, v12}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->setSize(II)V

    :goto_6
    if-eqz p3, :cond_5

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mGroupTitle:Ljava/lang/String;

    iput-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mCurrentGroupTitle:Ljava/lang/String;

    :cond_5
    const/4 v11, 0x3

    const/4 v12, 0x2

    invoke-virtual {v6, v11, v12}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLastPopupRightMargin:I

    iget v14, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mScrollPopupRightMarginPixel:I

    int-to-float v14, v14

    mul-float v14, v14, p1

    float-to-int v14, v14

    add-int/2addr v13, v14

    iget v14, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLastPopupRightMargin:I

    int-to-float v14, v14

    mul-float v14, v14, p1

    float-to-int v14, v14

    sub-int/2addr v13, v14

    const/4 v14, 0x0

    invoke-virtual {v6, v11, v12, v13, v14}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    if-eqz p3, :cond_a

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->getWidth()I

    move-result v11

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mQuickScrollPopupPadding:I

    mul-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mStartPopupWidth:I

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mStartPopupWidth:I

    invoke-virtual {v6, v11, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    :goto_7
    move/from16 v0, p2

    invoke-virtual {p0, v6, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->drawBorder(Lcom/sec/android/gallery3d/glcore/GlView;Z)V

    goto/16 :goto_2

    :cond_6
    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mCurrentGroupTitle:Ljava/lang/String;

    goto/16 :goto_4

    :cond_7
    if-eqz p4, :cond_8

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f02028a

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/graphics/drawable/GradientDrawable;

    int-to-float v12, v7

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/16 v11, 0xcb

    invoke-virtual {v1, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v6, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    const/4 v11, 0x2

    invoke-virtual {v6, v11}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v8

    check-cast v8, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;

    if-eqz v8, :cond_0

    const/4 v11, 0x2

    const/4 v12, 0x2

    invoke-virtual {v8, v11, v12}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->setAlign(II)V

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->setText(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->setTextSize(F)V

    const/4 v11, 0x0

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v12

    invoke-virtual {v12}, Landroid/text/TextPaint;->descent()F

    move-result v12

    float-to-int v12, v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v8, v11, v12, v13, v14}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->setMargin(IIII)V

    goto/16 :goto_5

    :cond_9
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->setExtraWidthInHighContrastFont(I)V

    goto/16 :goto_6

    :cond_a
    invoke-virtual {v6, v10, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    goto :goto_7
.end method


# virtual methods
.method public clean()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->recycle()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected drawScrollPopup(Lcom/sec/android/gallery3d/glcore/GlView;Z)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->updateFluidPopupView(FZZZ)V

    return-void
.end method

.method public enableQuickScroll()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->stop()V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->setQuickScrollEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->setAlpha(F)V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->stop()V

    :cond_3
    return-void
.end method

.method public fadeOut(JJ)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->isQuickScrollEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->disableQuickScroll()V

    :cond_0
    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->setQuickScrollEnabled(Z)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->getAlpha()F

    move-result v1

    invoke-direct {v0, p0, v1, v3}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;-><init>(Lcom/sec/android/gallery3d/glcore/GlObject;FF)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    if-nez v0, :cond_2

    new-instance v0, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->getAlpha()F

    move-result v2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;-><init>(Lcom/sec/android/gallery3d/glcore/GlObject;FF)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->setParam(FF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0, p3, p4}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->startAfter(J)V

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->setParam(FF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0, p3, p4}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->startAfter(J)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFadeOutDelay:I

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected forceUpdateScrollTitle(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mGroupTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mGroupTitle:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mGroupLocation:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p2, :cond_4

    const-string/jumbo v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mGroupLocation:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mHasLocation:Z

    const-string/jumbo v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-le v1, v4, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mGroupTitle:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->isQuickScrollEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, v5, v4, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->updateFluidPopupView(FZZ)V

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mGroupTitle:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mGroupLocation:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mHasLocation:Z

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mGroupTitle:Ljava/lang/String;

    goto :goto_1

    :cond_5
    invoke-direct {p0, v5, v3, v4, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->updateFluidPopupView(FZZZ)V

    goto :goto_0
.end method

.method getScrollBarDrawable(Z)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mContext:Landroid/content/Context;

    const v1, 0x7f020286

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public hideNow()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->hideAll()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->stopAllAnimation()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->stop()V

    :cond_1
    return-void
.end method

.method public moveToLast()V
    .locals 1

    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->moveToLast()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->moveToLast()V

    :cond_0
    return-void
.end method

.method protected resetQuickScroll(FFFF)V
    .locals 9

    const v8, 0x7f0b033f

    const/high16 v5, 0x40000000    # 2.0f

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v4, v4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0b0351

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getQuickScrollBarWidth()I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->getScrollBarDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    mul-int/lit8 v6, v3, 0x2

    add-int v0, v4, v6

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-boolean v4, v4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWideMode:Z

    if-eqz v4, :cond_1

    mul-float v4, v5, p3

    div-float/2addr v4, p4

    :goto_1
    div-float v4, p3, v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mObjW:F

    int-to-float v4, v0

    mul-float/2addr v4, p2

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mObjH:F

    int-to-float v4, v0

    mul-float/2addr v4, p2

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mScrollBarObjH:F

    int-to-float v4, v1

    mul-float/2addr v4, p1

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mScrollBarObjW:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mObjW:F

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mScrollPopupObjW:F

    int-to-float v4, v2

    mul-float/2addr v4, p2

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mScrollPopupObjH:F

    sget v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->CENTER_POPUP_LIMITED_RATIO:F

    mul-float/2addr v4, p3

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mCenterPopupObjW:F

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getQuickScrollCenterPopupHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mCenterPopupObjH:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mObjW:F

    div-float/2addr v4, p1

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mCanvasW:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mObjH:F

    div-float/2addr v4, p2

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mCanvasH:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mScrollBarObjH:F

    div-float/2addr v4, p2

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mScrollBarCanvasH:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mScrollBarObjW:F

    div-float/2addr v4, p1

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mScrollBarCanvasW:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mScrollPopupObjW:F

    div-float/2addr v4, p1

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mScrollPopupCanvasW:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mScrollPopupObjH:F

    div-float/2addr v4, p2

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mScrollPopupCanvasH:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mCenterPopupObjW:F

    div-float/2addr v4, p1

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mCenterPopupCanvasW:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mCenterPopupObjH:F

    div-float/2addr v4, p2

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mCenterPopupCanvasH:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0b0348

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mScrollEndMargin:F

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0b034e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mScrollPopupRightMarginPixel:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mScrollPopupRightMarginPixel:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mScrollPopupRightMargin:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mHeightSpace:F

    div-float/2addr v4, v5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mTop:F

    sub-float/2addr v4, v5

    int-to-float v5, v3

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mHeightViewRatio:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mUpperLimit:F

    new-instance v4, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v5, v5, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mCanvasW:I

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mCanvasH:I

    invoke-direct {v4, v5, v6, v7}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mContext:Landroid/content/Context;

    const v5, 0x7f1001b9

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mTextColor:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0349

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mQuickScrollFontSize:F

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0341

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mQuickCenterPopupFontSize:F

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getQuickScrollPopupPadding()I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mQuickScrollPopupPadding:I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->resetScrollBar()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0344

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidCenterPopupCanvasW:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0343

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidCenterPopupCanvasH:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0340

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidLocationCenterPopupCanvasH:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupCanvasH:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b034b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidLocationPopupCanvasH:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b034d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupRadius:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0342

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidCenterPopupRadius:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0301

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mShadowCanvasH:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mShadowCanvasH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mHeightViewRatio:F

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mShadowObjH:F

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0303

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchCanvasW:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0302

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchCanvasH:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->resetFluidPopupObject()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->resetFluidTouchObject()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->resetShadowObject()V

    goto/16 :goto_0

    :cond_1
    move v4, v5

    goto/16 :goto_1
.end method

.method resetScrollBar()V
    .locals 2

    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->resetScrollBar()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setAlpha(F)V

    return-void
.end method

.method public show()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->show()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->initFluidPopupObject()V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setVisibility(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setVisibility(Z)V

    goto :goto_0
.end method

.method public startTouchAnimation(Z)V
    .locals 6

    const/16 v5, 0x66

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mShadowObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->initShadowObject()V

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchViewList:[Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->initFluidTouchViewList()V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-nez v1, :cond_6

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->initFluidTouchObject()V

    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidTouchAnimation;

    if-nez v1, :cond_1

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidTouchAnimation;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchViewList:[Lcom/sec/android/gallery3d/glcore/GlImageView;

    invoke-direct {v1, p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidTouchAnimation;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;[Lcom/sec/android/gallery3d/glcore/GlImageView;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidTouchAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidTouchAnimation;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidMoveAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidMoveAnimation;

    if-nez v1, :cond_2

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidMoveAnimation;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidMoveAnimation;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidMoveAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidMoveAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidMoveAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidMoveAnimation;

    new-instance v2, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;-><init>(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidMoveAnimation;->setInterpolator(Lcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    :cond_2
    if-nez p1, :cond_7

    new-instance v0, Lcom/sec/android/gallery3d/glcore/glparts/GlFadeAnimation;

    invoke-direct {v0, v4}, Lcom/sec/android/gallery3d/glcore/glparts/GlFadeAnimation;-><init>(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mShadowObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mShadowObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidComeBackAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidComeBackAnimation;

    if-nez v1, :cond_4

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidComeBackAnimation;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidComeBackAnimation;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidComeBackAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidComeBackAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidComeBackAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidComeBackAnimation;

    new-instance v2, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;-><init>(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidComeBackAnimation;->setInterpolator(Lcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    :cond_4
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->calcTargetWidth()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidComeBackAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidComeBackAnimation;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidComeBackAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidComeBackAnimation;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidComeBackAnimation;->start()V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlFadeAnimation;->start()V

    :goto_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidTouchAnimation;

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidTouchAnimation;->startTouchFluidAnimation(Z)V

    return-void

    :cond_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mShadowObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/glcore/GlObject;->setVisibility(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mShadowObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->moveToLast()V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/glcore/GlObject;->setVisibility(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->moveToLast()V

    goto/16 :goto_1

    :cond_7
    new-instance v0, Lcom/sec/android/gallery3d/glcore/glparts/GlFadeAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glcore/glparts/GlFadeAnimation;-><init>(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mShadowObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mShadowObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    :cond_8
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlFadeAnimation;->start()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidMoveAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidMoveAnimation;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidMoveAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidMoveAnimation;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar$GlFluidMoveAnimation;->start()V

    goto :goto_2
.end method

.method public update(FFF)V
    .locals 17

    sub-float v11, p3, p2

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->getHeight(FF)F

    move-result v6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mThickness:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->setSize(FF)V

    const/4 v14, 0x0

    cmpg-float v14, v11, v14

    if-gtz v14, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mHeightSpace:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mTop:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mBottom:F

    add-float/2addr v14, v15

    add-float/2addr v14, v6

    sub-float/2addr v14, v3

    div-float v4, v14, v11

    neg-float v14, v3

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    div-float v15, v6, v15

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mBottom:F

    add-float/2addr v14, v15

    mul-float v15, p3, v4

    sub-float v5, v14, v15

    mul-float v14, v4, p1

    add-float v13, v14, v5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mWidthSpace:F

    const/high16 v15, 0x3f800000    # 1.0f

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mWidthSpace:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mWidth:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mPaddingRight:F

    sub-float v12, v14, v15

    const/high16 v14, -0x3bb80000    # -800.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->setPos(FFF)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mHasLocation:Z

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidLocationCenterPopupCanvasH:I

    :goto_1
    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mHeightViewRatio:F

    mul-float v9, v14, v15

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mHeightSpace:F

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mTop:F

    sub-float/2addr v14, v15

    sub-float/2addr v14, v13

    sub-float v8, v14, v9

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mHeightSpace:F

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    add-float/2addr v14, v13

    sub-float v7, v14, v9

    const/4 v14, 0x0

    cmpl-float v14, v7, v14

    if-ltz v14, :cond_2

    const/4 v7, 0x0

    :cond_2
    const/4 v14, 0x0

    cmpl-float v14, v8, v14

    if-ltz v14, :cond_3

    const/4 v8, 0x0

    :cond_3
    add-float v14, v13, v8

    sub-float v10, v14, v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidTouchObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v15}, Lcom/sec/android/gallery3d/glcore/GlObject;->getX()F

    move-result v15

    const/high16 v16, -0x3bb80000    # -800.0f

    move/from16 v0, v16

    invoke-virtual {v14, v15, v10, v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->setPos(FFF)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v15}, Lcom/sec/android/gallery3d/glcore/GlObject;->getX()F

    move-result v15

    const/high16 v16, -0x3bb80000    # -800.0f

    move/from16 v0, v16

    invoke-virtual {v14, v15, v10, v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->setPos(FFF)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;->mFluidCenterPopupCanvasH:I

    goto :goto_1
.end method
