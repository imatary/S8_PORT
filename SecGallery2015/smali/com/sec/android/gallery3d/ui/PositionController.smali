.class public Lcom/sec/android/gallery3d/ui/PositionController;
.super Ljava/lang/Object;
.source "PositionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/ui/PositionController$FilmRatio;,
        Lcom/sec/android/gallery3d/ui/PositionController$Gap;,
        Lcom/sec/android/gallery3d/ui/PositionController$Box;,
        Lcom/sec/android/gallery3d/ui/PositionController$Platform;,
        Lcom/sec/android/gallery3d/ui/PositionController$Animatable;,
        Lcom/sec/android/gallery3d/ui/PositionController$SimpleAnimationListener;,
        Lcom/sec/android/gallery3d/ui/PositionController$AnimationListener;,
        Lcom/sec/android/gallery3d/ui/PositionController$Listener;
    }
.end annotation


# static fields
.field private static final ANIM_KIND_CAPTURE:I = 0x9

.field private static final ANIM_KIND_DELETE:I = 0x8

.field private static final ANIM_KIND_FLING:I = 0x6

.field private static final ANIM_KIND_FLING_X:I = 0x7

.field private static final ANIM_KIND_NONE:I = -0x1

.field private static final ANIM_KIND_OPENING:I = 0x5

.field private static final ANIM_KIND_SCALE:I = 0x1

.field private static final ANIM_KIND_SCROLL:I = 0x0

.field public static final ANIM_KIND_SLIDE:I = 0x3

.field private static final ANIM_KIND_SNAP_BACK:I = 0x2

.field private static final ANIM_KIND_ZOOM:I = 0x4

.field private static final ANIM_TIME:[I

.field private static final BOX_MAX:I = 0x3

.field private static final CAPTURE_ANIMATION_TIME:I = 0x2bc

.field private static final CENTER_OUT_INDEX:[I

.field private static final HORIZONTAL_SLACK:I = 0x0

.field public static final IMAGE_AT_BOTTOM_EDGE:I = 0x8

.field public static final IMAGE_AT_LEFT_EDGE:I = 0x1

.field public static final IMAGE_AT_RIGHT_EDGE:I = 0x2

.field public static final IMAGE_AT_TOP_EDGE:I = 0x4

.field private static final IMAGE_GAP:I

.field private static final INVALID_RAW_POINT:F = -1.0f

.field private static final LAST_ANIMATION:J = -0x2L

.field private static final MAX_SCALE_LIMIT:F = 10.0f

.field private static final NO_ANIMATION:J = -0x1L

.field private static final SCALE_MATCH_WIDTH_THRESHOLD:F = 6.0E-4f

.field private static final SCALE_MAX_EXTRA:F = 1.0f

.field private static final SCALE_MIN_EXTRA:F = 0.999f

.field static final SNAP_BACK_ANIMATION_TIME:I = 0x258

.field private static final TAG:Ljava/lang/String; = "PositionController"

.field private static final mSineInOut90:Landroid/view/animation/Interpolator;


# instance fields
.field private SCALE_LIMIT:F

.field private final mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

.field private mAnimationListener:Lcom/sec/android/gallery3d/ui/PositionController$SimpleAnimationListener;

.field private mBoundBottom:I

.field private mBoundLeft:I

.field private mBoundRight:I

.field private mBoundTop:I

.field private final mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/gallery3d/util/RangeArray",
            "<",
            "Lcom/sec/android/gallery3d/ui/PositionController$Box;",
            ">;"
        }
    .end annotation
.end field

.field private mConstrained:Z

.field private final mConstrainedFrame:Landroid/graphics/Rect;

.field private mExtraScalingRange:Z

.field private final mFilmRatio:Lcom/sec/android/gallery3d/ui/PositionController$FilmRatio;

.field private final mFilmScroller:Lcom/sec/android/gallery3d/common/Scroller;

.field private mFocusX:F

.field private mFocusY:F

.field private final mGaps:Lcom/sec/android/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/gallery3d/util/RangeArray",
            "<",
            "Lcom/sec/android/gallery3d/ui/PositionController$Gap;",
            ">;"
        }
    .end annotation
.end field

.field private mHasNext:Z

.field private mHasPrev:Z

.field private mInScale:Z

.field private mIsExpansion:Z

.field private mIsScalePrepare:Z

.field private mIsSingleViewMode:Z

.field private final mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

.field private final mListener:Lcom/sec/android/gallery3d/ui/PositionController$Listener;

.field private mOriginPosController:Lcom/sec/android/gallery3d/ui/PositionController;

.field private final mPageScroller:Lcom/sec/android/gallery3d/ui/FlingScroller;

.field private final mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

.field private final mRects:Lcom/sec/android/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/gallery3d/util/RangeArray",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mRootViewType:I

.field private final mTempBoxes:Lcom/sec/android/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/gallery3d/util/RangeArray",
            "<",
            "Lcom/sec/android/gallery3d/ui/PositionController$Box;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempGaps:Lcom/sec/android/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/gallery3d/util/RangeArray",
            "<",
            "Lcom/sec/android/gallery3d/ui/PositionController$Gap;",
            ">;"
        }
    .end annotation
.end field

.field private mViewH:I

