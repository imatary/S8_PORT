.class public Lcom/sec/android/gallery3d/glcore/GlObject;
.super Ljava/lang/Object;
.source "GlObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;,
        Lcom/sec/android/gallery3d/glcore/GlObject$GlHoverListener;,
        Lcom/sec/android/gallery3d/glcore/GlObject$GlRotateListener;,
        Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;,
        Lcom/sec/android/gallery3d/glcore/GlObject$GlLongClickListener;,
        Lcom/sec/android/gallery3d/glcore/GlObject$GlDragListener;,
        Lcom/sec/android/gallery3d/glcore/GlObject$GlPenSelectListener;,
        Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;,
        Lcom/sec/android/gallery3d/glcore/GlObject$GlSecondaryClickListener;,
        Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;
    }
.end annotation


# static fields
.field protected static final BLEND_TYPE_DEFAULT:I = 0x0

.field protected static final BLEND_TYPE_SRC_ALPHA:I = 0x1

.field private static final BLEND_TYPE_SRC_ONE:I = 0x0

.field private static final COLOR_SIZE:F = 255.0f

.field private static final DEF_CHILD_COUNT:I = 0x8

.field private static final MAX_ALPHA_COUNT:I = 0x5

.field private static final MAX_POS_COUNT:I = 0x5

.field private static final MODE_DEFAULT:I = 0x0

.field private static final MODE_DOWNWARD_ROUNDED:I = 0x3

.field protected static final MODE_ROUNDED:I = 0x1

.field public static final MODE_UPPER_ROUNDED:I = 0x2

.field private static final RES_ID_BUTTON_SHAPE:I = 0xfffffff

.field private static final ROTATION_180:I = 0xb4

.field private static final ROTATION_270:I = 0x10e

.field private static final ROTATION_90:I = 0x5a

.field static final STATE_CREATED:I = 0x1

.field static final STATE_DESTROYED:I = 0x3

.field static final STATE_DESTROYING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GlObject"

.field private static final VERTEX_CNT_DEFALUT:I = 0x3c

.field private static final VERTEX_CNT_DEFAULT_CIRCLE:I = 0x1e0

.field private static final VISIBLE_LEVEL:I = 0x8

.field private static final VISIBLE_MASK:I = 0xff

