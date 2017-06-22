.class public Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;
.super Landroid/widget/FrameLayout;
.source "RoundedSeekbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$SeekListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX:I = 0x19

.field private static final DEFAULT_PROGRESS:I = 0x0

.field private static THUMB_HEIGHT:I = 0x0

.field private static THUMB_TILTED_OFFSET:I = 0x0

.field private static THUMB_WIDTH:I = 0x0

.field private static final THUMB_WIDTH_PADDING_RATIO:F = 0.0515f

.field private static maxProgress:I


# instance fields
.field private final DEFAULT_THUMB_HEIGHT:I

.field private final DEFAULT_THUMB_WIDTH:I

.field private SEEKBAR_SPEED:F

.field private _progress:F

.field degreeTilted:F

.field private mAnimationStartTime:J

.field private mArcId:I

.field private mCenterX:F

.field private mContext:Landroid/content/Context;

.field private mInitialized:Z

.field private mIsKeyBroadPressed:Z

.field private mIsPressed:Z

.field private mListener:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$SeekListener;

.field private mOrgThumb:Landroid/graphics/Bitmap;

.field private mSeekBarCanvas:Landroid/graphics/Canvas;

.field private mSeekbarPaint:Landroid/graphics/Paint;

.field private mThumb:Landroid/graphics/Bitmap;

.field private mThumbId:I

.field private mThumbTilted:Landroid/graphics/Bitmap;

.field private mThumbView:Landroid/widget/ImageView;

.field private mThumbViewDegreeTilted:Landroid/widget/ImageView;

.field private mTitlePaint:Landroid/graphics/Paint;

.field private mTmp:Landroid/graphics/Bitmap;

.field paint:Landroid/graphics/Paint;

.field posX:F

.field progress:F

.field thumbMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->THUMB_WIDTH:I

    sput v0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->THUMB_TILTED_OFFSET:I

    sput v0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->THUMB_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x2fc

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->DEFAULT_THUMB_WIDTH:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->DEFAULT_THUMB_HEIGHT:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->thumbMatrix:Landroid/graphics/Matrix;

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mInitialized:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mAnimationStartTime:J

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mContext:Landroid/content/Context;

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mTmp:Landroid/graphics/Bitmap;

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mIsKeyBroadPressed:Z

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->posX:F

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->_progress:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->SEEKBAR_SPEED:F

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x2fc

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->DEFAULT_THUMB_WIDTH:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->DEFAULT_THUMB_HEIGHT:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->thumbMatrix:Landroid/graphics/Matrix;

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mInitialized:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mAnimationStartTime:J

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mContext:Landroid/content/Context;

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mTmp:Landroid/graphics/Bitmap;

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mIsKeyBroadPressed:Z

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->posX:F

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->_progress:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->SEEKBAR_SPEED:F

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x2fc

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->DEFAULT_THUMB_WIDTH:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->DEFAULT_THUMB_HEIGHT:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->thumbMatrix:Landroid/graphics/Matrix;

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mInitialized:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mAnimationStartTime:J

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mContext:Landroid/content/Context;

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mTmp:Landroid/graphics/Bitmap;

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mIsKeyBroadPressed:Z

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->posX:F

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->_progress:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->SEEKBAR_SPEED:F

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 v0, 0x2fc

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->DEFAULT_THUMB_WIDTH:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->DEFAULT_THUMB_HEIGHT:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->thumbMatrix:Landroid/graphics/Matrix;

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mInitialized:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mAnimationStartTime:J

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mContext:Landroid/content/Context;

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mTmp:Landroid/graphics/Bitmap;

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mIsKeyBroadPressed:Z

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->posX:F

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->_progress:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->SEEKBAR_SPEED:F

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mIsPressed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mOrgThumb:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumb:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumbView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->maxProgress:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->getOnStartTrackingTouch()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->updateProgress(F)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->getOnStopTrackingTouch()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->updateValues()V

    return-void
.end method

.method private getOnStartTrackingTouch()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$SeekListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mIsKeyBroadPressed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mIsKeyBroadPressed:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$SeekListener;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$SeekListener;->onStartTrackingTouch()V

    :cond_0
    return-void
.end method