.field private mViewW:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    sput-object v2, Lcom/sec/android/gallery3d/ui/PositionController;->ANIM_TIME:[I

    const/4 v2, 0x7

    new-array v2, v2, [I

    sput-object v2, Lcom/sec/android/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    const/16 v2, 0x10

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    sput v2, Lcom/sec/android/gallery3d/ui/PositionController;->IMAGE_GAP:I

    const/16 v2, 0x69

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v2

    sput-object v2, Lcom/sec/android/gallery3d/ui/PositionController;->mSineInOut90:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/sec/android/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    div-int/lit8 v1, v2, 0x2

    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_0

    neg-int v1, v1

    :cond_0
    sget-object v2, Lcom/sec/android/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x258
        0xc8
        0xf0
        0x12c
        0x0
        0x0
        0x0
        0x2bc
        0x190
        0x9c40
    .end array-data
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/ui/PositionController$Listener;I)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, -0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v3, 0x41200000    # 10.0f

    iput v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->SCALE_LIMIT:F

    iput-boolean v7, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mExtraScalingRange:Z

    const/16 v3, 0x4b0

    iput v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mViewW:I

    const/16 v3, 0x4b0

    iput v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mViewH:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mConstrained:Z

    new-instance v3, Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    invoke-direct {v3, p0, v6}, Lcom/sec/android/gallery3d/ui/PositionController$Platform;-><init>(Lcom/sec/android/gallery3d/ui/PositionController;Lcom/sec/android/gallery3d/ui/PositionController$1;)V

    iput-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    new-instance v3, Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-direct {v3, v4, v5}, Lcom/sec/android/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    new-instance v3, Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-direct {v3, v4, v8}, Lcom/sec/android/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mGaps:Lcom/sec/android/gallery3d/util/RangeArray;

    new-instance v3, Lcom/sec/android/gallery3d/ui/PositionController$FilmRatio;

    invoke-direct {v3, v6}, Lcom/sec/android/gallery3d/ui/PositionController$FilmRatio;-><init>(Lcom/sec/android/gallery3d/ui/PositionController$1;)V

    iput-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mFilmRatio:Lcom/sec/android/gallery3d/ui/PositionController$FilmRatio;

    new-instance v3, Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-direct {v3, v4, v5}, Lcom/sec/android/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mTempBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    new-instance v3, Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-direct {v3, v4, v8}, Lcom/sec/android/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mTempGaps:Lcom/sec/android/gallery3d/util/RangeArray;

    new-instance v3, Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-direct {v3, v4, v5}, Lcom/sec/android/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mRects:Lcom/sec/android/gallery3d/util/RangeArray;

    iput-boolean v7, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mIsScalePrepare:Z

    iput-boolean v7, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mIsExpansion:Z

    iput-boolean v7, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mIsSingleViewMode:Z

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    iput-object p2, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mListener:Lcom/sec/android/gallery3d/ui/PositionController$Listener;

    iput p3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mRootViewType:I

    new-instance v3, Lcom/sec/android/gallery3d/ui/FlingScroller;

    invoke-direct {v3}, Lcom/sec/android/gallery3d/ui/FlingScroller;-><init>()V

    iput-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/sec/android/gallery3d/ui/FlingScroller;

    new-instance v3, Lcom/sec/android/gallery3d/common/Scroller;

    invoke-direct {v3, v6}, Lcom/sec/android/gallery3d/common/Scroller;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mFilmScroller:Lcom/sec/android/gallery3d/common/Scroller;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getAnimationInterface()Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PositionController;->initPlatform()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    iput-object v4, v3, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    :cond_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mFilmRatio:Lcom/sec/android/gallery3d/ui/PositionController$FilmRatio;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mFilmRatio:Lcom/sec/android/gallery3d/ui/PositionController$FilmRatio;

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    iput-object v4, v3, Lcom/sec/android/gallery3d/ui/PositionController$FilmRatio;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    :cond_1
    const/4 v2, -0x3

    :goto_0
    if-gt v2, v5, :cond_2

    new-instance v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    invoke-direct {v0, p0, v6}, Lcom/sec/android/gallery3d/ui/PositionController$Box;-><init>(Lcom/sec/android/gallery3d/ui/PositionController;Lcom/sec/android/gallery3d/ui/PositionController$1;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2, v0}, Lcom/sec/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/ui/PositionController;->initBox(I)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    iput-object v3, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mRects:Lcom/sec/android/gallery3d/util/RangeArray;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v3, v2, v4}, Lcom/sec/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, -0x3

    :goto_1
    if-ge v2, v5, :cond_3

    new-instance v1, Lcom/sec/android/gallery3d/ui/PositionController$Gap;

    invoke-direct {v1, v6}, Lcom/sec/android/gallery3d/ui/PositionController$Gap;-><init>(Lcom/sec/android/gallery3d/ui/PositionController$1;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mGaps:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2, v1}, Lcom/sec/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/ui/PositionController;->initGap(I)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    iput-object v3, v1, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_2
    sget-object v3, Lcom/sec/android/gallery3d/ui/PositionController;->ANIM_TIME:[I

    array-length v3, v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    sget-object v4, Lcom/sec/android/gallery3d/ui/PositionController;->ANIM_TIME:[I

    aget v4, v4, v2

    invoke-virtual {v3, v2, v4}, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->getAnimationDuration(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/gallery3d/ui/PositionController;->setAnimationDuration(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/gallery3d/ui/PositionController;)Lcom/sec/android/gallery3d/util/RangeArray;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/gallery3d/ui/PositionController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mExtraScalingRange:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/gallery3d/ui/PositionController;FI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/ui/PositionController;->calculateStableBound(FI)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/gallery3d/ui/PositionController;F)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/PositionController;->viewWiderThanScaledImage(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/gallery3d/ui/PositionController;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mFocusX:F

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/gallery3d/ui/PositionController;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundLeft:I

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/gallery3d/ui/PositionController;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundRight:I

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/android/gallery3d/ui/PositionController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mConstrained:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/gallery3d/ui/PositionController;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/gallery3d/ui/PositionController;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mViewW:I

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/gallery3d/ui/PositionController;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mViewH:I

    return v0
.end method

.method static synthetic access$2100()[I
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/ui/PositionController;->ANIM_TIME:[I

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/gallery3d/ui/PositionController;)Lcom/sec/android/gallery3d/common/Scroller;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mFilmScroller:Lcom/sec/android/gallery3d/common/Scroller;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/gallery3d/ui/PositionController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mHasNext:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/sec/android/gallery3d/ui/PositionController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mHasPrev:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/sec/android/gallery3d/ui/PositionController;)Lcom/sec/android/gallery3d/ui/FlingScroller;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/sec/android/gallery3d/ui/FlingScroller;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/gallery3d/ui/PositionController;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/PositionController;->calculateStableBound(F)V

    return-void
.end method

.method static synthetic access$2700(Lcom/sec/android/gallery3d/ui/PositionController;F)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/PositionController;->viewTallerThanScaledImage(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/sec/android/gallery3d/ui/PositionController;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mFocusY:F

    return v0
.end method

.method static synthetic access$2900(Lcom/sec/android/gallery3d/ui/PositionController;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundTop:I

    return v0
.end method

.method static synthetic access$3000(Lcom/sec/android/gallery3d/ui/PositionController;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundBottom:I

    return v0
.end method

.method static synthetic access$600()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/ui/PositionController;->mSineInOut90:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/gallery3d/ui/PositionController;)Lcom/sec/android/gallery3d/ui/PositionController$Listener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mListener:Lcom/sec/android/gallery3d/ui/PositionController$Listener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/gallery3d/ui/PositionController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mInScale:Z

    return v0
.end method

.method private calculateStableBound(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/gallery3d/ui/PositionController;->calculateStableBound(FI)V

    return-void
.end method

.method private calculateStableBound(FI)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v5}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    invoke-direct {p0, v0, p1}, Lcom/sec/android/gallery3d/ui/PositionController;->widthOf(Lcom/sec/android/gallery3d/ui/PositionController$Box;F)I

    move-result v2

    invoke-direct {p0, v0, p1}, Lcom/sec/android/gallery3d/ui/PositionController;->heightOf(Lcom/sec/android/gallery3d/ui/PositionController$Box;F)I

    move-result v1

    iget v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mViewW:I

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v2, 0x1

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sub-int/2addr v3, p2

    iput v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundLeft:I

    div-int/lit8 v3, v2, 0x2

    iget v4, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v3, p2

    iput v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundRight:I

    iget v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mViewH:I

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v1, 0x1

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundTop:I

    div-int/lit8 v3, v1, 0x2

    iget v4, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundBottom:I

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/PositionController;->viewTallerThanScaledImage(F)Z

    move-result v3

    if-eqz v3, :cond_0

    iput v5, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundBottom:I

    iput v5, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundTop:I

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/PositionController;->viewWiderThanScaledImage(F)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iget v3, v3, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iput v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundRight:I

    iput v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundLeft:I

    :cond_1
    return-void
.end method

.method private canScroll()Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    iget-wide v4, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mAnimationStartTime:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    :goto_0
    :sswitch_0
    return v1

    :cond_0
    iget v3, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mAnimationKind:I

    sparse-switch v3, :sswitch_data_0

    move v1, v2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method private convertBoxToRect(I)V
    .locals 10

    if-nez p1, :cond_0

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mOriginPosController:Lcom/sec/android/gallery3d/ui/PositionController;

    if-eqz v8, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PositionController;->doPositionCompensation()V

    :cond_0
    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v8, p1}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mRects:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v8, p1}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    iget v8, v1, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iget v9, v9, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v9, v9, 0x2

    add-int v7, v8, v9

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/ui/PositionController;->widthOf(Lcom/sec/android/gallery3d/ui/PositionController$Box;)I

    move-result v5

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/ui/PositionController;->heightOf(Lcom/sec/android/gallery3d/ui/PositionController$Box;)I

    move-result v3

    if-nez p1, :cond_1

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iget v8, v8, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v9, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v9, v9, 0x2

    add-int v6, v8, v9

    div-int/lit8 v8, v5, 0x2

    sub-int v8, v6, v8

    iput v8, v4, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v5

    iput v8, v4, Landroid/graphics/Rect;->right:I

    :goto_0
    div-int/lit8 v8, v3, 0x2

    sub-int v8, v7, v8

    iput v8, v4, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v3

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_1
    if-lez p1, :cond_2

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mRects:Lcom/sec/android/gallery3d/util/RangeArray;

    add-int/lit8 v9, p1, -0x1

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mGaps:Lcom/sec/android/gallery3d/util/RangeArray;

    add-int/lit8 v9, p1, -0x1

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/ui/PositionController$Gap;

    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v2, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    add-int/2addr v8, v9

    iput v8, v4, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v5

    iput v8, v4, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mRects:Lcom/sec/android/gallery3d/util/RangeArray;

    add-int/lit8 v9, p1, 0x1

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mGaps:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v8, p1}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/ui/PositionController$Gap;

    iget v8, v0, Landroid/graphics/Rect;->left:I

    iget v9, v2, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    sub-int/2addr v8, v9

    iput v8, v4, Landroid/graphics/Rect;->right:I

    iget v8, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v5

    iput v8, v4, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method private debugMoveBox([I)V
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "moveBox:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    aget v1, p1, v0

    const v3, 0x7fffffff

    if-ne v1, v3, :cond_0

    const-string/jumbo v3, " N"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string/jumbo v3, "PositionController"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private doPositionCompensation()V
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mOriginPosController:Lcom/sec/android/gallery3d/ui/PositionController;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getGlRootView()Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getGlRootView()Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->getDisplayRotation()I

    move-result v4

    rem-int/lit16 v4, v4, 0xb4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mOriginPosController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-direct {v4, v5}, Lcom/sec/android/gallery3d/ui/PositionController;->getBox(I)Lcom/sec/android/gallery3d/ui/PositionController$Box;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mOriginPosController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-direct {v4}, Lcom/sec/android/gallery3d/ui/PositionController;->getPlatform()Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    move-result-object v4

    iget v4, v4, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mListener:Lcom/sec/android/gallery3d/ui/PositionController$Listener;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/ui/PositionController$Listener;->getPointerScaleX()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v1, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mListener:Lcom/sec/android/gallery3d/ui/PositionController$Listener;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/ui/PositionController$Listener;->getPointerScaleY()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iget v4, v4, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    if-ne v4, v3, :cond_0

    iget v4, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    if-eq v4, v2, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iput v3, v4, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iput v2, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    :cond_1
    return-void
.end method

.method private dumpRect(I)V
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mRects:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, p1}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    const-string/jumbo v3, "Root type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mRootViewType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", Rect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x78

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, p1}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    if-eqz v0, :cond_0

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",  Platform : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iget v4, v4, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mFromX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iget v4, v4, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mFromY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iget v4, v4, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mToX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iget v4, v4, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mToY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iget v4, v4, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const-string/jumbo v3, "PositionController"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private dumpState()V
    .locals 6

    const/4 v5, 0x3

    const/4 v0, -0x3

    :goto_0
    if-ge v0, v5, :cond_0

    const-string/jumbo v3, "PositionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Gap "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mGaps:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/ui/PositionController$Gap;

    iget v2, v2, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/sec/android/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    aget v2, v2, v0

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/ui/PositionController;->dumpRect(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, -0x3

    :goto_2
    if-gt v0, v5, :cond_4

    add-int/lit8 v1, v0, 0x1

    :goto_3
    if-gt v1, v5, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mRects:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mRects:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v1}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-static {v2, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "PositionController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " and rect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "intersects!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private gapToSide(Lcom/sec/android/gallery3d/ui/PositionController$Box;)I
    .locals 3

    iget v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mViewW:I

    int-to-float v0, v0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/sec/android/gallery3d/ui/PositionController$Box;)F

    move-result v1

    iget v2, p1, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getBox(I)Lcom/sec/android/gallery3d/ui/PositionController$Box;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    return-object v0
.end method

.method private getDefaultGapSize(I)I
    .locals 4

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    sget v2, Lcom/sec/android/gallery3d/ui/PositionController;->IMAGE_GAP:I

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/PositionController;->gapToSide(Lcom/sec/android/gallery3d/ui/PositionController$Box;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/ui/PositionController;->gapToSide(Lcom/sec/android/gallery3d/ui/PositionController$Box;)I

    move-result v3

    add-int/2addr v2, v3

    return v2
.end method

.method private getMaximalScale(Lcom/sec/android/gallery3d/ui/PositionController$Box;)F
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mConstrained:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/sec/android/gallery3d/ui/PositionController$Box;)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->SCALE_LIMIT:F

    goto :goto_0
.end method

.method private getMinimalScale(Lcom/sec/android/gallery3d/ui/PositionController$Box;)F
    .locals 9

    const/4 v8, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    iget-boolean v6, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mConstrained:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v6, v8}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne p1, v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v2

    :goto_0
    if-nez p1, :cond_0

    const-string/jumbo v6, "PositionController"

    const-string/jumbo v7, "Box is null!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mTempBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mTempBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v6, v8}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    :cond_0
    if-nez p1, :cond_3

    :cond_1
    :goto_1
    return v5

    :cond_2
    iget v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mViewW:I

    iget v2, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mViewH:I

    goto :goto_0

    :cond_3
    invoke-direct {p0, v3, v2, p1}, Lcom/sec/android/gallery3d/ui/PositionController;->needToAdjustMinScale(IILcom/sec/android/gallery3d/ui/PositionController$Box;)Z

    move-result v5

    if-eqz v5, :cond_4

    int-to-float v5, v3

    mul-float/2addr v5, v4

    iget v6, p1, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v6, v2

    mul-float/2addr v6, v0

    iget v7, p1, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :goto_2
    iget v5, p0, Lcom/sec/android/gallery3d/ui/PositionController;->SCALE_LIMIT:F

    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    goto :goto_1

    :cond_4
    int-to-float v5, v3

    mul-float/2addr v5, v4

    iget v6, p1, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v6, v2

    mul-float/2addr v6, v0

    iget v7, p1, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_2
