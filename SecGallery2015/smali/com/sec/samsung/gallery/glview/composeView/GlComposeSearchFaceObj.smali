.class public Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlComposeSearchFaceObj.java"


# static fields
.field private static final EVENT_EDIT_NAME:I = 0x0

.field private static final RES_ID_BORDER:I = 0x4

.field private static final RES_ID_EDIT_ICON:I = 0x5

.field private static final RES_ID_FACE:I = 0x1

.field private static final RES_ID_FACE_BORDER:I = 0x2

.field private static final RES_ID_TITLE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "GlComposeSearchFaceObj"

.field private static final USE_NAVIGATION_BAR:Z


# instance fields
.field private final mBorderDrawable:Landroid/graphics/drawable/Drawable;

.field private final mBorderExtraMargin:I

.field private final mBorderHeight:I

.field private final mBorderMarginTop:I

.field private final mBorderStrokeWidth:I

.field private final mBorderWidth:I

.field private final mContext:Landroid/content/Context;

.field private final mDefaultNameColor:I

.field private final mDefaultNameSize:I

.field private final mEditIconDrawable:Landroid/graphics/drawable/Drawable;

.field private final mEditIconSize:I

.field private mEditIconWidth:I

.field private final mEmptyBorderDrawable:Landroid/graphics/drawable/Drawable;

.field private mFaceBitmap:Landroid/graphics/Bitmap;

.field private final mFaceBorderDrawable:Landroid/graphics/drawable/Drawable;

.field private mFaceItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private final mFaceMarginBottom:I

.field private final mFaceMarginTop:I

.field private final mFaceSize:I

.field private final mFaceView:Lcom/sec/android/gallery3d/glcore/GlView;

.field private mFuture:Lcom/sec/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mHeightViewRatio:F

.field private final mNameMarginBottom:I

.field private final mNameText:Ljava/lang/String;

.field private mNameTextWidth:I

.field private mScreenGLWidth:F

.field private mScreenPixelWidth:I

.field private mSoftKeyMarginGLEnd:F

.field private mSoftKeyMarginGLStart:F

.field private mTaggedName:Ljava/lang/String;

.field private final mTaggedNameColor:I

.field private final mTaggedNameSize:I

.field private final mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

.field private final mTotalHeight:I

.field private mWidthViewRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->USE_NAVIGATION_BAR:Z

    return-void
.end method

.method constructor <init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceView:Lcom/sec/android/gallery3d/glcore/GlView;

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mSoftKeyMarginGLStart:F

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mSoftKeyMarginGLEnd:F

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mTaggedName:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->setReuseObj(Z)V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->setUseTouchEvent(Z)V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->setVisibility(Z)V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->setFocusBorderVisible(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b07c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mBorderWidth:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b07c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mBorderHeight:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b07c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mBorderMarginTop:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b07c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mBorderExtraMargin:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02005f

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mBorderDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mBorderStrokeWidth:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mEmptyBorderDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b07ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceSize:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b07c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceMarginTop:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b07c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceMarginBottom:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020299

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceBorderDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    const v1, 0x7f0a04e6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mNameText:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    const v1, 0x7f100224

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mTaggedNameColor:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b07cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mTaggedNameSize:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    const v1, 0x7f100181

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mDefaultNameColor:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b07cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mDefaultNameSize:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b07cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mNameMarginBottom:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201d5

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mEditIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b07c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mEditIconSize:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b07ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mTotalHeight:I

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj$1;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;)V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceItem:Lcom/sec/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getCurrentYPosition()F
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    div-float v3, v2, v4

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargTop:F

    sub-float v2, v3, v2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->getSearchFaceObjHeight()F

    move-result v3

    div-float/2addr v3, v4

    add-float v0, v2, v3

    add-float v2, v0, v1

    return v2
.end method

