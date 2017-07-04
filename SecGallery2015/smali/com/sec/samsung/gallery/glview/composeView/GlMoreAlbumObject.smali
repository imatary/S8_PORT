.class public Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlMoreAlbumObject.java"


# static fields
.field private static final DURATION:I = 0x1f4

.field private static final FEATURE_IS_TABLET:Z

.field private static final RES_ID_BUTTON_CLOSE:I = 0x2

.field private static final RES_ID_BUTTON_OPEN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GlMoreAlbumObject"

.field public static final UPSIDE_ALBUM_DECREASED:I = 0x2

.field public static final UPSIDE_ALBUM_DEFAULT:I = 0x0

.field public static final UPSIDE_ALBUM_INCREASED:I = 0x1

.field public static final UPSIDE_ALBUM_INITIALIZED:I = 0x3


# instance fields
.field private mAlbumCount:I

.field public mAlbumDividerY:F

.field private final mAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

.field private mButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private mButtonSize:I

.field private final mButtonView:Lcom/sec/android/gallery3d/glcore/GlView;

.field private final mContext:Landroid/content/Context;

.field private mDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private mDividerSideMarg:I

.field private mHeightViewRatio:F

.field private final mInterpolator:Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr;

.field private final mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

.field public final mListAlbumDivider:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenerButtonClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field private mMoreAlbumStatus:I

.field public mMoreAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/glcore/GlObject;",
            ">;"
        }
    .end annotation
.end field

.field private mShowMoreAlbum:Z

.field private mTitleColor:I

.field private mTitleMarg:I

.field private mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private mTitleText:Ljava/lang/String;

.field private mTitleTextSize:I

.field private final mView:Lcom/sec/android/gallery3d/glcore/GlView;

.field private mViewHeight:I

.field private mWidthViewRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->FEATURE_IS_TABLET:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;I)V

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mView:Lcom/sec/android/gallery3d/glcore/GlView;

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mButtonView:Lcom/sec/android/gallery3d/glcore/GlView;

    new-instance v0, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mInterpolator:Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mMoreAlbums:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mListAlbumDivider:Ljava/util/ArrayList;

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mMoreAlbumStatus:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mAlbumDividerY:F

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mAlbumCount:I

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject$1;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mListenerButtonClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject$2;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mMoreAlbumStatus:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->initialize()V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setVisibility(Z)V

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setObjective(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->startRotateButtonAnim()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mShowMoreAlbum:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mShowMoreAlbum:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->updateView(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->updateButton(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;)Lcom/sec/android/gallery3d/glcore/GlLayer;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private calcDividerXPosition()F
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    sget-object v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->LEFT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mSoftKeyHeightPixel:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mWidthViewRatio:F

    mul-float/2addr v1, v2

    div-float v0, v1, v3

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    sget-object v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->RIGHT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mSoftKeyHeightPixel:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mWidthViewRatio:F

    mul-float/2addr v1, v2

    div-float v0, v1, v3

    goto :goto_0
.end method

.method private getButtonView(Z)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 8

    const/4 v7, 0x2

    if-eqz p1, :cond_1

    const/4 v4, 0x2

    const v0, 0x7f02031e

    :goto_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mButtonView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v5, v4}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v2, :cond_0

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mContext:Landroid/content/Context;

    const v6, 0x7f10025b

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v7, v7}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getButtonViewSize(Landroid/graphics/drawable/Drawable;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mButtonView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v5, v2, v4}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_0
    return-object v2

    :cond_1
    const/4 v4, 0x1

    const v0, 0x7f02031f

    goto :goto_0
.end method

.method private getButtonViewSize(Landroid/graphics/drawable/Drawable;)Landroid/util/Size;
    .locals 4

    const v3, 0x7f0b0322

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->FEATURE_IS_TABLET:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    goto :goto_0
.end method

.method private getMoreAlbumCount()I
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCount:I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mAlbumCount:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method private getMoreAlbumDescription()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mTitleText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getMoreAlbumCount()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mContext:Landroid/content/Context;

    const v3, 0x7f0a040a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0408

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getTitleTextSize()I
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0327

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0328

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0326

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method private initialize()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->resetAttributes()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0262

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mTitleText:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "show_more_albums"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mShowMoreAlbum:Z

    return-void
.end method

.method private resetAttributes()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0323

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mDividerSideMarg:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getTitleTextSize()I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mTitleTextSize:I

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mTitleTextSize:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b032b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0320

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mViewHeight:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mContext:Landroid/content/Context;

    const v1, 0x7f1001cf

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mTitleColor:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0329

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mTitleMarg:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0322

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mButtonSize:I

    return-void
.end method