.end method

.method private getPlatform()Lcom/sec/android/gallery3d/ui/PositionController$Platform;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    return-object v0
.end method

.method private getTargetScale(Lcom/sec/android/gallery3d/ui/PositionController$Box;)F
    .locals 4

    iget-wide v0, p1, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p1, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mToScale:F

    goto :goto_0
.end method

.method private heightOf(Lcom/sec/android/gallery3d/ui/PositionController$Box;)I
    .locals 2

    iget v0, p1, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v0, v0

    iget v1, p1, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private heightOf(Lcom/sec/android/gallery3d/ui/PositionController$Box;F)I
    .locals 2

    iget v0, p1, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private initBox(I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    iget v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mViewW:I

    iput v1, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mImageW:I

    iget v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mViewH:I

    iput v1, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mImageH:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mUseViewSize:Z

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/sec/android/gallery3d/ui/PositionController$Box;)F

    move-result v1

    iput v1, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/PositionController;->getMaximalScale(Lcom/sec/android/gallery3d/ui/PositionController$Box;)F

    move-result v1

    iput v1, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    iput v4, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v1, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    iput v1, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mAnimationStartTime:J

    const/4 v1, -0x1

    iput v1, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mAnimationKind:I

    iput v4, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mDxPre:I

    iput v4, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mDyPre:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mScalePre:F

    return-void
.end method

.method private initBox(ILcom/sec/android/gallery3d/ui/PhotoView$Size;)V
    .locals 5

    const/4 v4, 0x0

    iget v1, p2, Lcom/sec/android/gallery3d/ui/PhotoView$Size;->width:I

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/sec/android/gallery3d/ui/PhotoView$Size;->height:I

    if-nez v1, :cond_2

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/PositionController;->initBox(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    iget v1, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mImageW:I

    iget v2, p2, Lcom/sec/android/gallery3d/ui/PhotoView$Size;->width:I

    if-ne v1, v2, :cond_3

    iget v1, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mImageH:I

    iget v2, p2, Lcom/sec/android/gallery3d/ui/PhotoView$Size;->height:I

    if-eq v1, v2, :cond_1

    :cond_3
    iget v1, p2, Lcom/sec/android/gallery3d/ui/PhotoView$Size;->width:I

    iput v1, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mImageW:I

    iget v1, p2, Lcom/sec/android/gallery3d/ui/PhotoView$Size;->height:I

    iput v1, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mImageH:I

    iput-boolean v4, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mUseViewSize:Z

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/sec/android/gallery3d/ui/PositionController$Box;)F

    move-result v1

    iput v1, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/PositionController;->getMaximalScale(Lcom/sec/android/gallery3d/ui/PositionController$Box;)F

    move-result v1

    iput v1, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    iput v4, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v1, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    iput v1, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mAnimationStartTime:J

    const/4 v1, -0x1

    iput v1, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mAnimationKind:I

    iput v4, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mDxPre:I

    iput v4, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mDyPre:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mScalePre:F

    goto :goto_0