.method private resetAttribute()V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v5, v5, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mScreenPixelWidth:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v5, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v5, v5, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mScreenGLWidth:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v0, v5, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mScreenGLWidth:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mScreenPixelWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mWidthViewRatio:F

    int-to-float v5, v1

    div-float v5, v0, v5

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mHeightViewRatio:F

    const/4 v4, 0x0

    const/4 v3, 0x0

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mSoftKeyMarginGLStart:F

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mSoftKeyMarginGLEnd:F

    sget-boolean v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->USE_NAVIGATION_BAR:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigationBarMargin(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)I

    move-result v2

    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getNavigationBarPosition()Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    move-result-object v5

    sget-object v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->LEFT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v5, v6, :cond_1

    move v4, v2

    int-to-float v5, v4

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mWidthViewRatio:F

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mSoftKeyMarginGLStart:F

    :cond_0
    :goto_0
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mScreenPixelWidth:I

    add-int v6, v4, v3

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mScreenPixelWidth:I

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mScreenGLWidth:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mSoftKeyMarginGLStart:F

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mSoftKeyMarginGLEnd:F

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mScreenGLWidth:F

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getNavigationBarPosition()Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    move-result-object v5

    sget-object v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->RIGHT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v5, v6, :cond_0

    move v3, v2

    int-to-float v5, v3

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mWidthViewRatio:F

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mSoftKeyMarginGLEnd:F

    goto :goto_0
.end method

.method private resetFaceTagView()V
    .locals 7

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mScreenGLWidth:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mTotalHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mHeightViewRatio:F

    mul-float/2addr v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->setSize(FF)V

    new-instance v3, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v4, v4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mScreenPixelWidth:I

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mTotalHeight:I

    invoke-direct {v3, v4, v5, v6}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->updateFaceTagView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mNameTextWidth:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mEditIconWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mScreenGLWidth:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mBorderExtraMargin:I

    add-int/2addr v4, v0

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mWidthViewRatio:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v2, v3, v4

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceMarginTop:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mBorderExtraMargin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mHeightViewRatio:F

    mul-float v1, v3, v4

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v1, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->setUseTouchRippleEvent(ZFFZ)V

    return-void
.end method