.method private setVisibleRange()V
    .locals 7

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v3, v3, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v4, v4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mWidthViewRatio:F

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v3, v3, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v4, v4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mHeightViewRatio:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mDividerSideMarg:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mWidthViewRatio:F

    mul-float v0, v3, v4

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mViewHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mHeightViewRatio:F

    mul-float v1, v3, v4

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v3, v3, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v0

    sub-float v2, v3, v4

    new-instance v3, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v4, v4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v5, v5, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mDividerSideMarg:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mViewHeight:I

    invoke-direct {v3, v4, v5, v6}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    invoke-virtual {p0, v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setSize(FF)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->updateDivider()V

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mShowMoreAlbum:Z

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->updateView(Z)V

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mShowMoreAlbum:Z

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->updateButton(Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    return-void
.end method

.method private startRotateButtonAnim()V
    .locals 7

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mShowMoreAlbum:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iput v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcRoll:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/high16 v1, 0x43340000    # 180.0f

    iput v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtRoll:F

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mInterpolator:Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr;

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->startTransAnim(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;JJLcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iput v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcRoll:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/high16 v1, -0x3ccc0000    # -180.0f

    iput v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtRoll:F

    goto :goto_0
.end method

.method private updateButton(Z)V
    .locals 11

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getButtonView(Z)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v6

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v4, v9, v9, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchRippleEvent(ZFFZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move v2, v1

    move v3, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEnableAnim(ZZZZZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mListenerButtonClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mListenerButtonClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    invoke-virtual {p0, v4, v9, v9, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setUseTouchRippleEvent(ZFFZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mButtonSize:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mWidthViewRatio:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mButtonSize:I

    int-to-float v3, v3

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mHeightViewRatio:F

    mul-float/2addr v3, v5

    invoke-virtual {v0, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v3, v3, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mButtonSize:I

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mButtonSize:I

    invoke-direct {v2, v3, v5, v8}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mWidth:F

    div-float/2addr v2, v10

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mWidth:F

    div-float/2addr v2, v10

    add-float v7, v0, v2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v7, v9, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setRoll(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getMoreAlbumCount()I

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    return-void

    :cond_1
    move v4, v1

    goto :goto_0
.end method

.method private updateDivider()V
    .locals 8

    const/4 v7, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-nez v2, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020252

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mContext:Landroid/content/Context;

    const v3, 0x7f10013c

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v7}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    new-instance v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlLayer;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mDividerSideMarg:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v2, v3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    sget-object v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    sget-object v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->BOTTOM:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-eq v2, v4, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mSoftKeyHeightPixel:I

    neg-int v2, v2

    :goto_1
    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b030c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mWidthViewRatio:F

    mul-float/2addr v3, v4

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mHeightViewRatio:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    new-instance v3, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v4, v4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getHeight()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->calcDividerXPosition()F

    move-result v3

    invoke-virtual {p0, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getHeight(Z)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateView(Z)V
    .locals 8

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mTitleText:Ljava/lang/String;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mTitleTextSize:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mTitleColor:I

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedBoldFont()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FILandroid/graphics/Typeface;)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    new-instance v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    :goto_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchEvent(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mWidthViewRatio:F

    mul-float/2addr v3, v4

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mHeightViewRatio:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    new-instance v3, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v4, v4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getHeight()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    neg-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mTitleMarg:I

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mWidthViewRatio:F

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    sget-object v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    sget-object v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->LEFT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mSoftKeyHeightPixel:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mWidthViewRatio:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v1, v7, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setRoll(F)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-object v0, v2

    goto/16 :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mTitleText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mTitleText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getMoreAlbumCount()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public drawFocusBorder(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getFocusBorderVisible()Z

    move-result v0

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setFocusBorderVisible(Z)V

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setBorderVisible(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setBorderWidth(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/TTSUtil;->getAccessibilityCursorColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setBorderColor(I)V

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getMoreAlbumDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setBorderVisible(Z)V

    goto :goto_0
.end method

.method public getButtonObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mButtonObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    return-object v0
.end method

.method public getMoreAlbumLastStatus()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mMoreAlbumStatus:I

    return v0
.end method

.method public getUpSideAlbumCount()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mAlbumCount:I

    return v0
.end method

.method public isActiveForMoreAlbum()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mShowMoreAlbum:Z

    return v0
.end method

.method public isEmptyUpSideAlbum()Z
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mAlbumCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetLayout()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setVisibleRange()V

    return-void
.end method

.method public setMoreAlbumVisibility(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mShowMoreAlbum:Z

    if-eq v1, p1, :cond_3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->startRotateButtonAnim()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    const v1, 0x7f0a077e

    :goto_0
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_2

    const-string/jumbo v1, "AlbumUnfold"

    :goto_1
    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v2, v1, v3, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    const v1, 0x7f0a0780

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "AlbumFold"

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_4

    const v1, 0x7f0a077f

    :goto_3
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_5

    const-string/jumbo v1, "AlbumUnfold"

    :goto_4
    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v2, v1, v3, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_2

    :cond_4
    const v1, 0x7f0a0781

    goto :goto_3

    :cond_5
    const-string/jumbo v1, "AlbumFold"

    goto :goto_4
.end method

.method public setPos(FFF)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    return-void
.end method

.method public setUpsideAlbumCount(II)V
    .locals 3

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mMoreAlbumStatus:I

    const-string/jumbo v0, "GlMoreAlbumObject"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMoreAlbumCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iput p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mAlbumCount:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mAlbumCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mAlbumCount:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mAlbumCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mAlbumCount:I

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "GlMoreAlbumObject"

    const-string/jumbo v1, "setMoreAlbumCount: default"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