.end method

.method private initGap(I)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mGaps:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PositionController$Gap;

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/PositionController;->getDefaultGapSize(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    iget v1, v0, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    iput v1, v0, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->mAnimationStartTime:J

    return-void
.end method

.method private initGap(II)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mGaps:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PositionController$Gap;

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/PositionController;->getDefaultGapSize(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    iput p2, v0, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->mAnimationStartTime:J

    return-void
.end method

.method private initPlatform()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->updateDefaultXY()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iget v1, v1, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iput v1, v0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iget v1, v1, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mDefaultY:I

    iput v1, v0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mAnimationStartTime:J

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    const/4 v1, -0x1

    iput v1, v0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mAnimationKind:I

    return-void
.end method

.method private static isAlmostEqual(FF)Z
    .locals 2

    sub-float v0, p0, p1

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    neg-float v0, v0

    :cond_0
    const v1, 0x3ca3d70a    # 0.02f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private layoutAndSetPosition()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/sec/android/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/ui/PositionController;->convertBoxToRect(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private needToAdjustMinScale(IILcom/sec/android/gallery3d/ui/PositionController$Box;)Z
    .locals 4

    int-to-float v1, p1

    int-to-float v2, p2

    div-float/2addr v1, v2

    iget v2, p3, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v2, v2

    iget v3, p3, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    const/4 v1, 0x0

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    const v1, 0x3a1d4952    # 6.0E-4f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private redraw()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PositionController;->layoutAndSetPosition()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mListener:Lcom/sec/android/gallery3d/ui/PositionController$Listener;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/PositionController$Listener;->invalidate()V

    return-void
.end method

.method private savePresentationScale(IIF)V
    .locals 3

    iget v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mRootViewType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mOriginPosController:Lcom/sec/android/gallery3d/ui/PositionController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mOriginPosController:Lcom/sec/android/gallery3d/ui/PositionController;

    iget-object v1, v1, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    if-eqz v0, :cond_0

    iput p1, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mDxPre:I

    iput p2, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mDyPre:I

    iput p3, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mScalePre:F

    :cond_0
    return-void
.end method

.method private scrollPage(III)V
    .locals 6

    const/high16 v4, -0x40800000    # -1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/ui/PositionController;->scrollPage(IIIFF)V

    return-void
.end method

.method private scrollPage(IIIFF)V
    .locals 9

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PositionController;->canScroll()Z

    move-result v6

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v6, v5}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iget v6, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v6}, Lcom/sec/android/gallery3d/ui/PositionController;->calculateStableBound(F)V

    iget v6, v1, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v7

    if-nez v7, :cond_1

    iget v7, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v7}, Lcom/sec/android/gallery3d/ui/PositionController;->viewWiderThanScaledImage(F)Z

    move-result v7

    if-eqz v7, :cond_1

    move p1, v5

    :cond_1
    add-int v3, v6, p1

    iget v6, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    add-int v4, v6, p2

    iget v6, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundTop:I

    iget v7, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundBottom:I

    if-eq v6, v7, :cond_2

    iget v6, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundTop:I

    if-ge v4, v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mListener:Lcom/sec/android/gallery3d/ui/PositionController$Listener;

    iget v7, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundTop:I

    sub-int/2addr v7, v4

    const/4 v8, 0x2

    invoke-interface {v6, v7, v8, p4}, Lcom/sec/android/gallery3d/ui/PositionController$Listener;->onPull(IIF)V

    :cond_2
    :goto_1
    iget v6, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundTop:I

    iget v7, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundBottom:I

    invoke-static {v4, v6, v7}, Lcom/sec/android/gallery3d/common/Utils;->clamp(III)I

    move-result v4

    iget-boolean v6, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mIsExpansion:Z

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mHasPrev:Z

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v6

    if-nez v6, :cond_6

    :cond_3
    iget v6, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundRight:I

    if-le v3, v6, :cond_6

    iget v6, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundRight:I

    sub-int v2, v3, v6

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mListener:Lcom/sec/android/gallery3d/ui/PositionController$Listener;

    const/4 v7, 0x1

    invoke-interface {v6, v2, v7, p5}, Lcom/sec/android/gallery3d/ui/PositionController$Listener;->onPull(IIF)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    invoke-virtual {v6, v5}, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->setImageChanging(Z)V

    iget v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundRight:I

    :cond_4
    :goto_2
    iget v5, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v3, v4, v5, p3}, Lcom/sec/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    goto :goto_0

    :cond_5
    iget v6, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundBottom:I

    if-le v4, v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mListener:Lcom/sec/android/gallery3d/ui/PositionController$Listener;

    iget v7, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundBottom:I

    sub-int v7, v4, v7

    invoke-interface {v6, v7, v5, p4}, Lcom/sec/android/gallery3d/ui/PositionController$Listener;->onPull(IIF)V

    goto :goto_1

    :cond_6
    iget-boolean v6, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mIsExpansion:Z

    if-nez v6, :cond_7

    iget-boolean v6, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mHasNext:Z

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v6

    if-nez v6, :cond_4

    :cond_7
    iget v6, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundLeft:I

    if-ge v3, v6, :cond_4

    iget v6, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundLeft:I

    sub-int v2, v6, v3

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mListener:Lcom/sec/android/gallery3d/ui/PositionController$Listener;

    const/4 v7, 0x3

    invoke-interface {v6, v2, v7, p5}, Lcom/sec/android/gallery3d/ui/PositionController$Listener;->onPull(IIF)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    invoke-virtual {v6, v5}, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->setImageChanging(Z)V

    iget v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundLeft:I

    goto :goto_2
.end method

.method private setBoxSize(IIIZ)Z
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v4, p1}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    iget-boolean v2, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mUseViewSize:Z

    if-nez v2, :cond_1

    if-eqz p4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iput-boolean p4, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mUseViewSize:Z

    iget v4, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mImageW:I

    if-ne p2, v4, :cond_2

    iget v4, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mImageH:I

    if-eq p3, v4, :cond_0

    :cond_2
    if-le p2, p3, :cond_4

    iget v3, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v3, v3

    int-to-float v4, p2

    div-float v1, v3, v4

    :goto_1
    iput p2, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mImageW:I

    iput p3, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mImageH:I

    if-nez p1, :cond_5

    iget-boolean v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mIsScalePrepare:Z

    if-nez v3, :cond_5

    iget v3, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    iget v4, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_5

    iget v3, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    mul-float/2addr v3, v1

    iput v3, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    iget v3, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mFromScale:F

    mul-float/2addr v3, v1

    iput v3, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mFromScale:F

    iget v3, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mToScale:F

    mul-float/2addr v3, v1

    iput v3, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mToScale:F

    :goto_2
    if-nez p1, :cond_3

    iget v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mFocusX:F

    div-float/2addr v3, v1

    iput v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mFocusX:F

    iget v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mFocusY:F

    div-float/2addr v3, v1

    iput v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mFocusY:F

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    iget v3, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v3, v3

    int-to-float v4, p3

    div-float v1, v3, v4

    goto :goto_1

    :cond_5
    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/sec/android/gallery3d/ui/PositionController$Box;)F

    move-result v3

    iput v3, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    const-wide/16 v4, -0x1

    iput-wide v4, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mAnimationStartTime:J

    goto :goto_2
.end method