.method private getOnStopTrackingTouch()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mIsKeyBroadPressed:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$SeekListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$SeekListener;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$SeekListener;->onStopTrackingTouch()V

    :cond_0
    return-void
.end method

.method private getThumbHeight()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08026c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->THUMB_HEIGHT:I

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x443f0000    # 764.0f

    mul-float/2addr v3, v1

    float-to-int v3, v3

    sput v3, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->THUMB_WIDTH:I

    const/high16 v3, 0x41f00000    # 30.0f

    mul-float/2addr v3, v1

    float-to-int v3, v3

    sput v3, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->THUMB_HEIGHT:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/sec/android/mimage/photoretouching/R$styleable;->RoundSeekbar:[I

    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mArcId:I

    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumbId:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mArcId:I

    if-eq v3, v7, :cond_0

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumbId:I

    if-ne v3, v7, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->getThumbHeight()V

    const/4 v3, 0x5

    const/16 v4, 0x19

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    sput v3, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->maxProgress:I

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->progress:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->paint:Landroid/graphics/Paint;

    const/high16 v4, -0x10000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mOrgThumb:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0205e7

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mTmp:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mTmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v6}, Landroid/graphics/Bitmap;->setDensity(I)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mTmp:Landroid/graphics/Bitmap;

    sget v4, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->THUMB_WIDTH:I

    sget v5, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->THUMB_HEIGHT:I

    invoke-static {v3, v4, v5, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mOrgThumb:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mOrgThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v6}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_2
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumb:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumb:Landroid/graphics/Bitmap;

    :cond_3
    sget v3, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->THUMB_WIDTH:I

    sget v4, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->THUMB_HEIGHT:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumb:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v6}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mSeekBarCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mSeekBarCanvas:Landroid/graphics/Canvas;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v6, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mSeekBarCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v8}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->setFocusable(Z)V

    new-instance v3, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$1;

    invoke-direct {v3, p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;)V

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iput-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mIsKeyBroadPressed:Z

    new-instance v3, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$2;

    invoke-direct {v3, p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$2;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;)V

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumbView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumbView:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumbView:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumbView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumbView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumbView:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$3;

    invoke-direct {v4, p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$3;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iput-boolean v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mInitialized:Z

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mSeekbarPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mSeekbarPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mSeekbarPaint:Landroid/graphics/Paint;

    const-string v4, "#ffed920f"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mSeekbarPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mTitlePaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mTitlePaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGreatUX()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mTitlePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mTitlePaint:Landroid/graphics/Paint;

    const-string v4, "#ffed920f"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1
.end method

.method private updateProgress(F)V
    .locals 1

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->progress:F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$SeekListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$SeekListener;

    invoke-interface {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$SeekListener;->onProgressChange(F)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->updateThumb()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->invalidate()V

    return-void
.end method

.method private updateThumb()V
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mInitialized:Z

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mOrgThumb:Landroid/graphics/Bitmap;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mOrgThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v13

    if-nez v13, :cond_3

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->progress:F

    sget v14, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->maxProgress:I

    int-to-float v14, v14

    div-float/2addr v13, v14

    float-to-double v10, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_0

    neg-double v10, v10

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mCenterX:F

    sget v14, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->THUMB_WIDTH:I

    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    add-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    int-to-float v6, v13

    :goto_0
    sget v13, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->THUMB_WIDTH:I

    int-to-float v13, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sget v14, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->THUMB_WIDTH:I

    int-to-float v14, v14

    const v15, 0x3d52f1aa    # 0.0515f

    mul-float/2addr v14, v15

    sub-float/2addr v13, v14

    float-to-double v14, v13

    mul-double/2addr v14, v10

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mCenterX:F

    float-to-double v0, v13

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    double-to-float v4, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mSeekBarCanvas:Landroid/graphics/Canvas;

    const/4 v14, 0x0

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mSeekBarCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mOrgThumb:Landroid/graphics/Bitmap;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_5

    sget v13, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->THUMB_WIDTH:I

    int-to-float v13, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v13, v4

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    int-to-float v12, v13

    :goto_1
    sub-float v5, v6, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v13, 0x0

    cmpl-float v13, v5, v13

    if-lez v13, :cond_6

    sget v13, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->THUMB_WIDTH:I

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    sub-float v2, v13, v5

    :goto_2
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v13

    add-float v8, v2, v13

    new-instance v7, Landroid/graphics/RectF;

    const/high16 v13, 0x40800000    # 4.0f

    sub-float v13, v2, v13

    const/4 v14, 0x0

    const/high16 v15, 0x40800000    # 4.0f

    add-float/2addr v15, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mOrgThumb:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v7, v13, v14, v15, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->progress:F

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mSeekBarCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mSeekbarPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v7, v14}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1
    sget v13, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->THUMB_WIDTH:I

    int-to-float v13, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sget v14, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->THUMB_WIDTH:I

    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    sget v15, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->THUMB_WIDTH:I

    int-to-float v15, v15

    const v16, 0x3d52f1aa    # 0.0515f

    mul-float v15, v15, v16

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->degreeTilted:F

    mul-float/2addr v14, v15

    sget v15, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->maxProgress:I

    int-to-float v15, v15

    div-float/2addr v14, v15

    sub-float/2addr v13, v14

    const/high16 v14, 0x40400000    # 3.0f

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    sput v13, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->THUMB_TILTED_OFFSET:I

    sget v13, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->THUMB_TILTED_OFFSET:I

    int-to-float v3, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_9

    new-instance v9, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mOrgThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0xd

    int-to-float v13, v13

    add-float/2addr v13, v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mOrgThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    div-int/lit8 v14, v14, 0x5

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mOrgThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    mul-int/lit8 v15, v15, 0x5

    div-int/lit8 v15, v15, 0x6

    int-to-float v15, v15

    invoke-direct {v9, v13, v14, v3, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_3
    sget v13, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->THUMB_TILTED_OFFSET:I

    sget v14, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->THUMB_WIDTH:I

    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    sub-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    sget v14, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->THUMB_WIDTH:I

    div-int/lit8 v14, v14, 0x32

    if-le v13, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mSeekBarCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v9, v14}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->thumbMatrix:Landroid/graphics/Matrix;

    const/4 v14, 0x0

    sub-float/2addr v14, v12

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Matrix;->setTranslate(FF)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumbView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->thumbMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_3
    return-void

    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mCenterX:F

    sget v14, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->THUMB_WIDTH:I

    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    int-to-float v6, v13

    goto/16 :goto_0

    :cond_5
    sget v13, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->THUMB_WIDTH:I

    int-to-float v13, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float v13, v4, v13

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    int-to-float v12, v13

    goto/16 :goto_1

    :cond_6
    sget v13, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->THUMB_WIDTH:I

    div-int/lit8 v13, v13, 0x2

    int-to-float v2, v13

    goto/16 :goto_2

    :cond_7
    const/4 v13, 0x0

    cmpl-float v13, v5, v13

    if-lez v13, :cond_8

    sget v13, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->THUMB_WIDTH:I

    div-int/lit8 v13, v13, 0x2

    int-to-float v2, v13

    :goto_5
    goto/16 :goto_2

    :cond_8
    sget v13, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->THUMB_WIDTH:I

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    add-float v2, v13, v5

    goto :goto_5

    :cond_9
    new-instance v9, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mOrgThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x5

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mOrgThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    div-int/lit8 v14, v14, 0xd

    int-to-float v14, v14

    add-float/2addr v14, v3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mOrgThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    mul-int/lit8 v15, v15, 0x5

    div-int/lit8 v15, v15, 0x6

    int-to-float v15, v15

    invoke-direct {v9, v3, v13, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->thumbMatrix:Landroid/graphics/Matrix;

    const/4 v14, 0x0

    invoke-virtual {v13, v12, v14}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_4
.end method

.method private updateValues()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->getWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mCenterX:F

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->updateThumb()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mCenterX:F

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mTmp:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->recycleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mOrgThumb:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->recycleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumb:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->recycleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumbView:Landroid/widget/ImageView;

    return-void
.end method

.method public getProgress()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->progress:F

    return v0
.end method

.method public init(IIIII)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mInitialized:Z

    return-void
.end method

.method public onAnimationStarted()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mAnimationStartTime:J

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mInitialized:Z

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x443f0000    # 764.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    sput v2, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->THUMB_WIDTH:I

    const/high16 v2, 0x41f00000    # 30.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    sput v2, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->THUMB_HEIGHT:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mTmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mOrgThumb:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->recycleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mTmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0205e7

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mTmp:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mTmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v5}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mTmp:Landroid/graphics/Bitmap;

    sget v3, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->THUMB_WIDTH:I

    sget v4, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->THUMB_HEIGHT:I

    invoke-static {v2, v3, v4, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mOrgThumb:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mOrgThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v5}, Landroid/graphics/Bitmap;->setDensity(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mSeekBarCanvas:Landroid/graphics/Canvas;

    if-nez v2, :cond_1

    :cond_1
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mSeekBarCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumb:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumb:Landroid/graphics/Bitmap;

    :cond_2
    sget v2, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->THUMB_WIDTH:I

    sget v3, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->THUMB_HEIGHT:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumb:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v5}, Landroid/graphics/Bitmap;->setDensity(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mSeekBarCanvas:Landroid/graphics/Canvas;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v5, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mSeekBarCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumbView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumbView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumbView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mInitialized:Z

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->updateValues()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->updateValues()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mAnimationStartTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x258

    cmp-long v3, v6, v8

    if-gez v3, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$SeekListener;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$SeekListener;

    check-cast v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->getCurrState()I

    move-result v3

    const v6, 0x2000e

    if-lt v3, v6, :cond_2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$SeekListener;

    check-cast v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->getCurrState()I

    move-result v3

    const v6, 0x20014

    if-lt v3, v6, :cond_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_1
    :pswitch_0
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumbView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v7, 0x2

    if-ne v3, v7, :cond_9

    :cond_3
    move v3, v5

    :goto_2
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setPressed(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v5, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_a

    :cond_4
    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mIsPressed:Z

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumbView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$SeekListener;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$SeekListener;

    invoke-interface {v3}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$SeekListener;->onStopTrackingTouch()V

    :cond_5
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mContext:Landroid/content/Context;

    const-string v4, "E800"

    const-string v6, "Straighten"

    invoke-static {v3, v4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_3
    move v4, v5

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->posX:F

    goto :goto_1

    :pswitch_2
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->SEEKBAR_SPEED:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->posX:F

    sub-float/2addr v6, v7

    mul-float/2addr v3, v6

    sget v6, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->THUMB_WIDTH:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090059

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    div-float/2addr v3, v6

    float-to-double v0, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->posX:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->progress:F

    sget v6, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->maxProgress:I

    int-to-double v6, v6

    mul-double/2addr v6, v0

    double-to-float v6, v6

    add-float v2, v3, v6

    const/high16 v3, -0x3e380000    # -25.0f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_7

    const/high16 v2, -0x3e380000    # -25.0f

    :cond_7
    const/high16 v3, 0x41c80000    # 25.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_8

    const/high16 v2, 0x41c80000    # 25.0f

    :cond_8
    invoke-direct {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->updateProgress(F)V

    goto/16 :goto_1

    :cond_9
    move v3, v4

    goto :goto_2

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_6

    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mIsPressed:Z

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumbView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$SeekListener;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$SeekListener;

    invoke-interface {v3}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$SeekListener;->onStartTrackingTouch()V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setDegreeTilted(F)V
    .locals 4

    const/high16 v2, 0x40000000    # 2.0f

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->degreeTilted:F

    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->THUMB_WIDTH:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    sget v1, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->THUMB_WIDTH:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sget v2, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->THUMB_WIDTH:I

    int-to-float v2, v2

    const v3, 0x3d52f1aa    # 0.0515f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->degreeTilted:F

    mul-float/2addr v1, v2

    sget v2, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->maxProgress:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->THUMB_TILTED_OFFSET:I

    return-void
.end method

.method public setProgress(F)V
    .locals 2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->progress:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3089705f    # 1.0E-9f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->progress:F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$SeekListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$SeekListener;

    invoke-interface {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$SeekListener;->onProgressChange(F)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->updateThumb()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->invalidate()V

    return-void
.end method

.method public setProgressAfterApplyCropLasso(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->progress:F

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->updateThumb()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->invalidate()V

    return-void
.end method

.method public setSeekListener(Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$SeekListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$SeekListener;

    return-void
.end method

.method public thumbUpdate()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->updateThumb()V

    return-void
.end method