.field private static final mPosMatrix:[F

.field private static final mProjViewMatrix:[F

.field private static final mTempMatrix:[F

.field private static final mTexCoordArray:[F


# instance fields
.field public isSideSyncDrag:Z

.field public mAccessibilityIndex:I

.field protected mAlpha:F

.field private mAlphaCnt:I

.field private final mAlphaEx:[F

.field public mAlphaInh:F

.field mAnimation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/glcore/GlAnimationBase;",
            ">;"
        }
    .end annotation
.end field

.field private mBorderColor:I

.field private mBorderMatrix:[F

.field private mBorderRect:Landroid/graphics/RectF;

.field private mBorderRectChanged:Z

.field private mBorderVisible:Z

.field private mBorderWidth:F

.field private mButtonShapePadding:Landroid/graphics/Rect;

.field private final mCanvasLock:Ljava/lang/Object;

.field private mCanvasMixRatio:F

.field protected mCanvasMixSrc:F

.field private mCanvasSubFlags:I

.field private mCanvasSubVisibility:Z

.field public mChild:[Lcom/sec/android/gallery3d/glcore/GlObject;

.field mChildCount:I

.field private mChildMax:I

.field private mCircle:Z

.field private mClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field protected mColorB:F

.field protected mColorG:F

.field protected mColorR:F

.field private final mCx:[F

.field public final mCy:[F

.field private final mCz:[F

.field private mDimCnt:I

.field private final mDimEx:[F

.field protected mDimFactor:F

.field private mDragListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlDragListener;

.field protected mEmptyFill:Z

.field protected mEmptyFillBlue:F

.field protected mEmptyFillColor:I

.field protected mEmptyFillGreen:F

.field protected mEmptyFillRed:F

.field protected mExtChanged:Z

.field private mGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

.field public mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

.field protected mGlCanvasSub:Lcom/sec/android/gallery3d/glcore/GlCanvas;

.field public mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

.field protected mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

.field private mGlView:Lcom/sec/android/gallery3d/glcore/GlView;

.field private mGlViewSub:Lcom/sec/android/gallery3d/glcore/GlView;

.field public mHeight:F

.field private mHoverActive:Z

.field private mHoverEnter:Z

.field private mHoverListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlHoverListener;

.field public final mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

.field private mLongClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlLongClickListener;

.field private final mMDetectorListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

.field private final mMPenSelectDetectorListener:Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector$GlPenSelectDetectorListener;

.field protected final mMatrixDisp:[F

.field protected final mMatrixVal:[F

.field public final mMatrixValEx:[F

.field protected final mMatrixValInh:[F

.field private mMoveDetect:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

.field private mMoveListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

.field private mMultiSelectListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;

.field private mNeedLayout:Z

.field mNeedRender:Z

.field public mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

.field private mPenSelectListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlPenSelectListener;

.field mPosChanged:Z

.field private mPosMaxUsed:I

.field private final mPosUsed:[Z

.field mPostDraw:Z

.field private mProjMatrixUpdate:Z

.field private mReqTexCoord:Z

.field private mReqTexCoordSub:Z

.field private mReuseObj:Z

.field protected mRoll:F

.field private mRotation:I

.field mRotationListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlRotateListener;

.field protected mRoundMode:I

.field protected mRoundRadius:F

.field protected mRoundVertexCnt:I

.field private mRounded:Z

.field protected mRoundedBorderColor:[F

.field protected mRoundedBorderVertexBuffer:Ljava/nio/FloatBuffer;

.field protected mRoundedBorderVertices:[F

.field protected mRoundedVertexBorderColorBuffer:Ljava/nio/FloatBuffer;

.field protected mRoundedVertexBuffer:Ljava/nio/FloatBuffer;

.field protected mRoundedVertices:[F

.field protected mScaleX:F

.field protected mScaleY:F

.field private mSecondaryClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlSecondaryClickListener;

.field private mSizeChanged:Z

.field public mState:I

.field private mSupportButtonShape:Z

.field protected mSupportRtl:Z

.field protected mTexCoordBuffer:Ljava/nio/FloatBuffer;

.field private mTexCoordBufferSub:Ljava/nio/FloatBuffer;

.field private final mTextCoordSub:Landroid/graphics/RectF;

.field private final mTextCoords:Landroid/graphics/RectF;

.field private final mThis:Lcom/sec/android/gallery3d/glcore/GlObject;

.field private mUseRotationGesture:Z

.field mVisible:Z

.field private mVisibleEx:I

.field public mWidth:F

.field protected mXlt:F

.field protected mXrb:F

.field protected mYlt:F

.field protected mYrb:F

.field private mZOrder:I

.field protected mx:F

.field protected my:F

.field protected mz:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x10

    new-array v0, v1, [F

    sput-object v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mProjViewMatrix:[F

    new-array v0, v1, [F

    sput-object v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMatrix:[F

    new-array v0, v1, [F

    sput-object v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mTempMatrix:[F

    const/16 v0, 0x8

    new-array v0, v0, [F

    sput-object v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mTexCoordArray:[F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/glcore/GlLayer;FF)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iput-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlView:Lcom/sec/android/gallery3d/glcore/GlView;

    iput-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlViewSub:Lcom/sec/android/gallery3d/glcore/GlView;

    iput-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iput-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvasSub:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iput-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    iput-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChild:[Lcom/sec/android/gallery3d/glcore/GlObject;

    iput v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    iput v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildMax:I

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mNeedLayout:Z

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mNeedRender:Z

    iput-boolean v9, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mVisible:Z

    iput-boolean v9, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCanvasSubVisibility:Z

    const/16 v3, 0xff

    iput v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mVisibleEx:I

    const/16 v3, 0xff

    iput v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCanvasSubFlags:I

    iput v9, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mState:I

    iput v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mZOrder:I

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mBorderRectChanged:Z

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mHoverEnter:Z

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPostDraw:Z

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mUseRotationGesture:Z

    iput v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMaxUsed:I

    iput v7, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mScaleX:F

    iput v7, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mScaleY:F

    iput v7, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAlpha:F

    const/4 v3, 0x5

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAlphaEx:[F

    const/4 v3, 0x5

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mDimEx:[F

    iput v7, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAlphaInh:F

    iput v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAlphaCnt:I

    iput v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mDimCnt:I

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mBorderVisible:Z

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mEmptyFill:Z

    iput v7, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mBorderWidth:F

    const/4 v3, -0x1

    iput v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mBorderColor:I

    const v3, -0x131314

    iput v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mEmptyFillColor:I

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mEmptyFillColor:I

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mEmptyFillRed:F

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mEmptyFillColor:I

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x8

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mEmptyFillGreen:F

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mEmptyFillColor:I

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mEmptyFillBlue:F

    iput v8, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoll:F

    const/16 v3, 0x10

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixVal:[F

    const/16 v3, 0x10

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixValInh:[F

    const/16 v3, 0x10

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixValEx:[F

    const/16 v3, 0x10

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixDisp:[F

    iput-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mBorderMatrix:[F

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mTextCoords:Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mTextCoordSub:Landroid/graphics/RectF;

    iput-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mBorderRect:Landroid/graphics/RectF;

    iput v7, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mDimFactor:F

    iput v7, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mColorR:F

    iput v7, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mColorG:F

    iput v7, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mColorB:F

    iput v7, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCanvasMixRatio:F

    iput v7, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCanvasMixSrc:F

    iput v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRotation:I

    iput-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMoveDetect:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    iput-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    iput-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mDragListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlDragListener;

    iput-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mLongClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlLongClickListener;

    iput-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMultiSelectListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;

    iput-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMoveListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    iput-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mHoverListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlHoverListener;

    iput-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRotationListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlRotateListener;

    iput-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    iput-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPenSelectListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlPenSelectListener;

    iput-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mSecondaryClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlSecondaryClickListener;

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mHoverActive:Z

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->isSideSyncDrag:Z

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRounded:Z

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCircle:Z

    iput v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundMode:I

    iput v8, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundRadius:F

    const/16 v3, 0x3c

    iput v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundVertexCnt:I

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mSizeChanged:Z

    iput-boolean v9, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mReuseObj:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAccessibilityIndex:I

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mSupportButtonShape:Z

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mSupportRtl:Z

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCanvasLock:Ljava/lang/Object;

    new-instance v3, Lcom/sec/android/gallery3d/glcore/GlObject$1;

    invoke-direct {v3, p0}, Lcom/sec/android/gallery3d/glcore/GlObject$1;-><init>(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    iput-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMDetectorListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

    new-instance v3, Lcom/sec/android/gallery3d/glcore/GlObject$2;

    invoke-direct {v3, p0}, Lcom/sec/android/gallery3d/glcore/GlObject$2;-><init>(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    iput-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMPenSelectDetectorListener:Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector$GlPenSelectDetectorListener;

    const/4 v1, 0x5

    iput-object p0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mThis:Lcom/sec/android/gallery3d/glcore/GlObject;

    iput p2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mWidth:F

    iput p3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mHeight:F

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    new-array v3, v1, [F

    iput-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCx:[F

    new-array v3, v1, [F

    iput-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCy:[F

    new-array v3, v1, [F

    iput-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCz:[F

    new-array v2, v1, [Z

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aput-boolean v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v8, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mx:F

    iput v8, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->my:F

    iput v8, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mz:F

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCx:[F

    aput v8, v3, v5

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCy:[F

    aput v8, v3, v5

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCz:[F

    aput v8, v3, v5

    aput-boolean v9, v2, v5

    iput-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosUsed:[Z

    iput v9, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMaxUsed:I

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosChanged:Z

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAlphaEx:[F

    aput v7, v3, v5

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mDimEx:[F

    aput v7, v3, v5

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mExtChanged:Z

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mProjMatrixUpdate:Z

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mReqTexCoord:Z

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mReqTexCoordSub:Z

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/sec/android/gallery3d/glcore/GlLayer;->addObject(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    iput-boolean v9, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosChanged:Z

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iput-boolean v9, v3, Lcom/sec/android/gallery3d/glcore/GlRootView;->mObjectZPosChanged:Z

    sget-object v3, Lcom/sec/android/gallery3d/glcore/TUtils;->sDefaultTexCoordBuffer:Ljava/nio/FloatBuffer;

    iput-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    iput-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mTexCoordBufferSub:Ljava/nio/FloatBuffer;

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMoveListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mThis:Lcom/sec/android/gallery3d/glcore/GlObject;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlSecondaryClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mSecondaryClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlSecondaryClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlLongClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mLongClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlLongClickListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/glcore/GlObject;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlObject;->onLongClicked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMultiSelectListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlPenSelectListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPenSelectListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlPenSelectListener;

    return-object v0
.end method

.method private onHover(III)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    const-string/jumbo v1, "GlObject"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Hover action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mHoverActive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mHoverActive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x9

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    if-ne p1, v1, :cond_3

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mHoverActive:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mHoverListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlHoverListener;

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mThis:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-interface {v1, v2, p2, p3}, Lcom/sec/android/gallery3d/glcore/GlObject$GlHoverListener;->onHoverEnter(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mHoverActive:Z

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mHoverListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlHoverListener;

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mThis:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-interface {v1, v2, p2, p3}, Lcom/sec/android/gallery3d/glcore/GlObject$GlHoverListener;->onHoverMove(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mHoverActive:Z

    goto :goto_0

    :cond_3
    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mHoverActive:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mHoverListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlHoverListener;

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mThis:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-interface {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlObject$GlHoverListener;->onHoverExit(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    :cond_4
    iput-boolean v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mHoverActive:Z

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mHoverEnter:Z

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onLongClicked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private onTouch(Landroid/view/MotionEvent;II)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlView:Lcom/sec/android/gallery3d/glcore/GlView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/glcore/GlView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-nez v1, :cond_1

    const-string/jumbo v1, "GlObject"

    const-string/jumbo v2, "mGlRoot is null in GlObject"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->getInstance(Lcom/sec/android/gallery3d/glcore/GlRootView;)Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMoveDetect:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMoveDetect:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMoveDetect:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMDetectorListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

    invoke-virtual {v1, p1, v2, p2, p3}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->onTouch(Landroid/view/MotionEvent;Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;II)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->getInstance(Lcom/sec/android/gallery3d/glcore/GlRootView;)Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMPenSelectDetectorListener:Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector$GlPenSelectDetectorListener;

    invoke-virtual {v1, p1, v2}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->onTouch(Landroid/view/MotionEvent;Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector$GlPenSelectDetectorListener;)Z

    move-result v1

    or-int/2addr v0, v1

    move v1, v0

    goto :goto_0
.end method

.method private setBorderRectMatrix()V
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mBorderRect:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->right:F

    iget v6, v2, Landroid/graphics/RectF;->left:F

    sub-float v3, v5, v6

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    iget v6, v2, Landroid/graphics/RectF;->top:F

    sub-float v4, v5, v6

    iget v5, v2, Landroid/graphics/RectF;->right:F

    iget v6, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v6

    div-float v0, v5, v8

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    iget v6, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v6

    div-float v1, v5, v8

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mBorderMatrix:[F

    if-nez v5, :cond_0

    const/16 v5, 0x20

    new-array v5, v5, [F

    iput-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mBorderMatrix:[F

    :cond_0
    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mBorderMatrix:[F

    invoke-static {v5, v7}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mBorderMatrix:[F

    const/4 v6, 0x0

    invoke-static {v5, v7, v0, v1, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mBorderMatrix:[F

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v7, v3, v4, v6}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method

.method private setCustomTexCoordBuffer(FF)V
    .locals 12

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mTextCoords:Landroid/graphics/RectF;

    iget-boolean v9, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRounded:Z

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundVertexCnt:I

    div-int/lit8 v9, v9, 0x3

    mul-int/lit8 v0, v9, 0x2

    new-array v6, v0, [F

    iget v9, v5, Landroid/graphics/RectF;->right:F

    iget v10, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v9, v10

    div-float v8, v9, p1

    iget v9, v5, Landroid/graphics/RectF;->bottom:F

    iget v10, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v10

    div-float v3, v9, p2

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float v7, v9, v8

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float v2, v9, v3

    :try_start_0
    iget v9, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRotation:I

    sparse-switch v9, :sswitch_data_0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    iget-object v9, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertices:[F

    div-int/lit8 v10, v4, 0x2

    mul-int/lit8 v10, v10, 0x3

    aget v9, v9, v10

    mul-float/2addr v9, v8

    aput v9, v6, v4

    aget v9, v6, v4

    iget v10, v5, Landroid/graphics/RectF;->left:F

    div-float/2addr v10, p1

    add-float/2addr v10, v7

    add-float/2addr v9, v10

    aput v9, v6, v4

    add-int/lit8 v9, v4, 0x1

    iget-object v10, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertices:[F

    div-int/lit8 v11, v4, 0x2

    mul-int/lit8 v11, v11, 0x3

    add-int/lit8 v11, v11, 0x1

    aget v10, v10, v11

    neg-float v10, v10

    mul-float/2addr v10, v3

    aput v10, v6, v9

    add-int/lit8 v9, v4, 0x1

    aget v10, v6, v9

    iget v11, v5, Landroid/graphics/RectF;->top:F

    div-float/2addr v11, p2

    add-float/2addr v11, v2

    add-float/2addr v10, v11

    aput v10, v6, v9

    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :sswitch_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    iget-object v9, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertices:[F

    div-int/lit8 v10, v4, 0x2

    mul-int/lit8 v10, v10, 0x3

    add-int/lit8 v10, v10, 0x1

    aget v9, v9, v10

    mul-float/2addr v9, v8

    aput v9, v6, v4

    aget v9, v6, v4

    iget v10, v5, Landroid/graphics/RectF;->left:F

    div-float/2addr v10, p1

    add-float/2addr v10, v7

    add-float/2addr v9, v10

    aput v9, v6, v4

    add-int/lit8 v9, v4, 0x1

    iget-object v10, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertices:[F

    div-int/lit8 v11, v4, 0x2

    mul-int/lit8 v11, v11, 0x3

    aget v10, v10, v11

    mul-float/2addr v10, v3

    aput v10, v6, v9

    add-int/lit8 v9, v4, 0x1

    aget v10, v6, v9

    iget v11, v5, Landroid/graphics/RectF;->top:F

    div-float/2addr v11, p2

    add-float/2addr v11, v2

    add-float/2addr v10, v11

    aput v10, v6, v9

    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    :sswitch_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_1

    iget-object v9, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertices:[F

    div-int/lit8 v10, v4, 0x2

    mul-int/lit8 v10, v10, 0x3

    aget v9, v9, v10

    neg-float v9, v9

    mul-float/2addr v9, v8

    aput v9, v6, v4

    aget v9, v6, v4

    iget v10, v5, Landroid/graphics/RectF;->left:F

    div-float/2addr v10, p1

    add-float/2addr v10, v7

    add-float/2addr v9, v10

    aput v9, v6, v4

    add-int/lit8 v9, v4, 0x1

    iget-object v10, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertices:[F

    div-int/lit8 v11, v4, 0x2

    mul-int/lit8 v11, v11, 0x3

    add-int/lit8 v11, v11, 0x1

    aget v10, v10, v11

    mul-float/2addr v10, v3

    aput v10, v6, v9

    add-int/lit8 v9, v4, 0x1

    aget v10, v6, v9

    iget v11, v5, Landroid/graphics/RectF;->top:F

    div-float/2addr v11, p2

    add-float/2addr v11, v2

    add-float/2addr v10, v11

    aput v10, v6, v9

    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    :sswitch_2
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v0, :cond_1

    iget-object v9, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertices:[F

    div-int/lit8 v10, v4, 0x2

    mul-int/lit8 v10, v10, 0x3

    add-int/lit8 v10, v10, 0x1

    aget v9, v9, v10

    neg-float v9, v9

    mul-float/2addr v9, v8

    aput v9, v6, v4

    aget v9, v6, v4

    iget v10, v5, Landroid/graphics/RectF;->left:F

    div-float/2addr v10, p1

    add-float/2addr v10, v7

    add-float/2addr v9, v10

    aput v9, v6, v4

    add-int/lit8 v9, v4, 0x1

    iget-object v10, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertices:[F

    div-int/lit8 v11, v4, 0x2

    mul-int/lit8 v11, v11, 0x3

    aget v10, v10, v11

    neg-float v10, v10

    mul-float/2addr v10, v3

    aput v10, v6, v9

    add-int/lit8 v9, v4, 0x1

    aget v10, v6, v9

    iget v11, v5, Landroid/graphics/RectF;->top:F

    div-float/2addr v11, p2

    add-float/2addr v11, v2

    add-float/2addr v10, v11

    aput v10, v6, v9
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x2

    goto :goto_3

    :catch_0
    move-exception v1

    const-string/jumbo v9, "GlObject"

    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void

    :cond_0
    sget-object v6, Lcom/sec/android/gallery3d/glcore/GlObject;->mTexCoordArray:[F

    iget v9, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRotation:I

    sparse-switch v9, :sswitch_data_1

    const/4 v9, 0x0

    iget v10, v5, Landroid/graphics/RectF;->left:F

    div-float/2addr v10, p1

    aput v10, v6, v9

    const/4 v9, 0x1

    iget v10, v5, Landroid/graphics/RectF;->top:F

    div-float/2addr v10, p2

    aput v10, v6, v9

    const/4 v9, 0x2

    iget v10, v5, Landroid/graphics/RectF;->right:F

    div-float/2addr v10, p1

    aput v10, v6, v9

    const/4 v9, 0x3

    iget v10, v5, Landroid/graphics/RectF;->top:F

    div-float/2addr v10, p2

    aput v10, v6, v9

    const/4 v9, 0x4

    iget v10, v5, Landroid/graphics/RectF;->right:F

    div-float/2addr v10, p1

    aput v10, v6, v9

    const/4 v9, 0x5

    iget v10, v5, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v10, p2

    aput v10, v6, v9

    const/4 v9, 0x6

    iget v10, v5, Landroid/graphics/RectF;->left:F

    div-float/2addr v10, p1

    aput v10, v6, v9

    const/4 v9, 0x7

    iget v10, v5, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v10, p2

    aput v10, v6, v9

    :cond_1
    :goto_5
    iget-boolean v9, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mSizeChanged:Z

    if-eqz v9, :cond_3

    iget-boolean v9, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRounded:Z

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v9}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v9

    array-length v10, v6

    if-eq v9, v10, :cond_2

    invoke-static {v6}, Lcom/sec/android/gallery3d/glcore/TUtils;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    :cond_2
    iget-object v9, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v9}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v9, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v9, v6}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v9, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_4

    :sswitch_3
    const/4 v9, 0x0

    iget v10, v5, Landroid/graphics/RectF;->right:F

    div-float/2addr v10, p1

    aput v10, v6, v9

    const/4 v9, 0x1

    iget v10, v5, Landroid/graphics/RectF;->top:F

    div-float/2addr v10, p2

    aput v10, v6, v9

    const/4 v9, 0x2

    iget v10, v5, Landroid/graphics/RectF;->right:F

    div-float/2addr v10, p1

    aput v10, v6, v9

    const/4 v9, 0x3

    iget v10, v5, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v10, p2

    aput v10, v6, v9

    const/4 v9, 0x4

    iget v10, v5, Landroid/graphics/RectF;->left:F

    div-float/2addr v10, p1

    aput v10, v6, v9

    const/4 v9, 0x5

    iget v10, v5, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v10, p2

    aput v10, v6, v9

    const/4 v9, 0x6

    iget v10, v5, Landroid/graphics/RectF;->left:F

    div-float/2addr v10, p1

    aput v10, v6, v9

    const/4 v9, 0x7

    iget v10, v5, Landroid/graphics/RectF;->top:F

    div-float/2addr v10, p2

    aput v10, v6, v9

    goto :goto_5

    :sswitch_4
    const/4 v9, 0x0

    iget v10, v5, Landroid/graphics/RectF;->right:F

    div-float/2addr v10, p1

    aput v10, v6, v9

    const/4 v9, 0x1

    iget v10, v5, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v10, p2

    aput v10, v6, v9

    const/4 v9, 0x2

    iget v10, v5, Landroid/graphics/RectF;->left:F

    div-float/2addr v10, p1

    aput v10, v6, v9

    const/4 v9, 0x3

    iget v10, v5, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v10, p2

    aput v10, v6, v9

    const/4 v9, 0x4

    iget v10, v5, Landroid/graphics/RectF;->left:F

    div-float/2addr v10, p1

    aput v10, v6, v9

    const/4 v9, 0x5

    iget v10, v5, Landroid/graphics/RectF;->top:F

    div-float/2addr v10, p2

    aput v10, v6, v9

    const/4 v9, 0x6

    iget v10, v5, Landroid/graphics/RectF;->right:F

    div-float/2addr v10, p1

    aput v10, v6, v9

    const/4 v9, 0x7

    iget v10, v5, Landroid/graphics/RectF;->top:F

    div-float/2addr v10, p2

    aput v10, v6, v9

    goto/16 :goto_5

    :sswitch_5
    const/4 v9, 0x0

    iget v10, v5, Landroid/graphics/RectF;->left:F

    div-float/2addr v10, p1

    aput v10, v6, v9

    const/4 v9, 0x1

    iget v10, v5, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v10, p2

    aput v10, v6, v9

    const/4 v9, 0x2

    iget v10, v5, Landroid/graphics/RectF;->left:F

    div-float/2addr v10, p1

    aput v10, v6, v9

    const/4 v9, 0x3

    iget v10, v5, Landroid/graphics/RectF;->top:F

    div-float/2addr v10, p2

    aput v10, v6, v9

    const/4 v9, 0x4

    iget v10, v5, Landroid/graphics/RectF;->right:F

    div-float/2addr v10, p1

    aput v10, v6, v9

    const/4 v9, 0x5

    iget v10, v5, Landroid/graphics/RectF;->top:F

    div-float/2addr v10, p2

    aput v10, v6, v9

    const/4 v9, 0x6

    iget v10, v5, Landroid/graphics/RectF;->right:F

    div-float/2addr v10, p1

    aput v10, v6, v9

    const/4 v9, 0x7

    iget v10, v5, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v10, p2

    aput v10, v6, v9

    goto/16 :goto_5

    :cond_3
    invoke-static {v6}, Lcom/sec/android/gallery3d/glcore/TUtils;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    goto/16 :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x5a -> :sswitch_3
        0xb4 -> :sswitch_4
        0x10e -> :sswitch_5
    .end sparse-switch
.end method

.method private setCustomTexCoordBufferForSubCanvas(FF)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mTextCoordSub:Landroid/graphics/RectF;

    sget-object v1, Lcom/sec/android/gallery3d/glcore/GlObject;->mTexCoordArray:[F

    const/4 v2, 0x0

    iget v3, v0, Landroid/graphics/RectF;->left:F

    div-float/2addr v3, p1

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, v0, Landroid/graphics/RectF;->top:F

    div-float/2addr v3, p2

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, v0, Landroid/graphics/RectF;->right:F

    div-float/2addr v3, p1

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    div-float/2addr v3, p2

    aput v3, v1, v2

    const/4 v2, 0x4

    iget v3, v0, Landroid/graphics/RectF;->right:F

    div-float/2addr v3, p1

    aput v3, v1, v2

    const/4 v2, 0x5

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v3, p2

    aput v3, v1, v2

    const/4 v2, 0x6

    iget v3, v0, Landroid/graphics/RectF;->left:F

    div-float/2addr v3, p1

    aput v3, v1, v2

    const/4 v2, 0x7

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v3, p2

    aput v3, v1, v2

    invoke-static {v1}, Lcom/sec/android/gallery3d/glcore/TUtils;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mTexCoordBufferSub:Ljava/nio/FloatBuffer;

    return-void
.end method

.method private updateButtonShapeView()V
    .locals 6

    const v5, 0xfffffff

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v1, v5}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v1, v1, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v1, v1, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContext:Landroid/content/Context;

    const v2, 0x7f020119

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mButtonShapePadding:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mButtonShapePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mButtonShapePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mButtonShapePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mButtonShapePadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setPaddings(IIII)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v1, v0, v5}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I
    .locals 7

    const/16 v5, 0x8

    const/4 v6, 0x0

    iget-object v2, p1, Lcom/sec/android/gallery3d/glcore/GlObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/glcore/GlObject;->removeChild(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    :cond_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChild:[Lcom/sec/android/gallery3d/glcore/GlObject;

    if-nez v4, :cond_1

    new-array v4, v5, [Lcom/sec/android/gallery3d/glcore/GlObject;

    iput-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChild:[Lcom/sec/android/gallery3d/glcore/GlObject;

    iput v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildMax:I

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChild:[Lcom/sec/android/gallery3d/glcore/GlObject;

    aput-object p1, v4, v0

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    iput-object p0, p1, Lcom/sec/android/gallery3d/glcore/GlObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    return v0

    :cond_1
    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildMax:I

    if-lt v4, v5, :cond_2

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildMax:I

    int-to-float v4, v4

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v5

    float-to-int v1, v4

    new-array v3, v1, [Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChild:[Lcom/sec/android/gallery3d/glcore/GlObject;

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildMax:I

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChild:[Lcom/sec/android/gallery3d/glcore/GlObject;

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildMax:I

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildMax:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    goto :goto_0
.end method

.method public addPos(II)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCx:[F

    aget v1, v1, p1

    cmpl-float v1, v1, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCy:[F

    aget v1, v1, p1

    cmpl-float v1, v1, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCz:[F

    aget v1, v1, p1

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCx:[F

    aget v2, v1, p2

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCx:[F

    aget v3, v3, p1

    add-float/2addr v2, v3

    aput v2, v1, p2

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCy:[F

    aget v2, v1, p2

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCy:[F

    aget v3, v3, p1

    add-float/2addr v2, v3

    aput v2, v1, p2

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCz:[F

    aget v2, v1, p2

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCz:[F

    aget v3, v3, p1

    add-float/2addr v2, v3

    aput v2, v1, p2

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCz:[F

    aget v1, v1, p1

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosChanged:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-boolean v2, v1, Lcom/sec/android/gallery3d/glcore/GlRootView;->mObjectZPosChanged:Z

    or-int/2addr v2, v0

    iput-boolean v2, v1, Lcom/sec/android/gallery3d/glcore/GlRootView;->mObjectZPosChanged:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-boolean v1, v1, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderRequested:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    :cond_2
    return-void
.end method

.method public checkPosIn(I)Z
    .locals 13

    const/4 v9, 0x1

    const/4 v12, 0x0

    const/16 v11, 0xf

    const/16 v10, 0xd

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mProjMatrixUpdate:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getGlConfig()Lcom/sec/android/gallery3d/glcore/GlConfig;

    move-result-object v6

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mProjViewMatrix:[F

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/glcore/GlConfig;->getProspectMatrix()[F

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixDisp:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v7, 0x0

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMatrix:[F

    const/16 v2, 0xc

    sget-object v3, Lcom/sec/android/gallery3d/glcore/TUtils;->vertices:[F

    aget v3, v3, v1

    aput v3, v0, v2

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMatrix:[F

    sget-object v2, Lcom/sec/android/gallery3d/glcore/TUtils;->vertices:[F

    aget v2, v2, v9

    aput v2, v0, v10

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMatrix:[F

    const/16 v2, 0xe

    sget-object v3, Lcom/sec/android/gallery3d/glcore/TUtils;->vertices:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    aput v3, v0, v2

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mTempMatrix:[F

    sget-object v2, Lcom/sec/android/gallery3d/glcore/GlObject;->mProjViewMatrix:[F

    sget-object v4, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mTempMatrix:[F

    aget v0, v0, v11

    cmpl-float v0, v0, v12

    if-eqz v0, :cond_0

    iget v0, v6, Lcom/sec/android/gallery3d/glcore/GlConfig;->mHalfHeight:F

    iget v2, v6, Lcom/sec/android/gallery3d/glcore/GlConfig;->mHalfHeight:F

    sget-object v3, Lcom/sec/android/gallery3d/glcore/GlObject;->mTempMatrix:[F

    aget v3, v3, v10

    mul-float/2addr v2, v3

    sget-object v3, Lcom/sec/android/gallery3d/glcore/GlObject;->mTempMatrix:[F

    aget v3, v3, v11

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYlt:F

    const/4 v7, 0x2

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMatrix:[F

    const/16 v2, 0xc

    sget-object v3, Lcom/sec/android/gallery3d/glcore/TUtils;->vertices:[F

    const/4 v4, 0x6

    aget v3, v3, v4

    aput v3, v0, v2

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMatrix:[F

    sget-object v2, Lcom/sec/android/gallery3d/glcore/TUtils;->vertices:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    aput v2, v0, v10

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMatrix:[F

    const/16 v2, 0xe

    sget-object v3, Lcom/sec/android/gallery3d/glcore/TUtils;->vertices:[F

    const/16 v4, 0x8

    aget v3, v3, v4

    aput v3, v0, v2

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mTempMatrix:[F

    sget-object v2, Lcom/sec/android/gallery3d/glcore/GlObject;->mProjViewMatrix:[F

    sget-object v4, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mTempMatrix:[F

    aget v0, v0, v11

    cmpl-float v0, v0, v12

    if-eqz v0, :cond_0

    iget v0, v6, Lcom/sec/android/gallery3d/glcore/GlConfig;->mHalfHeight:F

    iget v2, v6, Lcom/sec/android/gallery3d/glcore/GlConfig;->mHalfHeight:F

    sget-object v3, Lcom/sec/android/gallery3d/glcore/GlObject;->mTempMatrix:[F

    aget v3, v3, v10

    mul-float/2addr v2, v3

    sget-object v3, Lcom/sec/android/gallery3d/glcore/GlObject;->mTempMatrix:[F

    aget v3, v3, v11

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYrb:F

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYlt:F

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYrb:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    iget v8, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYlt:F

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYrb:F

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYlt:F

    iput v8, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYrb:F

    :cond_2
    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYlt:F

    int-to-float v2, p1

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    int-to-float v0, p1

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYrb:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    move v1, v9

    goto/16 :goto_0
.end method

.method public checkPosIn(II)Z
    .locals 13

    const/4 v12, 0x0

    const/16 v11, 0xd

    const/16 v10, 0xc

    const/16 v9, 0xf

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mProjMatrixUpdate:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getGlConfig()Lcom/sec/android/gallery3d/glcore/GlConfig;

    move-result-object v6

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mProjViewMatrix:[F

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/glcore/GlConfig;->getProspectMatrix()[F

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixDisp:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v7, 0x0

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMatrix:[F

    sget-object v2, Lcom/sec/android/gallery3d/glcore/TUtils;->vertices:[F

    aget v2, v2, v1

    aput v2, v0, v10

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMatrix:[F

    sget-object v2, Lcom/sec/android/gallery3d/glcore/TUtils;->vertices:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    aput v2, v0, v11

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMatrix:[F

    const/16 v2, 0xe

    sget-object v3, Lcom/sec/android/gallery3d/glcore/TUtils;->vertices:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    aput v3, v0, v2

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mTempMatrix:[F

    sget-object v2, Lcom/sec/android/gallery3d/glcore/GlObject;->mProjViewMatrix:[F

    sget-object v4, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mTempMatrix:[F

    aget v0, v0, v9

    cmpl-float v0, v0, v12

    if-eqz v0, :cond_0

    iget v0, v6, Lcom/sec/android/gallery3d/glcore/GlConfig;->mHalfWidth:F

    iget v2, v6, Lcom/sec/android/gallery3d/glcore/GlConfig;->mHalfWidth:F

    sget-object v3, Lcom/sec/android/gallery3d/glcore/GlObject;->mTempMatrix:[F

    aget v3, v3, v10

    mul-float/2addr v2, v3

    sget-object v3, Lcom/sec/android/gallery3d/glcore/GlObject;->mTempMatrix:[F

    aget v3, v3, v9

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mXlt:F

    iget v0, v6, Lcom/sec/android/gallery3d/glcore/GlConfig;->mHalfHeight:F

    iget v2, v6, Lcom/sec/android/gallery3d/glcore/GlConfig;->mHalfHeight:F

    sget-object v3, Lcom/sec/android/gallery3d/glcore/GlObject;->mTempMatrix:[F

    aget v3, v3, v11

    mul-float/2addr v2, v3

    sget-object v3, Lcom/sec/android/gallery3d/glcore/GlObject;->mTempMatrix:[F

    aget v3, v3, v9

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYlt:F

    const/4 v7, 0x2

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMatrix:[F

    sget-object v2, Lcom/sec/android/gallery3d/glcore/TUtils;->vertices:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    aput v2, v0, v10

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMatrix:[F

    sget-object v2, Lcom/sec/android/gallery3d/glcore/TUtils;->vertices:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    aput v2, v0, v11

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMatrix:[F

    const/16 v2, 0xe

    sget-object v3, Lcom/sec/android/gallery3d/glcore/TUtils;->vertices:[F

    const/16 v4, 0x8

    aget v3, v3, v4

    aput v3, v0, v2

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mTempMatrix:[F

    sget-object v2, Lcom/sec/android/gallery3d/glcore/GlObject;->mProjViewMatrix:[F

    sget-object v4, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mTempMatrix:[F

    aget v0, v0, v9

    cmpl-float v0, v0, v12

    if-eqz v0, :cond_0

    iget v0, v6, Lcom/sec/android/gallery3d/glcore/GlConfig;->mHalfWidth:F

    iget v2, v6, Lcom/sec/android/gallery3d/glcore/GlConfig;->mHalfWidth:F

    sget-object v3, Lcom/sec/android/gallery3d/glcore/GlObject;->mTempMatrix:[F

    aget v3, v3, v10

    mul-float/2addr v2, v3

    sget-object v3, Lcom/sec/android/gallery3d/glcore/GlObject;->mTempMatrix:[F

    aget v3, v3, v9

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mXrb:F

    iget v0, v6, Lcom/sec/android/gallery3d/glcore/GlConfig;->mHalfHeight:F

    iget v2, v6, Lcom/sec/android/gallery3d/glcore/GlConfig;->mHalfHeight:F

    sget-object v3, Lcom/sec/android/gallery3d/glcore/GlObject;->mTempMatrix:[F

    aget v3, v3, v11

    mul-float/2addr v2, v3

    sget-object v3, Lcom/sec/android/gallery3d/glcore/GlObject;->mTempMatrix:[F

    aget v3, v3, v9

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYrb:F

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mXlt:F

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mXrb:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    iget v8, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mXlt:F

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mXrb:F

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mXlt:F

    iput v8, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mXrb:F

    :cond_2
    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYlt:F

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYrb:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    iget v8, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYlt:F

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYrb:F

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYlt:F

    iput v8, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYrb:F

    :cond_3
    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mXlt:F

    int-to-float v2, p1

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    int-to-float v0, p1

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mXrb:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYlt:F

    int-to-float v2, p2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    int-to-float v0, p2

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYrb:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public clearHoveringState()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mHoverActive:Z

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mHoverEnter:Z

    return-void
.end method

.method dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 8

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    :try_start_0
    invoke-virtual {p0, v4, v5}, Lcom/sec/android/gallery3d/glcore/GlObject;->checkPosIn(II)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v6

    const-string/jumbo v7, "startSideSyncDrag"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->isSideSyncDrag:Z

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mDragListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlDragListener;

    iget-object v7, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mThis:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-interface {v6, v7}, Lcom/sec/android/gallery3d/glcore/GlObject$GlDragListener;->onDrop(Lcom/sec/android/gallery3d/glcore/GlObject;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :cond_0
    move v6, v3

    :goto_0
    return v6

    :catch_0
    move-exception v2

    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/16 v7, 0xa

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mHoverListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlHoverListener;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->checkPosIn(II)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "GlObject"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DispathcHoverEvent Enter : Action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " mHoverEnter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mHoverEnter:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    iget-boolean v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mHoverEnter:Z

    if-eqz v4, :cond_0

    invoke-direct {p0, v7, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->onHover(III)Z

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mHoverEnter:Z

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mXlt:F

    neg-float v4, v4

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYlt:F

    neg-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-direct {p0, v0, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->onHover(III)Z

    move-result v1

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mXlt:F

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYlt:F

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_0

    :cond_3
    iget-boolean v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mHoverEnter:Z

    if-eqz v4, :cond_0

    invoke-direct {p0, v7, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->onHover(III)Z

    goto :goto_0
.end method

.method dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v4, 0x3e8

    if-eq v0, v4, :cond_0

    const/16 v4, 0x3ea

    if-eq v0, v4, :cond_0

    const/16 v4, 0x3eb

    if-ne v0, v4, :cond_2

    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->checkPosIn(II)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mXlt:F

    neg-float v4, v4

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYlt:F

    neg-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-direct {p0, p1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->onTouch(Landroid/view/MotionEvent;II)Z

    move-result v1

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mXlt:F

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYlt:F

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    sget v4, Lcom/sec/samsung/gallery/lib/factory/MotionEventWrapper;->ACTION_PEN_DOWN:I

    if-eq v0, v4, :cond_3

    sget v4, Lcom/sec/samsung/gallery/lib/factory/MotionEventWrapper;->ACTION_PEN_UP:I

    if-eq v0, v4, :cond_3

    sget v4, Lcom/sec/samsung/gallery/lib/factory/MotionEventWrapper;->ACTION_PEN_MOVE:I

    if-ne v0, v4, :cond_4

    :cond_3
    invoke-direct {p0, p1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->onTouch(Landroid/view/MotionEvent;II)Z

    move-result v1

    goto :goto_0

    :cond_4
    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mXlt:F

    neg-float v4, v4

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYlt:F

    neg-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-direct {p0, p1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->onTouch(Landroid/view/MotionEvent;II)Z

    move-result v1

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mXlt:F

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYlt:F

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_0
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL11;ZZ)V
    .locals 12

    if-eqz p2, :cond_4

    iget-object v11, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mExtChanged:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mExtChanged:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixVal:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixVal:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mx:F

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->my:F

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mz:F

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoll:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixVal:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoll:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mScaleX:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mScaleY:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixVal:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mScaleX:F

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mScaleY:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixVal:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixValInh:[F

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixVal:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mWidth:F

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mHeight:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :cond_3
    if-eqz v11, :cond_5

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixDisp:[F

    const/4 v1, 0x0

    iget-object v2, v11, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixValEx:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixVal:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixValEx:[F

    const/4 v1, 0x0

    iget-object v2, v11, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixValEx:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixValInh:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget v0, v11, Lcom/sec/android/gallery3d/glcore/GlObject;->mAlphaInh:F

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAlpha:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAlphaInh:F

    :cond_4
    :goto_0
    if-eqz p3, :cond_14

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_14

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mHeight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    if-eqz v0, :cond_14

    iget-object v7, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v8, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvasSub:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    const/4 v9, 0x0

    :goto_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixDisp:[F

    array-length v0, v0

    if-ge v9, v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixDisp:[F

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixDisp:[F

    aget v1, v1, v9

    sget v2, Lcom/sec/android/gallery3d/glcore/TUtils;->PRECISION_INT:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    sget v2, Lcom/sec/android/gallery3d/glcore/TUtils;->PRECISION_FLOAT:F

    div-float/2addr v1, v2

    aput v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixVal:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixDisp:[F

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixValInh:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixValEx:[F

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAlpha:F

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAlphaInh:F

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixDisp:[F

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    if-eqz v7, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mEmptyFill:Z

    if-eqz v0, :cond_13

    :cond_7
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlState;->getBlendType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlState;->setBlendType(I)V

    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    :cond_8
    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mEmptyFillRed:F

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mEmptyFillGreen:F

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mEmptyFillBlue:F

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAlphaInh:F

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRounded:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertices:[F

    if-nez v0, :cond_f

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundVertexCnt:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertices:[F

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCircle:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertices:[F

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundVertexCnt:I

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundMode:I

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/TUtils;->calcRoundedVertex([FIIF)V

    :goto_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertices:[F

    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/TUtils;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertexBuffer:Ljava/nio/FloatBuffer;

    :cond_9
    :goto_3
    const/4 v0, 0x3

    const/16 v1, 0x1406

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlState;->setRectVertex(Z)V

    :cond_a
    :goto_4
    const/4 v1, 0x6

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRounded:Z

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundVertexCnt:I

    div-int/lit8 v0, v0, 0x3

    :goto_5
    invoke-interface {p1, v1, v2, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    :cond_b
    :goto_6
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mBorderVisible:Z

    if-eqz v0, :cond_14

    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlState;->getBlendType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlState;->setBlendType(I)V

    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    :cond_c
    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mBorderColor:I

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mBorderColor:I

    const v2, 0xff00

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mBorderColor:I

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAlphaInh:F

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mBorderRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mBorderRectChanged:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mBorderRectChanged:Z

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlObject;->setBorderRectMatrix()V

    :cond_d
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mBorderMatrix:[F

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixDisp:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mBorderMatrix:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/4 v9, 0x0

    :goto_7
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mBorderMatrix:[F

    array-length v0, v0

    if-ge v9, v0, :cond_21

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mBorderMatrix:[F

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mBorderMatrix:[F

    aget v1, v1, v9

    sget v2, Lcom/sec/android/gallery3d/glcore/TUtils;->PRECISION_INT:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    sget v2, Lcom/sec/android/gallery3d/glcore/TUtils;->PRECISION_FLOAT:F

    div-float/2addr v1, v2

    aput v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_e
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertices:[F

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundVertexCnt:I

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundMode:I

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundRadius:F

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mWidth:F

    div-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mHeight:F

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mWidth:F

    div-float/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/TUtils;->calcRoundedVertex([FIIFF)V

    goto/16 :goto_2

    :cond_f
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mSizeChanged:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mSizeChanged:Z

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCircle:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertices:[F

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundVertexCnt:I

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundMode:I

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/TUtils;->calcRoundedVertex([FIIF)V

    :goto_8
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertices:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_3

    :cond_10
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertices:[F

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundVertexCnt:I

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundMode:I

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundRadius:F

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mWidth:F

    div-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mHeight:F

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mWidth:F

    div-float/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/TUtils;->calcRoundedVertex([FIIFF)V

    goto :goto_8

    :cond_11
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlState;->isRectVertex()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x3

    const/16 v1, 0x1406

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/gallery3d/glcore/TUtils;->sDefaultVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlState;->setRectVertex(Z)V

    goto/16 :goto_4

    :cond_12
    const/4 v0, 0x4

    goto/16 :goto_5

    :cond_13
    iget v0, v7, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mASyncRenderState:I

    if-eqz v0, :cond_15

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/glcore/GlObject;->onAsyncRender(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_14
    :goto_9
    return-void

    :cond_15
    invoke-virtual {p0, p1, v7}, Lcom/sec/android/gallery3d/glcore/GlObject;->onRender(Ljavax/microedition/khronos/opengles/GL11;Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlState;->getBlendType()I

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlState;->setBlendType(I)V

    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    :cond_16
    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAlphaInh:F

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mDimFactor:F

    mul-float v6, v0, v1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCanvasMixSrc:F

    mul-float v10, v6, v0

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mColorR:F

    mul-float/2addr v0, v10

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mColorG:F

    mul-float/2addr v1, v10

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mColorB:F

    mul-float/2addr v2, v10

    invoke-interface {p1, v0, v1, v2, v10}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    const/16 v0, 0xde1

    iget v1, v7, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mTextureId:I

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRounded:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertices:[F

    if-nez v0, :cond_1d

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundVertexCnt:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertices:[F

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertices:[F

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundVertexCnt:I

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundMode:I

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundRadius:F

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mWidth:F

    div-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mHeight:F

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mWidth:F

    div-float/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/TUtils;->calcRoundedVertex([FIIFF)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertices:[F

    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/TUtils;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertexBuffer:Ljava/nio/FloatBuffer;

    :cond_17
    :goto_a
    const/4 v0, 0x3

    const/16 v1, 0x1406

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlState;->setRectVertex(Z)V

    :cond_18
    :goto_b
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mReqTexCoord:Z

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mReqTexCoord:Z

    iget v0, v7, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mWidth:I

    int-to-float v0, v0

    iget v1, v7, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mHeight:I

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setCustomTexCoordBuffer(FF)V

    :cond_19
    :goto_c
    const/4 v0, 0x2

    const/16 v1, 0x1406

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    const/4 v1, 0x6

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRounded:Z

    if-eqz v0, :cond_20

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundVertexCnt:I

    div-int/lit8 v0, v0, 0x3

    :goto_d
    invoke-interface {p1, v1, v2, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    if-eqz v8, :cond_b

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCanvasSubVisibility:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCanvasMixRatio:F

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCanvasMixSrc:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1a

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCanvasMixRatio:F

    mul-float v10, v6, v0

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mColorR:F

    mul-float/2addr v0, v10

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mColorG:F

    mul-float/2addr v1, v10

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mColorB:F

    mul-float/2addr v2, v10

    invoke-interface {p1, v0, v1, v2, v10}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    :cond_1a
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlState;->isRectVertex()Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x3

    const/16 v1, 0x1406

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/gallery3d/glcore/TUtils;->sDefaultVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlState;->setRectVertex(Z)V

    :cond_1b
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mReqTexCoordSub:Z

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mReqTexCoordSub:Z

    iget v0, v8, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mWidth:I

    int-to-float v0, v0

    iget v1, v8, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mHeight:I

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setCustomTexCoordBufferForSubCanvas(FF)V

    :cond_1c
    const/4 v0, 0x2

    const/16 v1, 0x1406

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mTexCoordBufferSub:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    const/16 v0, 0xde1

    iget v1, v8, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mTextureId:I

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    goto/16 :goto_6

    :cond_1d
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mSizeChanged:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertices:[F

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundVertexCnt:I

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundMode:I

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundRadius:F

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mWidth:F

    div-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mHeight:F

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mWidth:F

    div-float/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/TUtils;->calcRoundedVertex([FIIFF)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertices:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_a

    :cond_1e
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlState;->isRectVertex()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x3

    const/16 v1, 0x1406

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/gallery3d/glcore/TUtils;->sDefaultVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlState;->setRectVertex(Z)V

    goto/16 :goto_b

    :cond_1f
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRounded:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mSizeChanged:Z

    if-eqz v0, :cond_19

    iget v0, v7, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mWidth:I

    int-to-float v0, v0

    iget v1, v7, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mHeight:I

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setCustomTexCoordBuffer(FF)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mSizeChanged:Z

    goto/16 :goto_c

    :cond_20
    const/4 v0, 0x4

    goto/16 :goto_d

    :cond_21
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mBorderMatrix:[F

    const/16 v1, 0x10

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    :cond_22
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlState;->getBorderWidth()F

    move-result v0

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mBorderWidth:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mBorderWidth:F

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlState;->setBorderWidth(F)V

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mBorderWidth:F

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glLineWidth(F)V

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mBorderWidth:F

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glPointSize(F)V

    :cond_23
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRounded:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertices:[F

    if-nez v0, :cond_27

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundVertexCnt:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertices:[F

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertices:[F

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundVertexCnt:I

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundMode:I

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundRadius:F

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mWidth:F

    div-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mHeight:F

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mWidth:F

    div-float/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/TUtils;->calcRoundedVertex([FIIFF)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertices:[F

    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/TUtils;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertexBuffer:Ljava/nio/FloatBuffer;

    :cond_24
    :goto_e
    const/4 v0, 0x3

    const/16 v1, 0x1406

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlState;->setRectVertex(Z)V

    :cond_25
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRounded:Z

    if-nez v0, :cond_26

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    :cond_26
    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRounded:Z

    if-eqz v0, :cond_28

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundVertexCnt:I

    div-int/lit8 v0, v0, 0x3

    :goto_f
    invoke-interface {p1, v1, v2, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    goto/16 :goto_9

    :cond_27
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mSizeChanged:Z

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mSizeChanged:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertices:[F

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundVertexCnt:I

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundMode:I

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundRadius:F

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mWidth:F

    div-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mHeight:F

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mWidth:F

    div-float/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/TUtils;->calcRoundedVertex([FIIFF)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertices:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundedVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_e

    :cond_28
    const/4 v0, 0x4

    goto :goto_f
.end method

.method public getAbsX()F
    .locals 5

    move-object v1, p0

    const/4 v2, 0x0

    :cond_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v4, v4, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eq v1, v4, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget v4, v1, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMaxUsed:I

    if-ge v0, v4, :cond_2

    iget-object v4, v1, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosUsed:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/sec/android/gallery3d/glcore/GlObject;->mCx:[F

    aget v4, v4, v0

    add-float/2addr v2, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, v1, Lcom/sec/android/gallery3d/glcore/GlObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-nez v1, :cond_0

    move v3, v2

    :goto_1
    return v3

    :cond_3
    move v3, v2

    goto :goto_1
.end method

.method public getAbsY()F
    .locals 5

    move-object v1, p0

    const/4 v2, 0x0

    :cond_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v4, v4, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eq v1, v4, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget v4, v1, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMaxUsed:I

    if-ge v0, v4, :cond_2

    iget-object v4, v1, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosUsed:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/sec/android/gallery3d/glcore/GlObject;->mCy:[F

    aget v4, v4, v0

    add-float/2addr v2, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, v1, Lcom/sec/android/gallery3d/glcore/GlObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-nez v1, :cond_0

    move v3, v2

    :goto_1
    return v3

    :cond_3
    move v3, v2

    goto :goto_1
.end method

.method public getAbsZ()F
    .locals 5

    move-object v1, p0

    const/4 v2, 0x0

    :cond_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v4, v4, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eq v1, v4, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget v4, v1, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMaxUsed:I

    if-ge v0, v4, :cond_2

    iget-object v4, v1, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosUsed:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/sec/android/gallery3d/glcore/GlObject;->mCz:[F

    aget v4, v4, v0

    add-float/2addr v2, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, v1, Lcom/sec/android/gallery3d/glcore/GlObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-nez v1, :cond_0

    move v3, v2

    :goto_1
    return v3

    :cond_3
    move v3, v2

    goto :goto_1
.end method

.method public getAllChildObject()[Lcom/sec/android/gallery3d/glcore/GlObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChild:[Lcom/sec/android/gallery3d/glcore/GlObject;

    return-object v0
.end method

.method public getAlpha()F
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAlpha:F

    return v0
.end method

.method protected getAlphaHnd()I
    .locals 4

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAlphaCnt:I

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAlphaEx:[F

    aget v1, v1, v0

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAlphaCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAlphaCnt:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAlphaEx:[F

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAlphaCnt:I

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAlphaCnt:I

    goto :goto_1
.end method

.method public getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    return-object v0
.end method

.method protected getCanvasSub()Lcom/sec/android/gallery3d/glcore/GlCanvas;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvasSub:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    return-object v0
.end method

.method public getCenterX()F
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mXlt:F

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mXrb:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mXlt:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getCenterY()F
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYlt:F

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYrb:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYlt:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getChildCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    return v0
.end method

.method public getClickListener()Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    return-object v0
.end method

.method public getDX(I)F
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMaxUsed:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosUsed:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCx:[F

    aget v0, v0, p1

    goto :goto_0
.end method

.method public getDY(I)F
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMaxUsed:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosUsed:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCy:[F

    aget v0, v0, p1

    goto :goto_0
.end method

.method public getDZ(I)F
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMaxUsed:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosUsed:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCz:[F

    aget v0, v0, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDim()F
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mDimFactor:F

    return v0
.end method

.method protected getDim(I)F
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mDimCnt:I

    if-le p1, v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mDimEx:[F

    aget v0, v0, p1

    goto :goto_0
.end method

.method protected getDimHnd()I
    .locals 4

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mDimCnt:I

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mDimEx:[F

    aget v1, v1, v0

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mDimCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mDimCnt:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mDimEx:[F

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mDimCnt:I

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mDimCnt:I

    goto :goto_1
.end method

.method public getGlObjectRect(Landroid/graphics/Rect;)V
    .locals 13

    const/4 v12, 0x0

    const/16 v11, 0xd

    const/16 v10, 0xc

    const/16 v9, 0xf

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mProjMatrixUpdate:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getGlConfig()Lcom/sec/android/gallery3d/glcore/GlConfig;

    move-result-object v6

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mProjViewMatrix:[F

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/glcore/GlConfig;->getProspectMatrix()[F

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixDisp:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v7, 0x0

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMatrix:[F

    sget-object v2, Lcom/sec/android/gallery3d/glcore/TUtils;->vertices:[F

    aget v2, v2, v1

    aput v2, v0, v10

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMatrix:[F

    sget-object v2, Lcom/sec/android/gallery3d/glcore/TUtils;->vertices:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    aput v2, v0, v11

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMatrix:[F

    const/16 v2, 0xe

    sget-object v3, Lcom/sec/android/gallery3d/glcore/TUtils;->vertices:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    aput v3, v0, v2

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mTempMatrix:[F

    sget-object v2, Lcom/sec/android/gallery3d/glcore/GlObject;->mProjViewMatrix:[F

    sget-object v4, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mTempMatrix:[F

    aget v0, v0, v9

    cmpl-float v0, v0, v12

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, v6, Lcom/sec/android/gallery3d/glcore/GlConfig;->mHalfWidth:F

    iget v2, v6, Lcom/sec/android/gallery3d/glcore/GlConfig;->mHalfWidth:F

    sget-object v3, Lcom/sec/android/gallery3d/glcore/GlObject;->mTempMatrix:[F

    aget v3, v3, v10

    mul-float/2addr v2, v3

    sget-object v3, Lcom/sec/android/gallery3d/glcore/GlObject;->mTempMatrix:[F

    aget v3, v3, v9

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mXlt:F

    iget v0, v6, Lcom/sec/android/gallery3d/glcore/GlConfig;->mHalfHeight:F

    iget v2, v6, Lcom/sec/android/gallery3d/glcore/GlConfig;->mHalfHeight:F

    sget-object v3, Lcom/sec/android/gallery3d/glcore/GlObject;->mTempMatrix:[F

    aget v3, v3, v11

    mul-float/2addr v2, v3

    sget-object v3, Lcom/sec/android/gallery3d/glcore/GlObject;->mTempMatrix:[F

    aget v3, v3, v9

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYlt:F

    const/4 v7, 0x2

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMatrix:[F

    sget-object v2, Lcom/sec/android/gallery3d/glcore/TUtils;->vertices:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    aput v2, v0, v10

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMatrix:[F

    sget-object v2, Lcom/sec/android/gallery3d/glcore/TUtils;->vertices:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    aput v2, v0, v11

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMatrix:[F

    const/16 v2, 0xe

    sget-object v3, Lcom/sec/android/gallery3d/glcore/TUtils;->vertices:[F

    const/16 v4, 0x8

    aget v3, v3, v4

    aput v3, v0, v2

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mTempMatrix:[F

    sget-object v2, Lcom/sec/android/gallery3d/glcore/GlObject;->mProjViewMatrix:[F

    sget-object v4, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mTempMatrix:[F

    aget v0, v0, v9

    cmpl-float v0, v0, v12

    if-eqz v0, :cond_0

    iget v0, v6, Lcom/sec/android/gallery3d/glcore/GlConfig;->mHalfWidth:F

    iget v1, v6, Lcom/sec/android/gallery3d/glcore/GlConfig;->mHalfWidth:F

    sget-object v2, Lcom/sec/android/gallery3d/glcore/GlObject;->mTempMatrix:[F

    aget v2, v2, v10

    mul-float/2addr v1, v2

    sget-object v2, Lcom/sec/android/gallery3d/glcore/GlObject;->mTempMatrix:[F

    aget v2, v2, v9

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mXrb:F

    iget v0, v6, Lcom/sec/android/gallery3d/glcore/GlConfig;->mHalfHeight:F

    iget v1, v6, Lcom/sec/android/gallery3d/glcore/GlConfig;->mHalfHeight:F

    sget-object v2, Lcom/sec/android/gallery3d/glcore/GlObject;->mTempMatrix:[F

    aget v2, v2, v11

    mul-float/2addr v1, v2

    sget-object v2, Lcom/sec/android/gallery3d/glcore/GlObject;->mTempMatrix:[F

    aget v2, v2, v9

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYrb:F

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mXlt:F

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mXrb:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget v8, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mXlt:F

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mXrb:F

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mXlt:F

    iput v8, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mXrb:F

    :cond_2
    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYlt:F

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYrb:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v8, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYlt:F

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYrb:F

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYlt:F

    iput v8, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYrb:F

    :cond_3
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mXlt:F

    float-to-int v0, v0

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYlt:F

    float-to-int v1, v1

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mXrb:F

    float-to-int v2, v2

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYrb:F

    float-to-int v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0
.end method

.method public getHeight(Z)F
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mHeight:F

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mScaleY:F

    mul-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mHeight:F

    goto :goto_0
.end method

.method public getLongClickListener()Lcom/sec/android/gallery3d/glcore/GlObject$GlLongClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mLongClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlLongClickListener;

    return-object v0
.end method

.method public getObjectRect()Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mXlt:F

    float-to-int v1, v1

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYlt:F

    float-to-int v2, v2

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mXrb:F

    float-to-int v3, v3

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYrb:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0
.end method

.method public getParent()Lcom/sec/android/gallery3d/glcore/GlObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    return-object v0
.end method

.method public getProxity(II)F
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sec/android/gallery3d/glcore/GlObject;->getGlObjectRect(Landroid/graphics/Rect;)V

    int-to-float v4, p1

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mXlt:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    const/4 v1, -0x1

    :goto_0
    int-to-float v4, p2

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYlt:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    const/4 v3, -0x1

    :goto_1
    if-nez v1, :cond_4

    if-nez v3, :cond_4

    const/4 v4, 0x0

    :goto_2
    return v4

    :cond_0
    int-to-float v4, p1

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mXrb:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    int-to-float v4, p2

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYrb:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    if-ne v1, v6, :cond_5

    int-to-float v4, p1

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mXrb:F

    sub-float v0, v4, v5

    :goto_3
    if-ne v3, v6, :cond_6

    int-to-float v4, p2

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYrb:F

    sub-float v2, v4, v5

    :goto_4
    mul-float v4, v0, v0

    mul-float v5, v2, v2

    add-float/2addr v4, v5

    goto :goto_2

    :cond_5
    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mXlt:F

    int-to-float v5, p1

    sub-float v0, v4, v5

    goto :goto_3

    :cond_6
    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYlt:F

    int-to-float v5, p2

    sub-float v2, v4, v5

    goto :goto_4
.end method

.method public getRoll()F
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoll:F

    return v0
.end method

.method public getView()Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlView:Lcom/sec/android/gallery3d/glcore/GlView;

    return-object v0
.end method

.method public getViewSub()Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlViewSub:Lcom/sec/android/gallery3d/glcore/GlView;

    return-object v0
.end method

.method public getVisibility()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mVisible:Z

    return v0
.end method

.method public getWidth(Z)F
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mWidth:F

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mScaleX:F

    mul-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mWidth:F

    goto :goto_0
.end method

.method public getX()F
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMaxUsed:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosUsed:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCx:[F

    aget v2, v2, v0

    add-float/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected getXlt()F
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mXlt:F

    return v0
.end method

.method public getY()F
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMaxUsed:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosUsed:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCy:[F

    aget v2, v2, v0

    add-float/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected getYlt()F
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mYlt:F

    return v0
.end method

.method public getZ()F
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMaxUsed:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosUsed:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCz:[F

    aget v2, v2, v0

    add-float/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public invalidate()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->invalidateContent()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvasSub:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvasSub:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->invalidateContent()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mNeedRender:Z

    return-void
.end method

.method public moveToFirst()V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v4, v4, Lcom/sec/android/gallery3d/glcore/GlObject;->mChild:[Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget v4, v4, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    const/4 v5, 0x1

    if-gt v4, v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v0, v4, Lcom/sec/android/gallery3d/glcore/GlObject;->mChild:[Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget v1, v4, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    const/4 v2, -0x1

    aget-object v4, v0, v6

    if-eq v4, p0, :cond_0

    const/4 v3, 0x1

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    if-ne v4, p0, :cond_3

    move v2, v3

    :cond_2
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    :goto_2
    if-lez v3, :cond_4

    add-int/lit8 v4, v3, -0x1

    aget-object v4, v0, v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    aput-object p0, v0, v6

    goto :goto_0
.end method

.method public moveToLast()V
    .locals 6

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v4, v4, Lcom/sec/android/gallery3d/glcore/GlObject;->mChild:[Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget v4, v4, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    const/4 v5, 0x1

    if-gt v4, v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v0, v4, Lcom/sec/android/gallery3d/glcore/GlObject;->mChild:[Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget v1, v4, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    const/4 v2, -0x1

    add-int/lit8 v4, v1, -0x1

    aget-object v4, v0, v4

    if-eq v4, p0, :cond_0

    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_2

    aget-object v4, v0, v3

    if-ne v4, p0, :cond_3

    move v2, v3

    :cond_2
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    :goto_2
    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_4

    add-int/lit8 v4, v3, 0x1

    aget-object v4, v0, v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v1, -0x1

    aput-object p0, v0, v4

    goto :goto_0
.end method

.method protected onAsyncRender(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 11

    const/16 v10, 0xde1

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget v0, v3, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mASyncRenderState:I

    if-eq v0, v1, :cond_0

    if-ne v0, v9, :cond_3

    :cond_0
    invoke-interface {p1, v10}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mEmptyFillRed:F

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mEmptyFillGreen:F

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mEmptyFillBlue:F

    iget v6, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mEmptyFillColor:I

    shr-int/lit8 v6, v6, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v6, v7

    invoke-interface {p1, v3, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlState;->isRectVertex()Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x1406

    sget-object v4, Lcom/sec/android/gallery3d/glcore/TUtils;->sDefaultVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v8, v3, v2, v4}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIILjava/nio/Buffer;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    invoke-virtual {v3, v1}, Lcom/sec/android/gallery3d/glcore/GlState;->setRectVertex(Z)V

    :cond_1
    const/4 v1, 0x6

    invoke-interface {p1, v1, v2, v9}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    invoke-interface {p1, v10}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    move v1, v2

    :cond_2
    :goto_0
    return v1

    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->setTexture(Ljavax/microedition/khronos/opengles/GL11;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iput v8, v2, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mASyncRenderState:I

    goto :goto_0
.end method

.method protected onClicked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mObjectZPosChanged:Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMoveDetect:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    return-void
.end method

.method protected onMoved(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onPressed(IIII)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onReleased(IIII)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onRender(Ljavax/microedition/khronos/opengles/GL11;Lcom/sec/android/gallery3d/glcore/GlCanvas;)V
    .locals 7
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "GLLayout"
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v6, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mNeedLayout:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mNeedRender:Z

    if-eqz v6, :cond_8

    :cond_0
    move v3, v5

    :goto_0
    iget-boolean v6, p2, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mContentValid:Z

    if-nez v6, :cond_9

    move v2, v5

    :goto_1
    if-nez v2, :cond_1

    if-eqz v3, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {p2, v4}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->prepare(Z)V

    if-eqz v1, :cond_2

    iget-object v5, p2, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v5, :cond_2

    iget v5, p2, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mWidth:I

    iget v6, p2, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mHeight:I

    invoke-virtual {v1, v5, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->layout(II)V

    iget-object v5, p2, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v5}, Lcom/sec/android/gallery3d/glcore/GlView;->render(Landroid/graphics/Canvas;)V

    :cond_2
    invoke-virtual {p2, p1}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->setTexture(Ljavax/microedition/khronos/opengles/GL11;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvasSub:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-eqz v0, :cond_6

    iget-boolean v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCanvasSubVisibility:Z

    if-eqz v5, :cond_6

    if-nez v3, :cond_4

    iget-boolean v5, v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mContentValid:Z

    if-nez v5, :cond_6

    :cond_4
    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlViewSub:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v0, v4}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->prepare(Z)V

    if-eqz v1, :cond_5

    iget-object v5, v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v5, :cond_5

    iget v5, v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mWidth:I

    iget v6, v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mHeight:I

    invoke-virtual {v1, v5, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->layout(II)V

    iget-object v5, v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v5}, Lcom/sec/android/gallery3d/glcore/GlView;->render(Landroid/graphics/Canvas;)V

    :cond_5
    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->setTexture(Ljavax/microedition/khronos/opengles/GL11;)V

    :cond_6
    if-eqz v3, :cond_7

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mNeedLayout:Z

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mNeedRender:Z

    :cond_7
    return-void

    :cond_8
    move v3, v4

    goto :goto_0

    :cond_9
    move v2, v4

    goto :goto_1
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->onTouch(Landroid/view/MotionEvent;II)Z

    move-result v0

    return v0
.end method

.method public releasePosIndex(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosUsed:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMaxUsed:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMaxUsed:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMaxUsed:I

    :cond_0
    iput-boolean v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosChanged:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCx:[F

    aget v0, v0, p1

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCy:[F

    aget v0, v0, p1

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCz:[F

    aget v0, v0, p1

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCx:[F

    aput v2, v0, p1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCy:[F

    aput v2, v0, p1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCz:[F

    aput v2, v0, p1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iput-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mObjectZPosChanged:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderRequested:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    :cond_3
    return-void
.end method

.method public remove()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-nez v2, :cond_3

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mState:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAnimation:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAnimation:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAnimation:Ljava/util/ArrayList;

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlObject;->onDestroy()V

    invoke-virtual {p0, v4}, Lcom/sec/android/gallery3d/glcore/GlObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    const/4 v2, 0x3

    iput v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mState:I

    :goto_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChild:[Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v2, :cond_6

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildMax:I

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChild:[Lcom/sec/android/gallery3d/glcore/GlObject;

    aget-object v0, v2, v1

    if-nez v0, :cond_4

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v2, p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->removeObject(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    goto :goto_1

    :cond_4
    iput-object v4, v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->remove()V

    goto :goto_3

    :cond_5
    iput-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChild:[Lcom/sec/android/gallery3d/glcore/GlObject;

    iput v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    iput v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildMax:I

    :cond_6
    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v2, p0}, Lcom/sec/android/gallery3d/glcore/GlObject;->removeChild(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    goto :goto_0
.end method

.method public removeAllAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAnimation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAnimation:Ljava/util/ArrayList;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->removeAllAnimation(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    goto :goto_0
.end method

.method public removeAllChild()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChild:[Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChild:[Lcom/sec/android/gallery3d/glcore/GlObject;

    aget-object v0, v2, v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChild:[Lcom/sec/android/gallery3d/glcore/GlObject;

    aput-object v3, v2, v1

    iput-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v2, v2, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eq p0, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v2, v2, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    goto :goto_0
.end method

.method removeAllListeners()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMoveListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mLongClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlLongClickListener;

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMultiSelectListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mDragListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlDragListener;

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mHoverListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlHoverListener;

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPenSelectListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlPenSelectListener;

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mSecondaryClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlSecondaryClickListener;

    return-void
.end method

.method public removeAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p0, p1, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAnimation:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAnimation:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAnimation:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->removeAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    goto :goto_0
.end method

.method public removeChild(Lcom/sec/android/gallery3d/glcore/GlObject;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChild:[Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/sec/android/gallery3d/glcore/GlObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eq v3, p0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, -0x1

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    add-int/lit8 v0, v3, -0x1

    :goto_1
    if-ltz v0, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChild:[Lcom/sec/android/gallery3d/glcore/GlObject;

    aget-object v3, v3, v0

    if-ne v3, p1, :cond_3

    move v1, v0

    :cond_2
    const/4 v3, -0x1

    if-eq v1, v3, :cond_6

    move v0, v1

    :goto_2
    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChild:[Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChild:[Lcom/sec/android/gallery3d/glcore/GlObject;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChild:[Lcom/sec/android/gallery3d/glcore/GlObject;

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    aput-object v5, v2, v3

    iput-object v5, p1, Lcom/sec/android/gallery3d/glcore/GlObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v2, v2, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eq p0, v2, :cond_5

    iget-boolean v2, p1, Lcom/sec/android/gallery3d/glcore/GlObject;->mReuseObj:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v2, v2, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/glcore/GlObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    :cond_6
    const-string/jumbo v3, "GlObject"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeChild = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "(count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") isn\'t exist !!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method removeChildFromRootObject(Lcom/sec/android/gallery3d/glcore/GlObject;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChild:[Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/sec/android/gallery3d/glcore/GlObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eq v2, p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChild:[Lcom/sec/android/gallery3d/glcore/GlObject;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_3

    move v1, v0

    :cond_2
    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChild:[Lcom/sec/android/gallery3d/glcore/GlObject;

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChild:[Lcom/sec/android/gallery3d/glcore/GlObject;

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v1

    invoke-static {v2, v3, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChild:[Lcom/sec/android/gallery3d/glcore/GlObject;

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    aput-object v6, v2, v3

    iput-object v6, p1, Lcom/sec/android/gallery3d/glcore/GlObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const-string/jumbo v2, "GlObject"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeChildFromRootObject = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "(count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") isn\'t exist !!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->setAlpha(FI)V

    return-void
.end method

.method protected setAlpha(FI)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mVisible:Z

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAlphaCnt:I

    if-gt p2, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAlphaEx:[F

    aget v3, v3, p2

    cmpl-float v3, p1, v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAlphaEx:[F

    aput p1, v3, p2

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAlphaEx:[F

    aget v3, v3, v2

    iput v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAlpha:F

    const/4 v0, 0x1

    :goto_1
    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAlphaCnt:I

    if-gt v0, v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAlphaEx:[F

    aget v3, v3, v0

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_2

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAlpha:F

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAlphaEx:[F

    aget v4, v4, v0

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAlpha:F

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAlpha:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mVisibleEx:I

    const/16 v4, 0xff

    if-ne v3, v4, :cond_4

    const/4 v2, 0x1

    :cond_4
    iput-boolean v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mVisible:Z

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mVisible:Z

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-boolean v2, v2, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderRequested:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    goto :goto_0
.end method

.method public setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 1

    iput-object p0, p1, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAnimation:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAnimation:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAnimation:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    goto :goto_0
.end method

.method public setBorderColor(I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mBorderColor:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mBorderColor:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderRequested:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    goto :goto_0
.end method

.method public setBorderRect(Landroid/graphics/RectF;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mBorderRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mBorderRect:Landroid/graphics/RectF;

    if-nez v1, :cond_2

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mBorderRect:Landroid/graphics/RectF;

    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mBorderRectChanged:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-boolean v1, v1, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderRequested:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mBorderRect:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1
.end method

.method public setBorderVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mBorderVisible:Z

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mBorderVisible:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderRequested:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    goto :goto_0
.end method

.method public setBorderWidth(F)V
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mBorderWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mBorderWidth:F

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderRequested:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    goto :goto_0
.end method

.method public setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget v1, v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mReferCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mReferCount:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v0, v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mListener:Lcom/sec/android/gallery3d/glcore/GlCanvas$GlCanvasListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v0, v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mListener:Lcom/sec/android/gallery3d/glcore/GlCanvas$GlCanvasListener;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlCanvas$GlCanvasListener;->onDetached(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mReferCount:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->isManualRecycle()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->recycle()V

    :cond_3
    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-eqz p1, :cond_4

    iget v0, p1, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mReferCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mReferCount:I

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->invalidateContent()V

    :cond_4
    iput-boolean v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mNeedRender:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mNeedLayout:Z

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderRequested:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    goto :goto_0
.end method

.method protected setCanvasMixRatio(F)V
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCanvasMixRatio:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCanvasMixRatio:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCanvasMixSrc:F

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvasSub:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderRequested:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    goto :goto_0
.end method

.method public setCanvasSub(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvasSub:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCanvasLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvasSub:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvasSub:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget v2, v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mReferCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mReferCount:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvasSub:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v0, v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mListener:Lcom/sec/android/gallery3d/glcore/GlCanvas$GlCanvasListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvasSub:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v0, v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mListener:Lcom/sec/android/gallery3d/glcore/GlCanvas$GlCanvasListener;

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvasSub:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    invoke-interface {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlCanvas$GlCanvasListener;->onDetached(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvasSub:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mReferCount:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvasSub:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->isManualRecycle()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvasSub:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->recycle()V

    :cond_3
    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvasSub:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mNeedRender:Z

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mNeedLayout:Z

    if-eqz p1, :cond_4

    iget v0, p1, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mReferCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mReferCount:I

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->invalidateContent()V

    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderRequested:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setCanvasSubVisiblity(ZI)V
    .locals 5

    const/4 v2, 0x1

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCanvasSubVisibility:Z

    const/16 v3, 0x8

    if-lt p2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    shl-int v0, v2, p2

    if-eqz p1, :cond_2

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCanvasSubFlags:I

    or-int/2addr v3, v0

    iput v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCanvasSubFlags:I

    :goto_1
    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCanvasSubFlags:I

    const/16 v4, 0xff

    if-ne v3, v4, :cond_3

    :goto_2
    iput-boolean v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCanvasSubVisibility:Z

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCanvasSubVisibility:Z

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-boolean v2, v2, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderRequested:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCanvasSubFlags:I

    xor-int/lit8 v4, v0, -0x1

    and-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCanvasSubFlags:I

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method protected setCircleOption()V
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCircle:Z

    const/16 v0, 0x1e0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0, v2, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setRoundedOption(IIF)V

    return-void
.end method

.method public setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    return-void
.end method

.method public setColor(FFF)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mColorR:F

    iput p2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mColorG:F

    iput p3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mColorB:F

    return-void
.end method

.method public setDim(F)V
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mDimFactor:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mDimFactor:F

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderRequested:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->setDim(FI)V

    goto :goto_0
.end method

.method protected setDim(FI)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mVisible:Z

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mDimCnt:I

    if-gt p2, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mDimEx:[F

    aget v3, v3, p2

    cmpl-float v3, p1, v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mDimEx:[F

    aput p1, v3, p2

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mDimEx:[F

    aget v3, v3, v2

    iput v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mDimFactor:F

    const/4 v0, 0x1

    :goto_1
    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mDimCnt:I

    if-gt v0, v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mDimEx:[F

    aget v3, v3, v0

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_2

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mDimFactor:F

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mDimEx:[F

    aget v4, v4, v0

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mDimFactor:F

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mDimFactor:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mVisibleEx:I

    const/16 v4, 0xff

    if-ne v3, v4, :cond_4

    const/4 v2, 0x1

    :cond_4
    iput-boolean v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mVisible:Z

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mVisible:Z

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-boolean v2, v2, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderRequested:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    goto :goto_0
.end method

.method public setDragListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlDragListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mDragListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlDragListener;

    return-void
.end method

.method public setEmptyFill(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mEmptyFill:Z

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mEmptyFill:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderRequested:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    goto :goto_0
.end method

.method public setEmptyFillColor(I)V
    .locals 2

    const/high16 v1, 0x437f0000    # 255.0f

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mEmptyFillColor:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mEmptyFillColor:I

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mEmptyFillRed:F

    const v0, 0xff00

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mEmptyFillGreen:F

    and-int/lit16 v0, p1, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mEmptyFillBlue:F

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderRequested:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    goto :goto_0
.end method

.method public setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    return-void
.end method

.method public setHoverListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlHoverListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mHoverListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlHoverListener;

    return-void
.end method

.method public setLongClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mLongClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlLongClickListener;

    return-void
.end method

.method public setMoveListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMoveListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    return-void
.end method

.method public setMovingTexCoords(FI)V
    .locals 9

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mTextCoords:Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x5

    if-nez v2, :cond_1

    const-string/jumbo v4, "GlObject"

    const-string/jumbo v5, "setMovingTexCoords() : mTextCoords = null !!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-nez v4, :cond_2

    const-string/jumbo v4, "GlObject"

    const-string/jumbo v5, "setMovingTexCoords() : mGlCanvas = null !!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/16 v4, 0x5a

    if-eq p2, v4, :cond_3

    const/16 v4, 0x10e

    if-ne p2, v4, :cond_5

    :cond_3
    move v0, p1

    iget v4, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v0

    cmpg-float v4, v4, v5

    if-lez v4, :cond_0

    iget v4, v2, Landroid/graphics/RectF;->left:F

    int-to-float v5, v1

    sub-float/2addr v4, v5

    iget v5, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v0

    cmpl-float v4, v4, v5

    if-gez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v0

    cmpg-float v4, v4, v5

    if-lez v4, :cond_0

    iget v4, v2, Landroid/graphics/RectF;->right:F

    int-to-float v5, v1

    add-float/2addr v4, v5

    iget v5, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v0

    cmpg-float v4, v4, v5

    if-lez v4, :cond_0

    :cond_4
    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mTextCoords:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v0

    iget v6, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v3

    iget v7, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v7, v0

    iget v8, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mReqTexCoord:Z

    goto :goto_0

    :cond_5
    move v3, p1

    iget v4, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v3

    cmpg-float v4, v4, v5

    if-lez v4, :cond_0

    iget v4, v2, Landroid/graphics/RectF;->top:F

    int-to-float v5, v1

    sub-float/2addr v4, v5

    iget v5, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v3

    cmpl-float v4, v4, v5

    if-gez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v3

    cmpg-float v4, v4, v5

    if-lez v4, :cond_0

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v5, v1

    add-float/2addr v4, v5

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v3

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_4

    goto/16 :goto_0
.end method

.method public setMultiSelectListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMultiSelectListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;

    return-void
.end method

.method public setPenSelectListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlPenSelectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPenSelectListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlPenSelectListener;

    return-void
.end method

.method public setPos(FFF)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mSupportRtl:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v1, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    mul-float/2addr p1, v1

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCx:[F

    aget v1, v1, v2

    cmpl-float v1, v1, p1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCy:[F

    aget v1, v1, v2

    cmpl-float v1, v1, p2

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCz:[F

    aget v1, v1, v2

    cmpl-float v1, v1, p3

    if-eqz v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCx:[F

    aput p1, v1, v2

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCy:[F

    aput p2, v1, v2

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCz:[F

    aget v1, v1, v2

    cmpl-float v1, v1, p3

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCz:[F

    aput p3, v1, v2

    const/4 v0, 0x1

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosChanged:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-boolean v2, v1, Lcom/sec/android/gallery3d/glcore/GlRootView;->mObjectZPosChanged:Z

    or-int/2addr v2, v0

    iput-boolean v2, v1, Lcom/sec/android/gallery3d/glcore/GlRootView;->mObjectZPosChanged:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-boolean v1, v1, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderRequested:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    :cond_3
    return-void
.end method

.method public setPos(FFFI)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mSupportRtl:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v2, :cond_0

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr p1, v2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCx:[F

    aget v2, v2, v4

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_1

    and-int/lit8 v2, p4, 0x1

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCx:[F

    aput p1, v2, v4

    const/4 v0, 0x1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCy:[F

    aget v2, v2, v4

    cmpl-float v2, v2, p2

    if-eqz v2, :cond_2

    and-int/lit8 v2, p4, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCy:[F

    aput p2, v2, v4

    const/4 v0, 0x1

    :cond_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCz:[F

    aget v2, v2, v4

    cmpl-float v2, v2, p3

    if-eqz v2, :cond_3

    and-int/lit8 v2, p4, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCz:[F

    aput p3, v2, v4

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_3
    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosChanged:Z

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-boolean v3, v2, Lcom/sec/android/gallery3d/glcore/GlRootView;->mObjectZPosChanged:Z

    or-int/2addr v3, v1

    iput-boolean v3, v2, Lcom/sec/android/gallery3d/glcore/GlRootView;->mObjectZPosChanged:Z

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-boolean v2, v2, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderRequested:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    :cond_4
    return-void
.end method

.method public setPos(IFFF)V
    .locals 3

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mSupportRtl:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v1, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    mul-float/2addr p2, v1

    :cond_0
    const/4 v0, 0x0

    if-lez p1, :cond_1

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMaxUsed:I

    if-lt p1, v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosUsed:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCx:[F

    aget v1, v1, p1

    cmpl-float v1, v1, p2

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCy:[F

    aget v1, v1, p1

    cmpl-float v1, v1, p3

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCz:[F

    aget v1, v1, p1

    cmpl-float v1, v1, p4

    if-eqz v1, :cond_1

    :cond_3
    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCx:[F

    aput p2, v1, p1

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCy:[F

    aput p3, v1, p1

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCz:[F

    aget v1, v1, p1

    cmpl-float v1, v1, p4

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCz:[F

    aput p4, v1, p1

    const/4 v0, 0x1

    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosChanged:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-boolean v2, v1, Lcom/sec/android/gallery3d/glcore/GlRootView;->mObjectZPosChanged:Z

    or-int/2addr v2, v0

    iput-boolean v2, v1, Lcom/sec/android/gallery3d/glcore/GlRootView;->mObjectZPosChanged:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-boolean v1, v1, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderRequested:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    goto :goto_0
.end method

.method public setPosIndex()I
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMaxUsed:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosUsed:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_1

    :cond_0
    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMaxUsed:I

    if-ge v0, v2, :cond_2

    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosUsed:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCx:[F

    aput v4, v2, v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCy:[F

    aput v4, v2, v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCz:[F

    aput v4, v2, v1

    :goto_2
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMaxUsed:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_3

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMaxUsed:I

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMaxUsed:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMaxUsed:I

    goto :goto_1

    :cond_3
    const/4 v1, -0x1

    goto :goto_2
.end method

.method public setPositionsInter()V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mx:F

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->my:F

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mz:F

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosMaxUsed:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosUsed:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mx:F

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCx:[F

    aget v2, v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mx:F

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->my:F

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCy:[F

    aget v2, v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->my:F

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mz:F

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mCz:[F

    aget v2, v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mz:F

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mExtChanged:Z

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mProjMatrixUpdate:Z

    return-void
.end method

.method protected setPostDraw(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPostDraw:Z

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPostDraw:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderRequested:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    goto :goto_0
.end method

.method public setReuseObj(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mReuseObj:Z

    return-void
.end method

.method public setRoll(F)V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoll:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoll:F

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mExtChanged:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mProjMatrixUpdate:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderRequested:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    goto :goto_0
.end method

.method public setRotationGesture(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mUseRotationGesture:Z

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mUseRotationGesture:Z

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->addRotationListener(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->removeRotationListener(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    goto :goto_0
.end method

.method public setRotationListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlRotateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRotationListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlRotateListener;

    return-void
.end method

.method public setRoundRadius(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRounded:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundRadius:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundRadius:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mSizeChanged:Z

    :cond_0
    return-void
.end method

.method public setRoundedOption(IF)V
    .locals 1

    const/16 v0, 0x3c

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setRoundedOption(IIF)V

    return-void
.end method

.method protected setRoundedOption(IIF)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRounded:Z

    iput p1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundVertexCnt:I

    iput p2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundMode:I

    iput p3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundRadius:F

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundVertexCnt:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRoundVertexCnt:I

    :cond_1
    return-void
.end method

.method public setScale(FF)V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mScaleX:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mScaleY:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mScaleX:F

    iput p2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mScaleY:F

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mExtChanged:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mProjMatrixUpdate:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderRequested:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    goto :goto_0
.end method

.method public setSecondaryClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlSecondaryClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mSecondaryClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlSecondaryClickListener;

    return-void
.end method

.method public setSize(FF)V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mHeight:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mWidth:F

    iput p2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mHeight:F

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mExtChanged:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mProjMatrixUpdate:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mSizeChanged:Z

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderRequested:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    goto :goto_0
.end method

.method public setSupportButtonShape(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mSupportButtonShape:Z

    return-void
.end method

.method public setSupportButtonShape(ZIIII)V
    .locals 1

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mSupportButtonShape:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mButtonShapePadding:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mButtonShapePadding:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mButtonShapePadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setSupportRtl(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mSupportRtl:Z

    return-void
.end method

.method protected setTexCoordSub(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mTextCoordSub:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mReqTexCoordSub:Z

    return-void
.end method

.method public setTexCoords(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mTextCoords:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mReqTexCoord:Z

    return-void
.end method

.method public setVertexRotation(I)V
    .locals 2

    if-ltz p1, :cond_1

    move v0, p1

    :goto_0
    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRotation:I

    if-ne v1, v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    add-int/lit16 v0, p1, 0x168

    goto :goto_0

    :cond_2
    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mRotation:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-boolean v1, v1, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderRequested:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    goto :goto_1
.end method

.method public setView(Lcom/sec/android/gallery3d/glcore/GlView;)V
    .locals 2

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlView:Lcom/sec/android/gallery3d/glcore/GlView;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mSupportButtonShape:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsEnabledShowButtonShapes:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlObject;->updateButtonShapeView()V

    :cond_0
    invoke-virtual {p1, p0}, Lcom/sec/android/gallery3d/glcore/GlView;->setObject(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    :cond_1
    iput-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mNeedRender:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mNeedLayout:Z

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mVisible:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderRequested:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->invalidateContent()V

    :cond_3
    return-void
.end method

.method public setViewSub(Lcom/sec/android/gallery3d/glcore/GlView;)V
    .locals 1

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlViewSub:Lcom/sec/android/gallery3d/glcore/GlView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/sec/android/gallery3d/glcore/GlView;->setObject(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    :cond_0
    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mNeedRender:Z

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mNeedLayout:Z

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderRequested:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvasSub:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvasSub:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->invalidateContent()V

    :cond_2
    return-void
.end method

.method public setVisibility(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mVisible:Z

    if-eqz p1, :cond_1

    const/16 v1, 0xff

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mVisibleEx:I

    :goto_0
    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAlpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mVisible:Z

    :goto_1
    iget-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mVisible:Z

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-boolean v1, v1, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderRequested:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    :cond_0
    return-void

    :cond_1
    iput v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mVisibleEx:I

    goto :goto_0

    :cond_2
    iput-boolean p1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mVisible:Z

    goto :goto_1
.end method

.method public setVisibility(ZI)V
    .locals 5

    const/4 v2, 0x1

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mVisible:Z

    const/16 v3, 0x8

    if-lt p2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    shl-int v0, v2, p2

    if-eqz p1, :cond_2

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mVisibleEx:I

    or-int/2addr v3, v0

    iput v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mVisibleEx:I

    :goto_1
    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAlpha:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mVisibleEx:I

    const/16 v4, 0xff

    if-ne v3, v4, :cond_3

    :goto_2
    iput-boolean v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mVisible:Z

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mVisible:Z

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-boolean v2, v2, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderRequested:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mVisibleEx:I

    xor-int/lit8 v4, v0, -0x1

    and-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mVisibleEx:I

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public setZOrder(I)V
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mZOrder:I

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mZOrder:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mObjectZPosChanged:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderRequested:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    goto :goto_0
.end method