.method private skipAnimation()V
    .locals 9

    const/4 v8, 0x3

    const-wide/16 v6, -0x1

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iget-wide v4, v3, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mAnimationStartTime:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iget v4, v4, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mToX:I

    iput v4, v3, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iget v4, v4, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mToY:I

    iput v4, v3, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iput-wide v6, v3, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mAnimationStartTime:J

    :cond_0
    const/4 v2, -0x3

    :goto_0
    if-gt v2, v8, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    iget-wide v4, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mAnimationStartTime:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v3, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mToY:I

    iput v3, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iput-wide v6, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mAnimationStartTime:J

    iget v3, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mToScale:F

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/ui/PositionController$Box;->setCurrentScaleWithScaleChanged(F)V

    goto :goto_1

    :cond_2
    const/4 v2, -0x3

    :goto_2
    if-ge v2, v8, :cond_4

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mGaps:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/ui/PositionController$Gap;

    iget-wide v4, v1, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->mAnimationStartTime:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    iget v3, v1, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->mToGap:I

    iput v3, v1, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    iput-wide v6, v1, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->mAnimationStartTime:J

    goto :goto_3

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PositionController;->redraw()V

    return-void
.end method

.method private snapAndRedraw()V
    .locals 3

    const/4 v2, 0x3

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->startSnapback()Z

    const/4 v0, -0x3

    :goto_0
    if-gt v0, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/PositionController$Box;->startSnapback()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x3

    :goto_1
    if-ge v0, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mGaps:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/ui/PositionController$Gap;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->startSnapback()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mFilmRatio:Lcom/sec/android/gallery3d/ui/PositionController$FilmRatio;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/PositionController$FilmRatio;->startSnapback()Z

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PositionController;->redraw()V

    return-void
.end method

.method private snapAndRedraw(I)V
    .locals 3

    const/4 v2, 0x3

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->startSnapback(I)Z

    const/4 v0, -0x3

    :goto_0
    if-gt v0, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/ui/PositionController$Box;->startSnapback(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x3

    :goto_1
    if-ge v0, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mGaps:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/ui/PositionController$Gap;

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->startSnapback(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mFilmRatio:Lcom/sec/android/gallery3d/ui/PositionController$FilmRatio;

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/ui/PositionController$FilmRatio;->startSnapback(I)Z

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PositionController;->redraw()V

    return-void
.end method

.method private startAnimation(IIFI)Z
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mAnimationListener:Lcom/sec/android/gallery3d/ui/PositionController$SimpleAnimationListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mAnimationListener:Lcom/sec/android/gallery3d/ui/PositionController$SimpleAnimationListener;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/PositionController$SimpleAnimationListener;->onAnimationStart()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iget v2, v2, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mDefaultY:I

    # invokes: Lcom/sec/android/gallery3d/ui/PositionController$Platform;->doAnimation(III)Z
    invoke-static {v1, p1, v2, p4}, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->access$400(Lcom/sec/android/gallery3d/ui/PositionController$Platform;III)Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    # invokes: Lcom/sec/android/gallery3d/ui/PositionController$Box;->doAnimation(IFI)Z
    invoke-static {v1, p2, p3, p4}, Lcom/sec/android/gallery3d/ui/PositionController$Box;->access$500(Lcom/sec/android/gallery3d/ui/PositionController$Box;IFI)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PositionController;->redraw()V

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mAnimationListener:Lcom/sec/android/gallery3d/ui/PositionController$SimpleAnimationListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mAnimationListener:Lcom/sec/android/gallery3d/ui/PositionController$SimpleAnimationListener;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/PositionController$SimpleAnimationListener;->onAnimationEnd()V

    goto :goto_0
.end method

.method private updateScaleAndGapLimit()V
    .locals 5

    const/4 v4, 0x3

    const/4 v2, -0x3

    :goto_0
    if-gt v2, v4, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/sec/android/gallery3d/ui/PositionController$Box;)F

    move-result v3

    iput v3, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/PositionController;->getMaximalScale(Lcom/sec/android/gallery3d/ui/PositionController$Box;)F

    move-result v3

    iput v3, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x3

    :goto_1
    if-ge v2, v4, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mGaps:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/ui/PositionController$Gap;

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/ui/PositionController;->getDefaultGapSize(I)I

    move-result v3

    iput v3, v1, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private viewTallerThanScaledImage(F)Z
    .locals 3

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mViewH:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    invoke-direct {p0, v0, p1}, Lcom/sec/android/gallery3d/ui/PositionController;->heightOf(Lcom/sec/android/gallery3d/ui/PositionController$Box;F)I

    move-result v0

    if-lt v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private viewWiderThanScaledImage(F)Z
    .locals 3

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mViewW:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    invoke-direct {p0, v0, p1}, Lcom/sec/android/gallery3d/ui/PositionController;->widthOf(Lcom/sec/android/gallery3d/ui/PositionController$Box;F)I

    move-result v0

    if-lt v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private widthOf(Lcom/sec/android/gallery3d/ui/PositionController$Box;)I
    .locals 2

    iget v0, p1, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v0, v0

    iget v1, p1, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private widthOf(Lcom/sec/android/gallery3d/ui/PositionController$Box;F)I
    .locals 2

    iget v0, p1, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public advanceAnimation()Z
    .locals 8

    const/4 v5, 0x3

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->advanceAnimation()Z

    move-result v0

    const/4 v2, -0x3

    :goto_0
    if-gt v2, v5, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/PositionController$Box;->advanceAnimation()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    or-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "PositionController"

    const-string/jumbo v4, "NullPointerException at advanceAnimation"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, -0x3

    :goto_1
    if-ge v2, v5, :cond_3

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mGaps:Lcom/sec/android/gallery3d/util/RangeArray;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mGaps:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    return v3

    :cond_2
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mGaps:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/ui/PositionController$Gap;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->advanceAnimation()Z

    move-result v3

    or-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mFilmRatio:Lcom/sec/android/gallery3d/ui/PositionController$FilmRatio;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/PositionController$FilmRatio;->advanceAnimation()Z

    move-result v3

    or-int/2addr v0, v3

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PositionController;->redraw()V

    :cond_4
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iget-wide v4, v3, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mAnimationStartTime:J

    const-wide/16 v6, -0x2

    cmp-long v3, v4, v6

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mAnimationListener:Lcom/sec/android/gallery3d/ui/PositionController$SimpleAnimationListener;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mAnimationListener:Lcom/sec/android/gallery3d/ui/PositionController$SimpleAnimationListener;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/PositionController$SimpleAnimationListener;->onAnimationEnd()V

    :cond_5
    move v3, v0

    goto :goto_2
.end method

.method public beginScale(FF)V
    .locals 5

    const/high16 v4, 0x3f000000    # 0.5f

    iget v2, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr p1, v2

    iget v2, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr p2, v2

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mInScale:Z

    iget v2, v1, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    iget v3, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    div-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mFocusX:F

    iget v2, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    iget v3, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    div-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mFocusY:F

    return-void
.end method

.method public endScale()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mInScale:Z

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    return-void
.end method

.method public existAnimationListener()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mAnimationListener:Lcom/sec/android/gallery3d/ui/PositionController$SimpleAnimationListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public flingPage(II)Z
    .locals 14

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    iget-object v11, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iget v0, v9, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/PositionController;->viewWiderThanScaledImage(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v9, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/PositionController;->viewTallerThanScaledImage(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PositionController;->getImageAtEdges()I

    move-result v10

    if-lez p1, :cond_1

    and-int/lit8 v0, v10, 0x1

    if-nez v0, :cond_2

    :cond_1
    if-gez p1, :cond_3

    and-int/lit8 v0, v10, 0x2

    if-eqz v0, :cond_3

    :cond_2
    const/4 p1, 0x0

    :cond_3
    if-lez p2, :cond_4

    and-int/lit8 v0, v10, 0x4

    if-nez v0, :cond_5

    :cond_4
    if-gez p2, :cond_6

    and-int/lit8 v0, v10, 0x8

    if-eqz v0, :cond_6

    :cond_5
    const/16 p2, 0x0

    :cond_6
    if-nez p1, :cond_7

    if-nez p2, :cond_7

    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/sec/android/gallery3d/ui/FlingScroller;

    iget v1, v11, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v2, v9, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v5, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundLeft:I

    iget v6, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundRight:I

    iget v7, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundTop:I

    iget v8, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundBottom:I

    move v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/gallery3d/ui/FlingScroller;->fling(IIIIIIII)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/sec/android/gallery3d/ui/FlingScroller;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/FlingScroller;->getFinalX()I

    move-result v12

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/sec/android/gallery3d/ui/FlingScroller;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/FlingScroller;->getFinalY()I

    move-result v13

    sget-object v0, Lcom/sec/android/gallery3d/ui/PositionController;->ANIM_TIME:[I

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/sec/android/gallery3d/ui/FlingScroller;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/FlingScroller;->getDuration()I

    move-result v2

    aput v2, v0, v1

    iget v0, v9, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    const/4 v1, 0x6

    invoke-direct {p0, v12, v13, v0, v1}, Lcom/sec/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    move-result v0

    goto :goto_0
.end method

.method public forceImageSize(ILcom/sec/android/gallery3d/ui/PhotoView$Size;)V
    .locals 2

    iget v1, p2, Lcom/sec/android/gallery3d/ui/PhotoView$Size;->width:I

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/sec/android/gallery3d/ui/PhotoView$Size;->height:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    iget v1, p2, Lcom/sec/android/gallery3d/ui/PhotoView$Size;->width:I

    iput v1, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mImageW:I

    iget v1, p2, Lcom/sec/android/gallery3d/ui/PhotoView$Size;->height:I

    iput v1, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mImageH:I

    goto :goto_0
.end method

.method public getFilmRatio()F
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mFilmRatio:Lcom/sec/android/gallery3d/ui/PositionController$FilmRatio;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/PositionController$FilmRatio;->mCurrentRatio:F

    return v0
.end method

.method public getImageAtEdges()I
    .locals 5

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iget v3, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/ui/PositionController;->calculateStableBound(F)V

    const/4 v1, 0x0

    iget v3, v2, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v4, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundLeft:I

    if-gt v3, v4, :cond_0

    or-int/lit8 v1, v1, 0x2

    :cond_0
    iget v3, v2, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v4, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundRight:I

    if-lt v3, v4, :cond_1

    or-int/lit8 v1, v1, 0x1

    :cond_1
    iget v3, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v4, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundTop:I

    if-gt v3, v4, :cond_2

    or-int/lit8 v1, v1, 0x8

    :cond_2
    iget v3, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v4, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundBottom:I

    if-lt v3, v4, :cond_3

    or-int/lit8 v1, v1, 0x4

    :cond_3
    return v1
.end method

.method public getImageHeight()I
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v2, v1}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mImageH:I

    goto :goto_0
.end method

.method public getImageScale()F
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    :goto_0
    return v1

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getImageWidth()I
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v2, v1}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mImageW:I

    goto :goto_0
.end method

.method public getIsExpansionMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mIsExpansion:Z

    return v0
.end method

.method public getIsSingleViewMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mIsSingleViewMode:Z

    return v0
.end method

.method public getPosition(I)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mRects:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    return-object v0
.end method

.method public hasDeletingBox()Z
    .locals 3

    const/4 v0, -0x3

    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    iget v1, v1, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mAnimationKind:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public inOpeningAnimation()Z
    .locals 10

    const-wide/16 v8, -0x1

    const/4 v6, 0x5

    const/4 v2, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iget v1, v1, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mAnimationKind:I

    if-ne v1, v6, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iget-wide v4, v1, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mAnimationStartTime:J

    cmp-long v1, v4, v8

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    iget v1, v1, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mAnimationKind:I

    if-ne v1, v6, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    iget-wide v4, v1, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mAnimationStartTime:J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v1, v4, v8

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PositionController"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0
.end method

.method public inSlidingAnimation()Z
    .locals 8

    const-wide/16 v6, -0x1

    const/4 v4, 0x3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mAnimationKind:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iget-wide v2, v0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mAnimationStartTime:J

    cmp-long v0, v2, v6

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mAnimationKind:I

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    iget-wide v2, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mAnimationStartTime:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public isAnimationRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mAnimationListener:Lcom/sec/android/gallery3d/ui/PositionController$SimpleAnimationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mAnimationListener:Lcom/sec/android/gallery3d/ui/PositionController$SimpleAnimationListener;

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/ui/PositionController$SimpleAnimationListener;->isRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAtMinimalScale()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v2, v1}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    if-eqz v0, :cond_0

    iget v2, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    iget v3, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/ui/PositionController;->isAlmostEqual(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isCenter()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v2, v1}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iget v2, v2, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iget v3, v3, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isFullScreen()Z
    .locals 4

    const/high16 v3, 0x447a0000    # 1000.0f

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PositionController;->getImageScale()F

    move-result v0

    mul-float/2addr v0, v3

    float-to-int v2, v0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/sec/android/gallery3d/ui/PositionController$Box;)F

    move-result v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    if-ne v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isInScale()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mInScale:Z

    return v0