.method private updateFaceTagView()Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 12

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v3, :cond_0

    new-instance v3, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    invoke-direct {v3, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceBorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceSize:I

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceSize:I

    invoke-virtual {v3, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-virtual {v3, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    const/4 v8, 0x0

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceMarginTop:I

    const/4 v10, 0x0

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceMarginBottom:I

    invoke-virtual {v3, v8, v9, v10, v11}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v9, 0x1

    invoke-virtual {v8, v3, v9}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_0
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceBitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_2

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v8, v9, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v2, :cond_1

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceBorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceSize:I

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceSize:I

    invoke-virtual {v2, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    const/4 v8, 0x0

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceMarginTop:I

    const/4 v10, 0x0

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceMarginBottom:I

    invoke-virtual {v2, v8, v9, v10, v11}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v9, 0x2

    invoke-virtual {v8, v2, v9}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_1
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mTaggedName:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mTaggedName:Ljava/lang/String;

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mTaggedNameSize:I

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mTaggedNameColor:I

    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaint(FI)Landroid/text/TextPaint;

    move-result-object v5

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedBoldFont()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mTaggedNameSize:I

    :goto_1
    const/4 v8, 0x0

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mScreenPixelWidth:I

    int-to-float v9, v9

    invoke-static {v4, v8, v9, v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v1

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/glcore/GlTextView;

    if-nez v7, :cond_4

    invoke-static {v1, v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v7

    int-to-float v8, v6

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setTextSize(F)V

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mScreenPixelWidth:I

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mEditIconSize:I

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceMarginTop:I

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceSize:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceMarginBottom:I

    add-int/2addr v9, v10

    const/4 v10, 0x0

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mNameMarginBottom:I

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v9, 0x3

    invoke-virtual {v8, v7, v9}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextWidth()I

    move-result v8

    iput v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mNameTextWidth:I

    :goto_2
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v0, :cond_5

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mEditIconDrawable:Landroid/graphics/drawable/Drawable;

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mDefaultNameColor:I

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mEditIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mEditIconSize:I

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mEditIconSize:I

    invoke-virtual {v0, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mScreenPixelWidth:I

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mNameTextWidth:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mEditIconSize:I

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mBorderStrokeWidth:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceMarginTop:I

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceSize:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceMarginBottom:I

    add-int/2addr v9, v10

    const/4 v10, 0x0

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mNameMarginBottom:I

    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v9, 0x5

    invoke-virtual {v8, v0, v9}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getWidth()I

    move-result v8

    iput v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mEditIconWidth:I

    :goto_3
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceView:Lcom/sec/android/gallery3d/glcore/GlView;

    return-object v8

    :cond_2
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mEmptyBorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mNameText:Ljava/lang/String;

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mDefaultNameSize:I

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mDefaultNameColor:I

    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaint(FI)Landroid/text/TextPaint;

    move-result-object v5

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mDefaultNameSize:I

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v7, v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mScreenPixelWidth:I

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mEditIconSize:I

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceMarginTop:I

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceSize:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceMarginBottom:I

    add-int/2addr v9, v10

    const/4 v10, 0x0

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mNameMarginBottom:I

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextWidth()I

    move-result v8

    iput v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mNameTextWidth:I

    goto/16 :goto_2

    :cond_5
    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mScreenPixelWidth:I

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mNameTextWidth:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mEditIconSize:I

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mBorderStrokeWidth:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceMarginTop:I

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceSize:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceMarginBottom:I

    add-int/2addr v9, v10

    const/4 v10, 0x0

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mNameMarginBottom:I

    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getWidth()I

    move-result v8

    iput v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mEditIconWidth:I

    goto :goto_3
.end method


# virtual methods
.method clearFaceImage()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mTaggedName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->updateFaceTagView()Lcom/sec/android/gallery3d/glcore/GlView;

    return-void
.end method

.method drawFocusBorder(Z)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->getFocusBorderVisible()Z

    move-result v3

    if-ne v3, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->setFocusBorderVisible(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->resetFaceTagView()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v3, v7}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-eqz p1, :cond_5

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mBorderDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mBorderDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mBorderStrokeWidth:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/samsung/gallery/util/TTSUtil;->getAccessibilityCursorColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mBorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mBorderMarginTop:I

    invoke-virtual {v0, v6, v3, v6, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v3, v0, v7}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_3
    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mNameTextWidth:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mBorderExtraMargin:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mBorderWidth:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mBorderHeight:I

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mTaggedName:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mTaggedName:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v4

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4, v3, v1}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mNameText:Ljava/lang/String;

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v3, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto/16 :goto_0
.end method

.method public getFaceItem()Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceItem:Lcom/sec/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method getSearchFaceObjHeight()F
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mTotalHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mHeightViewRatio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method processClick()Z
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;)V

    sget-object v2, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_ENTERING_SEARCH_FACE_TAG:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->isRequiredPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    aput-object v3, v1, v4

    sget-object v3, Lcom/sec/samsung/gallery/controller/DialogVisibility;->SHOW:Lcom/sec/samsung/gallery/controller/DialogVisibility;

    aput-object v3, v1, v5

    aput-object v2, v1, v6

    const/16 v3, 0x75

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v7

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v3

    const-string/jumbo v4, "START_PERMISSION_REQUEST_ACTIVITY"

    invoke-virtual {v3, v4, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return v5

    :cond_0
    const-string/jumbo v0, ""

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mTaggedName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mTaggedName:Ljava/lang/String;

    :cond_1
    new-array v1, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    aput-object v3, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    aput-object v0, v1, v6

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceItem:Lcom/sec/android/gallery3d/data/MediaItem;

    aput-object v3, v1, v7

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v3

    const-string/jumbo v4, "START_VISUAL_SEARCH_FACE_TAG"

    invoke-virtual {v3, v4, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method resetLayout()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->moveToLast()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->resetAttribute()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->resetFaceTagView()V

    return-void
.end method

.method setFaceItem(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFuture:Lcom/sec/android/gallery3d/util/Future;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFuture:Lcom/sec/android/gallery3d/util/Future;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/util/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFuture:Lcom/sec/android/gallery3d/util/Future;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/util/Future;->cancel()V

    :cond_1
    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFaceItem:Lcom/sec/android/gallery3d/data/MediaItem;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj$2;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/sec/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/gallery3d/util/ThreadPool;->submitUrgent(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mFuture:Lcom/sec/android/gallery3d/util/Future;

    goto :goto_0
.end method

.method setNameText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mTaggedName:Ljava/lang/String;

    return-void
.end method

.method public setPos(FFF)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->resetAttribute()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->getSearchFaceObjHeight()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->setVisibility(Z)V

    :cond_1
    :goto_0
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mSoftKeyMarginGLStart:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mSoftKeyMarginGLEnd:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v1, p1

    invoke-super {p0, v1, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    return-void

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->setVisibility(Z)V

    goto :goto_0
.end method

.method setVisibleRange()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->getCurrentYPosition()F

    move-result v1

    invoke-virtual {p0, v3, v1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->setPos(FFF)V

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->getSearchFaceObjHeight()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->setVisibility(Z)V

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->setVisibility(Z)V

    goto :goto_0
.end method