.end method

.method public isRunningAnimation()Z
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    iget-wide v2, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mAnimationStartTime:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public moveBox([IZZZ[Lcom/sec/android/gallery3d/ui/PhotoView$Size;Z)V
    .locals 19

    sget-boolean v17, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v17, :cond_1

    move/from16 v17, p3

    :goto_0
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/gallery3d/ui/PositionController;->mHasPrev:Z

    sget-boolean v17, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v17, :cond_2

    :goto_1
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/gallery3d/ui/PositionController;->mHasNext:Z

    new-instance v6, Lcom/sec/android/gallery3d/util/RangeIntArray;

    const/16 v17, -0x3

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-direct {v6, v0, v1}, Lcom/sec/android/gallery3d/util/RangeIntArray;-><init>([II)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/PositionController;->layoutAndSetPosition()V

    const/4 v8, -0x3

    :goto_2
    const/16 v17, 0x3

    move/from16 v0, v17

    if-gt v8, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mRects:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Rect;

    if-eqz v3, :cond_0

    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mViewW:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v3, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    move/from16 v17, p2

    goto :goto_0

    :cond_2
    move/from16 p2, p3

    goto :goto_1

    :cond_3
    const/4 v8, -0x3

    :goto_3
    const/16 v17, 0x3

    move/from16 v0, v17

    if-gt v8, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mTempBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Lcom/sec/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Lcom/sec/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v8, -0x3

    :goto_4
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v8, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mTempGaps:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mGaps:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Lcom/sec/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mGaps:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Lcom/sec/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    const/4 v8, -0x3

    :goto_5
    const/16 v17, 0x3

    move/from16 v0, v17

    if-gt v8, v0, :cond_7

    invoke-virtual {v6, v8}, Lcom/sec/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v10

    const v17, 0x7fffffff

    move/from16 v0, v17

    if-ne v10, v0, :cond_6

    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mTempBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Lcom/sec/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mTempBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Lcom/sec/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    goto :goto_6

    :cond_7
    const/4 v8, -0x3

    :goto_7
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v8, v0, :cond_a

    invoke-virtual {v6, v8}, Lcom/sec/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v10

    const v17, 0x7fffffff

    move/from16 v0, v17

    if-ne v10, v0, :cond_9

    :cond_8
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v17, v8, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/sec/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v11

    const v17, 0x7fffffff

    move/from16 v0, v17

    if-eq v11, v0, :cond_8

    add-int/lit8 v17, v10, 0x1

    move/from16 v0, v17

    if-ne v0, v11, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mGaps:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mTempGaps:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Lcom/sec/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mTempGaps:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Lcom/sec/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    goto :goto_8

    :cond_a
    const/4 v11, -0x3

    const/4 v8, -0x3

    :goto_9
    const/16 v17, 0x3

    move/from16 v0, v17

    if-gt v8, v0, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_b

    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_b
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mTempBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    if-nez v17, :cond_c

    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mTempBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    add-int/lit8 v12, v11, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Lcom/sec/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    sget-boolean v17, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v17, :cond_d

    neg-int v9, v8

    :goto_c
    add-int/lit8 v17, v9, 0x3

    aget-object v17, p5, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v8, v1}, Lcom/sec/android/gallery3d/ui/PositionController;->initBox(ILcom/sec/android/gallery3d/ui/PhotoView$Size;)V

    move v11, v12

    goto :goto_a

    :cond_d
    move v9, v8

    goto :goto_c

    :cond_e
    const/4 v5, -0x3

    :goto_d
    const/16 v17, 0x3

    move/from16 v0, v17

    if-gt v5, v0, :cond_f

    invoke-virtual {v6, v5}, Lcom/sec/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v17

    const v18, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_12

    :cond_f
    const/4 v13, 0x3

    :goto_e
    const/16 v17, -0x3

    move/from16 v0, v17

    if-lt v13, v0, :cond_10

    invoke-virtual {v6, v13}, Lcom/sec/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v17

    const v18, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_13

    :cond_10
    const/16 v17, 0x3

    move/from16 v0, v17

    if-le v5, v0, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    const/4 v13, 0x0

    move v5, v13

    :cond_11
    const/16 v17, 0x0

    add-int/lit8 v18, v5, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v8

    :goto_f
    if-ge v8, v13, :cond_15

    invoke-virtual {v6, v8}, Lcom/sec/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v17

    const v18, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_14

    :goto_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_13
    add-int/lit8 v13, v13, -0x1

    goto :goto_e

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    add-int/lit8 v18, v8, -0x1

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/ui/PositionController;->widthOf(Lcom/sec/android/gallery3d/ui/PositionController$Box;)I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/gallery3d/ui/PositionController;->widthOf(Lcom/sec/android/gallery3d/ui/PositionController$Box;)I

    move-result v16

    iget v0, v2, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v17, v0

    add-int v17, v17, v15

    div-int/lit8 v18, v15, 0x2

    sub-int v17, v17, v18

    div-int/lit8 v18, v16, 0x2

    add-int v17, v17, v18

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/android/gallery3d/ui/PositionController;->getDefaultGapSize(I)I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v3, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v3, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    goto :goto_10

    :cond_15
    const/16 v17, -0x1

    add-int/lit8 v18, v13, -0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v8

    :goto_11
    if-le v8, v5, :cond_17

    invoke-virtual {v6, v8}, Lcom/sec/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v17

    const v18, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_16

    :goto_12
    add-int/lit8 v8, v8, -0x1

    goto :goto_11

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    add-int/lit8 v18, v8, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/ui/PositionController;->widthOf(Lcom/sec/android/gallery3d/ui/PositionController$Box;)I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/gallery3d/ui/PositionController;->widthOf(Lcom/sec/android/gallery3d/ui/PositionController$Box;)I

    move-result v16

    iget v0, v2, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v17, v0

    div-int/lit8 v18, v15, 0x2

    sub-int v17, v17, v18

    div-int/lit8 v18, v16, 0x2

    sub-int v18, v16, v18

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/android/gallery3d/ui/PositionController;->getDefaultGapSize(I)I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v3, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v3, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    goto :goto_12

    :cond_17
    const/4 v11, -0x3

    const/4 v8, -0x3

    :goto_13
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v8, v0, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mGaps:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_18

    :goto_14
    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    :cond_18
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mTempGaps:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    if-nez v17, :cond_19

    add-int/lit8 v11, v11, 0x1

    goto :goto_15

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mGaps:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mTempGaps:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    add-int/lit8 v12, v11, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Lcom/sec/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    add-int/lit8 v18, v8, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/ui/PositionController;->widthOf(Lcom/sec/android/gallery3d/ui/PositionController$Box;)I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/gallery3d/ui/PositionController;->widthOf(Lcom/sec/android/gallery3d/ui/PositionController$Box;)I

    move-result v16

    if-lt v8, v5, :cond_1a

    if-ge v8, v13, :cond_1a

    iget v0, v3, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v17, v0

    iget v0, v2, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    div-int/lit8 v18, v16, 0x2

    sub-int v17, v17, v18

    div-int/lit8 v18, v15, 0x2

    sub-int v18, v15, v18

    sub-int v7, v17, v18

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v7}, Lcom/sec/android/gallery3d/ui/PositionController;->initGap(II)V

    move v11, v12

    goto :goto_14

    :cond_1a
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/android/gallery3d/ui/PositionController;->initGap(I)V

    move v11, v12

    goto :goto_14

    :cond_1b
    add-int/lit8 v8, v5, -0x1

    :goto_16
    const/16 v17, -0x3

    move/from16 v0, v17

    if-lt v8, v0, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    add-int/lit8 v18, v8, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/ui/PositionController;->widthOf(Lcom/sec/android/gallery3d/ui/PositionController$Box;)I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/gallery3d/ui/PositionController;->widthOf(Lcom/sec/android/gallery3d/ui/PositionController$Box;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mGaps:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/ui/PositionController$Gap;

    iget v0, v2, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v17, v0

    div-int/lit8 v18, v15, 0x2

    sub-int v17, v17, v18

    div-int/lit8 v18, v16, 0x2

    sub-int v18, v16, v18

    sub-int v17, v17, v18

    iget v0, v7, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v3, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    add-int/lit8 v8, v8, -0x1

    goto :goto_16

    :cond_1c
    add-int/lit8 v8, v13, 0x1

    :goto_17
    const/16 v17, 0x3

    move/from16 v0, v17

    if-gt v8, v0, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    add-int/lit8 v18, v8, -0x1

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/ui/PositionController;->widthOf(Lcom/sec/android/gallery3d/ui/PositionController$Box;)I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/gallery3d/ui/PositionController;->widthOf(Lcom/sec/android/gallery3d/ui/PositionController$Box;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mGaps:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    add-int/lit8 v18, v8, -0x1

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/ui/PositionController$Gap;

    iget v0, v2, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v17, v0

    add-int v17, v17, v15

    div-int/lit8 v18, v15, 0x2

    sub-int v17, v17, v18

    div-int/lit8 v18, v16, 0x2

    add-int v17, v17, v18

    iget v0, v7, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v3, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    add-int/lit8 v8, v8, 0x1

    goto :goto_17

    :cond_1d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    move/from16 v18, v0

    add-int v18, v18, v4

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mFromX:I

    move/from16 v18, v0

    add-int v18, v18, v4

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mFromX:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mToX:I

    move/from16 v18, v0

    add-int v18, v18, v4

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mToX:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mFlingOffset:I

    move/from16 v18, v0

    add-int v18, v18, v4

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mFlingOffset:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mConstrained:Z

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p4

    if-eq v0, v1, :cond_1f

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/gallery3d/ui/PositionController;->mConstrained:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->updateDefaultXY()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/PositionController;->updateScaleAndGapLimit()V

    :cond_1f
    if-eqz p6, :cond_20

    const/16 v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/PositionController;->snapAndRedraw(I)V

    :goto_18
    return-void

    :cond_20
    sget-object v17, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v17 .. v17}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v17

    if-eqz v17, :cond_21

    const/16 v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/PositionController;->snapAndRedraw(I)V

    goto :goto_18

    :cond_21
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/PositionController;->snapAndRedraw(I)V

    goto :goto_18
.end method

.method public resetToFullView()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iget v1, v1, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iget v2, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    const/4 v3, 0x4

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/sec/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    return-void
.end method

.method public resetToFullViewNoAnimation()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iget v1, v0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    const/4 v2, 0x2

    invoke-direct {p0, v1, v3, v0, v2}, Lcom/sec/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    return-void
.end method

.method public scaleBy(FFF)I
    .locals 7

    const/4 v3, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr p2, v5

    iget v5, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr p3, v5

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v5, v4}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/PositionController;->getTargetScale(Lcom/sec/android/gallery3d/ui/PositionController$Box;)F

    move-result v5

    mul-float/2addr v5, p1

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/ui/PositionController$Box;->clampScale(F)F

    move-result p1

    iget v5, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mFocusX:F

    mul-float/2addr v5, p1

    sub-float v5, p2, v5

    add-float/2addr v5, v6

    float-to-int v1, v5

    iget v5, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mFocusY:F

    mul-float/2addr v5, p1

    sub-float v5, p3, v5

    add-float/2addr v5, v6

    float-to-int v2, v5

    invoke-direct {p0, p1, v4}, Lcom/sec/android/gallery3d/ui/PositionController;->calculateStableBound(FI)V

    iget v5, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundRight:I

    if-le v1, v5, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundRight:I

    :cond_0
    iget v5, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundLeft:I

    if-ge v1, v5, :cond_1

    iget v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundLeft:I

    :cond_1
    iget v5, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundTop:I

    if-ge v2, v5, :cond_2

    iget v2, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundTop:I

    :cond_2
    iget v5, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundBottom:I

    if-le v2, v5, :cond_3

    iget v2, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundBottom:I

    :cond_3
    invoke-direct {p0, v1, v2, p1}, Lcom/sec/android/gallery3d/ui/PositionController;->savePresentationScale(IIF)V

    invoke-direct {p0, v1, v2, p1, v3}, Lcom/sec/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    iget v5, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    cmpg-float v5, p1, v5

    if-gez v5, :cond_5

    const/4 v3, -0x1

    :cond_4
    :goto_0
    return v3

    :cond_5
    iget v5, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    cmpl-float v5, p1, v5

    if-gtz v5, :cond_4

    move v3, v4

    goto :goto_0
.end method

.method public scaleByPresentation()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mRootViewType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mOriginPosController:Lcom/sec/android/gallery3d/ui/PositionController;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mOriginPosController:Lcom/sec/android/gallery3d/ui/PositionController;

    iget-object v1, v1, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v5}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    if-nez v0, :cond_2

    const-string/jumbo v1, "PositionController"

    const-string/jumbo v2, "scaleByPresentation: box(0) is null "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget v1, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mScalePre:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mDxPre:I

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mDyPre:I

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mDxPre:I

    iget v2, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mDyPre:I

    iget v3, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mScalePre:F

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    :cond_3
    iput v6, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mScalePre:F

    iput v5, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mDxPre:I

    iput v5, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mDyPre:I

    goto :goto_0
.end method

.method public scrollPage(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/gallery3d/ui/PositionController;->scrollPage(III)V

    return-void
.end method

.method public scrollPage(IIFF)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/ui/PositionController;->scrollPage(IIIFF)V

    return-void
.end method

.method public setAnimationDuration(II)V
    .locals 1

    if-ltz p1, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/ui/PositionController;->ANIM_TIME:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    if-gez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/sec/android/gallery3d/ui/PositionController;->ANIM_TIME:[I

    aput p2, v0, p1

    goto :goto_0
.end method

.method public setAnimationListener(Lcom/sec/android/gallery3d/ui/PositionController$SimpleAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mAnimationListener:Lcom/sec/android/gallery3d/ui/PositionController$SimpleAnimationListener;

    return-void
.end method

.method public setConstrainedFrame(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->updateDefaultXY()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PositionController;->updateScaleAndGapLimit()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    goto :goto_0
.end method

.method public setExtraScalingRange(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mExtraScalingRange:Z

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mExtraScalingRange:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    goto :goto_0
.end method

.method public setImageSize(ILcom/sec/android/gallery3d/ui/PhotoView$Size;Landroid/graphics/Rect;)V
    .locals 4

    iget v1, p2, Lcom/sec/android/gallery3d/ui/PhotoView$Size;->width:I

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/sec/android/gallery3d/ui/PhotoView$Size;->height:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->updateDefaultXY()V

    const/4 v0, 0x1

    :cond_2
    iget v1, p2, Lcom/sec/android/gallery3d/ui/PhotoView$Size;->width:I

    iget v2, p2, Lcom/sec/android/gallery3d/ui/PhotoView$Size;->height:I

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/sec/android/gallery3d/ui/PositionController;->setBoxSize(IIIZ)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PositionController;->updateScaleAndGapLimit()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    goto :goto_0
.end method

.method public setIsExpansionMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mIsExpansion:Z

    return-void
.end method

.method public setIsSingleViewMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mIsSingleViewMode:Z

    return-void
.end method

.method public setOriginPosController(Lcom/sec/android/gallery3d/ui/PositionController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mOriginPosController:Lcom/sec/android/gallery3d/ui/PositionController;

    return-void
.end method

.method public setScalePrepared(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mIsScalePrepare:Z

    return-void
.end method

.method public setViewSize(II)V
    .locals 5

    iget v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mViewW:I

    if-ne p1, v3, :cond_0

    iget v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mViewH:I

    if-ne p2, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v2

    iput p1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mViewW:I

    iput p2, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mViewH:I

    const/4 v1, -0x3

    :goto_1
    const/4 v3, 0x3

    if-gt v1, v3, :cond_1

    const/4 v3, 0x1

    invoke-direct {p0, v1, p1, p2, v3}, Lcom/sec/android/gallery3d/ui/PositionController;->setBoxSize(IIIZ)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/high16 v3, 0x41200000    # 10.0f

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mListener:Lcom/sec/android/gallery3d/ui/PositionController$Listener;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/ui/PositionController$Listener;->getPointerScaleX()F

    move-result v4

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->SCALE_LIMIT:F

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PositionController;->updateScaleAndGapLimit()V

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    iget v3, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    iput v3, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PositionController;->skipToFinalPosition()V

    goto :goto_0
.end method

.method public skipToFinalPosition()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PositionController;->stopAnimation()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PositionController;->skipAnimation()V

    return-void
.end method

.method public snapBack()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    return-void
.end method

.method public startHorizontalSlide()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iget v1, v1, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iget v2, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    const/4 v3, 0x3

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/sec/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    return-void
.end method

.method public stopAnimation()V
    .locals 5

    const/4 v4, 0x3

    const-wide/16 v2, -0x1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iput-wide v2, v1, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mAnimationStartTime:J

    const/4 v0, -0x3

    :goto_0
    if-gt v0, v4, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    iput-wide v2, v1, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mAnimationStartTime:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x3

    :goto_1
    if-ge v0, v4, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mGaps:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/ui/PositionController$Gap;

    iput-wide v2, v1, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->mAnimationStartTime:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mAnimationListener:Lcom/sec/android/gallery3d/ui/PositionController$SimpleAnimationListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mAnimationListener:Lcom/sec/android/gallery3d/ui/PositionController$SimpleAnimationListener;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/PositionController$SimpleAnimationListener;->onAnimationStop()V

    :cond_2
    return-void
.end method

.method public stopScrolling()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iget-wide v0, v0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iget v2, v2, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iput v2, v1, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mToX:I

    iput v2, v0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mFromX:I

    goto :goto_0
.end method

.method public zoomIn(FFF)V
    .locals 10

    const/high16 v9, 0x3f000000    # 0.5f

    iget v7, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr p1, v7

    iget v7, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr p2, v7

    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    iget v7, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    iget v8, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    invoke-static {p3, v7, v8}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result p3

    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mPlatform:Lcom/sec/android/gallery3d/ui/PositionController$Platform;

    iget v7, v7, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    int-to-float v7, v7

    sub-float v7, p1, v7

    iget v8, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    div-float v3, v7, v8

    iget v7, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    int-to-float v7, v7

    sub-float v7, p2, v7

    iget v8, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    div-float v4, v7, v8

    neg-float v7, v3

    mul-float/2addr v7, p3

    add-float/2addr v7, v9

    float-to-int v5, v7

    neg-float v7, v4

    mul-float/2addr v7, p3

    add-float/2addr v7, v9

    float-to-int v6, v7

    invoke-direct {p0, p3}, Lcom/sec/android/gallery3d/ui/PositionController;->calculateStableBound(F)V

    iget v7, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundLeft:I

    iget v8, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundRight:I

    invoke-static {v5, v7, v8}, Lcom/sec/android/gallery3d/common/Utils;->clamp(III)I

    move-result v1

    iget v7, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundTop:I

    iget v8, p0, Lcom/sec/android/gallery3d/ui/PositionController;->mBoundBottom:I

    invoke-static {v6, v7, v8}, Lcom/sec/android/gallery3d/common/Utils;->clamp(III)I

    move-result v2

    invoke-direct {p0, v1, v2, p3}, Lcom/sec/android/gallery3d/ui/PositionController;->savePresentationScale(IIF)V

    const/4 v7, 0x4

    invoke-direct {p0, v1, v2, p3, v7}, Lcom/sec/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    return-void
.end method
