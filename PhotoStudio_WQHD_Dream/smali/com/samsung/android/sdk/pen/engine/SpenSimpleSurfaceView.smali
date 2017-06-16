.class public Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;
.super Landroid/view/SurfaceView;
.source "SpenSimpleSurfaceView.java"

# interfaces
.implements Lcom/samsung/android/sdk/pen/engine/SpenSimpleViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnZoomAnimationListener;,
        Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$BaseControlListener;,
        Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$DetachReceiver;,
        Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnSmartScaleGestureDetectorListener;,
        Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnDoubleTapListener;,
        Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnGestureListener;,
        Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$HolderCallback;
    }
.end annotation


# static fields
.field public static final CAPTURE_ALL:I = 0x11000111

.field public static final CAPTURE_BACKGROUND_COLOR:I = 0x10000000

.field public static final CAPTURE_BACKGROUND_IMAGE:I = 0x1000000

.field public static final CAPTURE_FOREGROUND_ALL:I = 0x111

.field private static final CAPTURE_IMAGE:I = 0x100

.field private static final CAPTURE_STROKE:I = 0x1

.field private static final CAPTURE_TEXTBOX:I = 0x10

.field private static final TAG:Ljava/lang/String; = "SpenSimpleSurfaceView"


# instance fields
.field private mBackgroundColorChangeListener:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface$SpenBackgroundColorChangeListener;

.field private mColorPickerListener:Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;

.field private mControl:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

.field private mControlListener:Lcom/samsung/android/sdk/pen/engine/SpenControlListener;

.field private mDetachReceiver:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$DetachReceiver;

.field private mEraserChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenEraserChangeListener;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHolderCallback:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$HolderCallback;

.field private mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

.field private mIsControlSelect:Z

.field private mIsEraserDrawing:Z

.field private mIsSkipTouch:Z

.field private mIsStretch:Z

.field private mIsStrokeDrawing:Z

.field private mIsToolTip:Z

.field private mLongPressListener:Lcom/samsung/android/sdk/pen/engine/SpenLongPressListener;

.field private mMagicPenEnabled:Z

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

.field private mPenChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenPenChangeListener;

.field private mPenDetachmentListener:Lcom/samsung/android/sdk/pen/engine/SpenPenDetachmentListener;

.field private mPreTouchListener:Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;

.field private mRemoverChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenRemoverChangeListener;

.field private mRtoCvsItstFrmHeight:I

.field private mRtoCvsItstFrmWidth:I

.field private mScreenHeight:I

.field private mScreenStartX:I

.field private mScreenStartY:I

.field private mScreenWidth:I

.field private mScroll:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;

.field private mSelectObjectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenSelectionChangeListener;

.field private mSmartScaleGestureDetector:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;

.field private mSpenHapticSound:Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;

.field private mSpenSetPageDocListener:Lcom/samsung/android/sdk/pen/engine/SpenSetPageDocListener;

.field private mSpenZoomAnimation:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;

.field private mStretchHeight:I

.field private mStretchRatio:Landroid/graphics/PointF;

.field private mStretchWidth:I

.field private mToolTip:Lcom/samsung/android/sdk/pen/engine/SpenToolTip;

.field private mTouchListener:Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;

.field private mTouchProcessingTime:J

.field private mZoomAnimationListener:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimationListener;

.field private mZoomListener:Lcom/samsung/android/sdk/pen/engine/SpenZoomListener;

.field private nativeSimple:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHolderCallback:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$HolderCallback;

    iput v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenWidth:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenHeight:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenStartX:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenStartY:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mRtoCvsItstFrmWidth:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mRtoCvsItstFrmHeight:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mMagicPenEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsSkipTouch:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mTouchProcessingTime:J

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScroll:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mGestureDetector:Landroid/view/GestureDetector;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSmartScaleGestureDetector:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mToolTip:Lcom/samsung/android/sdk/pen/engine/SpenToolTip;

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsToolTip:Z

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mDetachReceiver:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$DetachReceiver;

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsStretch:Z

    iput v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mStretchWidth:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mStretchHeight:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mStretchRatio:Landroid/graphics/PointF;

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsStrokeDrawing:Z

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsEraserDrawing:Z

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsControlSelect:Z

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mBackgroundColorChangeListener:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface$SpenBackgroundColorChangeListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPenChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenPenChangeListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mRemoverChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenRemoverChangeListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mColorPickerListener:Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mTouchListener:Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPreTouchListener:Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSelectionChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenSelectionChangeListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mLongPressListener:Lcom/samsung/android/sdk/pen/engine/SpenLongPressListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mZoomListener:Lcom/samsung/android/sdk/pen/engine/SpenZoomListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPenDetachmentListener:Lcom/samsung/android/sdk/pen/engine/SpenPenDetachmentListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mControlListener:Lcom/samsung/android/sdk/pen/engine/SpenControlListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mOrientationListener:Landroid/view/OrientationEventListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mEraserChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenEraserChangeListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mZoomAnimationListener:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimationListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSpenSetPageDocListener:Lcom/samsung/android/sdk/pen/engine/SpenSetPageDocListener;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->construct(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v0, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHolderCallback:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$HolderCallback;

    iput v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenWidth:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenHeight:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenStartX:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenStartY:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mRtoCvsItstFrmWidth:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mRtoCvsItstFrmHeight:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mMagicPenEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsSkipTouch:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mTouchProcessingTime:J

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScroll:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mGestureDetector:Landroid/view/GestureDetector;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSmartScaleGestureDetector:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mToolTip:Lcom/samsung/android/sdk/pen/engine/SpenToolTip;

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsToolTip:Z

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mDetachReceiver:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$DetachReceiver;

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsStretch:Z

    iput v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mStretchWidth:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mStretchHeight:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mStretchRatio:Landroid/graphics/PointF;

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsStrokeDrawing:Z

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsEraserDrawing:Z

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsControlSelect:Z

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mBackgroundColorChangeListener:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface$SpenBackgroundColorChangeListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPenChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenPenChangeListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mRemoverChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenRemoverChangeListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mColorPickerListener:Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mTouchListener:Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPreTouchListener:Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSelectionChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenSelectionChangeListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mLongPressListener:Lcom/samsung/android/sdk/pen/engine/SpenLongPressListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mZoomListener:Lcom/samsung/android/sdk/pen/engine/SpenZoomListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPenDetachmentListener:Lcom/samsung/android/sdk/pen/engine/SpenPenDetachmentListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mControlListener:Lcom/samsung/android/sdk/pen/engine/SpenControlListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mOrientationListener:Landroid/view/OrientationEventListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mEraserChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenEraserChangeListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mZoomAnimationListener:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimationListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSpenSetPageDocListener:Lcom/samsung/android/sdk/pen/engine/SpenSetPageDocListener;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->construct(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v0, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHolderCallback:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$HolderCallback;

    iput v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenWidth:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenHeight:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenStartX:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenStartY:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mRtoCvsItstFrmWidth:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mRtoCvsItstFrmHeight:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mMagicPenEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsSkipTouch:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mTouchProcessingTime:J

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScroll:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mGestureDetector:Landroid/view/GestureDetector;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSmartScaleGestureDetector:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mToolTip:Lcom/samsung/android/sdk/pen/engine/SpenToolTip;

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsToolTip:Z

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mDetachReceiver:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$DetachReceiver;

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsStretch:Z

    iput v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mStretchWidth:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mStretchHeight:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mStretchRatio:Landroid/graphics/PointF;

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsStrokeDrawing:Z

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsEraserDrawing:Z

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsControlSelect:Z

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mBackgroundColorChangeListener:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface$SpenBackgroundColorChangeListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPenChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenPenChangeListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mRemoverChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenRemoverChangeListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mColorPickerListener:Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mTouchListener:Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPreTouchListener:Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSelectionChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenSelectionChangeListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mLongPressListener:Lcom/samsung/android/sdk/pen/engine/SpenLongPressListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mZoomListener:Lcom/samsung/android/sdk/pen/engine/SpenZoomListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPenDetachmentListener:Lcom/samsung/android/sdk/pen/engine/SpenPenDetachmentListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mControlListener:Lcom/samsung/android/sdk/pen/engine/SpenControlListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mOrientationListener:Landroid/view/OrientationEventListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mEraserChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenEraserChangeListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mZoomAnimationListener:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimationListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSpenSetPageDocListener:Lcom/samsung/android/sdk/pen/engine/SpenSetPageDocListener;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->construct(Landroid/content/Context;)V

    return-void
.end method

.method private static native Native_cancelStroke(J)V
.end method

.method private static native Native_captureCurrentView(JLandroid/graphics/Bitmap;Z)Z
.end method

.method private static native Native_capturePage(JLandroid/graphics/Bitmap;I)Z
.end method

.method private static native Native_construct(JLandroid/content/Context;Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)Z
.end method

.method private static native Native_enablePenCurve(JZ)V
.end method

.method private static native Native_enableZoom(JZ)V
.end method

.method private static native Native_finalize(J)V
.end method

.method private static native Native_getAdvancedPenSetting(J)Ljava/lang/String;
.end method

.method private static native Native_getBlankColor(J)I
.end method

.method private static native Native_getEraserSize(J)F
.end method

.method private static native Native_getEraserType(J)I
.end method

.method private static native Native_getMaxZoomRatio(J)F
.end method

.method private static native Native_getMinZoomRatio(J)F
.end method

.method private static native Native_getPan(JLandroid/graphics/PointF;)V
.end method

.method private static native Native_getPenColor(J)I
.end method

.method private static native Native_getPenSize(J)F
.end method

.method private static native Native_getPenStyle(J)Ljava/lang/String;
.end method

.method private static native Native_getRemoverSize(J)F
.end method

.method private static native Native_getRemoverType(J)I
.end method

.method private static native Native_getSelectionType(J)I
.end method

.method private static native Native_getToolTypeAction(JI)I
.end method

.method private static native Native_getZoomRatio(J)F
.end method

.method private static native Native_init()J
.end method

.method private static native Native_isPenCurve(J)Z
.end method

.method private static native Native_isZoomable(J)Z
.end method

.method private static native Native_onTouch(JLandroid/view/MotionEvent;I)Z
.end method

.method private static native Native_setAdvancedPenSetting(JLjava/lang/String;)V
.end method

.method private static native Native_setBlankColor(JI)V
.end method

.method private static native Native_setEraserSize(JF)V
.end method

.method private static native Native_setEraserType(JI)V
.end method

.method private static native Native_setForceStretchView(JZII)Z
.end method

.method private static native Native_setMaxZoomRatio(JF)Z
.end method

.method private static native Native_setMinZoomRatio(JF)Z
.end method

.method private static native Native_setPageDoc(JLcom/samsung/android/sdk/pen/document/SpenPageDoc;Z)Z
.end method

.method private static native Native_setPan(JFFZ)V
.end method

.method private static native Native_setPenColor(JI)V
.end method

.method private static native Native_setPenSize(JF)V
.end method

.method private static native Native_setPenStyle(JLjava/lang/String;)Z
.end method

.method private static native Native_setRemoverSize(JF)V
.end method

.method private static native Native_setRemoverType(JI)V
.end method

.method private static native Native_setScreenOrientation(JI)V
.end method

.method private static native Native_setScreenSize(JII)V
.end method

.method private static native Native_setSelectionType(JI)V
.end method

.method private static native Native_setToolTypeAction(JII)V
.end method

.method private static native Native_setTransparentBackgroundColor(JZI)Z
.end method

.method private static native Native_setTransparentBackgroundImage(JLandroid/graphics/Bitmap;I)Z
.end method

.method private static native Native_setZoom(JFFF)V
.end method

.method private static native Native_surfaceChanged(JLandroid/view/Surface;II)Z
.end method

.method private static native Native_surfaceCreated(JLandroid/view/Surface;)Z
.end method

.method private static native Native_surfaceDestroyed(J)V
.end method

.method private static native Native_update(J)V
.end method

.method private static native Native_updateRedo(J[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;I)Z
.end method

.method private static native Native_updateUndo(J[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;I)Z
.end method

.method private OnPostTouch(Landroid/view/MotionEvent;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsStrokeDrawing:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsEraserDrawing:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private OnPreTouch(Landroid/view/MotionEvent;I)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/16 v1, 0x8

    if-ne p2, v1, :cond_2

    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsStrokeDrawing:Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-eq p2, v1, :cond_3

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    :cond_3
    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsEraserDrawing:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$1000(JLandroid/view/Surface;II)Z
    .locals 2

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_surfaceChanged(JLandroid/view/Surface;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(JLandroid/view/Surface;)Z
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_surfaceCreated(JLandroid/view/Surface;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_surfaceDestroyed(J)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)Lcom/samsung/android/sdk/pen/engine/SpenLongPressListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mLongPressListener:Lcom/samsung/android/sdk/pen/engine/SpenLongPressListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSmartScaleGestureDetector:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)Lcom/samsung/android/sdk/pen/engine/SpenControlBase;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mControl:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;Lcom/samsung/android/sdk/pen/engine/SpenControlBase;)Lcom/samsung/android/sdk/pen/engine/SpenControlBase;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mControl:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsStretch:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mStretchRatio:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSpenZoomAnimation:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)Lcom/samsung/android/sdk/pen/engine/SpenPenDetachmentListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPenDetachmentListener:Lcom/samsung/android/sdk/pen/engine/SpenPenDetachmentListener;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)Lcom/samsung/android/sdk/pen/engine/SpenControlListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mControlListener:Lcom/samsung/android/sdk/pen/engine/SpenControlListener;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenStartX:I

    return v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenStartY:I

    return v0
.end method

.method static synthetic access$2500(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mRtoCvsItstFrmWidth:I

    return v0
.end method

.method static synthetic access$2600(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mRtoCvsItstFrmHeight:I

    return v0
.end method

.method static synthetic access$2700(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimationListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mZoomAnimationListener:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimationListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    return-wide v0
.end method

.method static synthetic access$500(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_setScreenOrientation(JI)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)Landroid/view/OrientationEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mOrientationListener:Landroid/view/OrientationEventListener;

    return-object v0
.end method

.method private construct(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_init()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    const-string v2, "SpenSimpleSurfaceView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nativeSimple = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/16 v2, 0x8

    const-string v3, " : nativeSimple must not be null"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v2, v3, p1, p0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_construct(JLandroid/content/Context;Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_1
    new-instance v2, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;

    invoke-direct {v2, p1}, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSpenHapticSound:Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;

    new-instance v2, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;

    invoke-direct {v2, p1}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScroll:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;

    new-instance v2, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    invoke-direct {v2, p1, p0}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    new-instance v2, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;

    invoke-direct {v2, p1}, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mToolTip:Lcom/samsung/android/sdk/pen/engine/SpenToolTip;

    new-instance v2, Landroid/view/GestureDetector;

    new-instance v3, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnGestureListener;

    invoke-direct {v3, p0, v6}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnGestureListener;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$1;)V

    invoke-direct {v2, p1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v3, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnDoubleTapListener;

    invoke-direct {v3, p0, v6}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnDoubleTapListener;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$1;)V

    invoke-virtual {v2, v3}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;

    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v3, v3

    invoke-direct {v2, p1, v3}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;-><init>(Landroid/content/Context;F)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSmartScaleGestureDetector:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSmartScaleGestureDetector:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;

    new-instance v3, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnSmartScaleGestureDetectorListener;

    invoke-direct {v3, p0, v6}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnSmartScaleGestureDetectorListener;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$1;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->setListener(Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$HolderCallback;

    invoke-direct {v2, p0, v6}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$HolderCallback;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$1;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHolderCallback:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$HolderCallback;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHolderCallback:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$HolderCallback;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    new-instance v2, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$1;

    invoke-direct {v2, p0, p1, p1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$1;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;Landroid/content/Context;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mOrientationListener:Landroid/view/OrientationEventListener;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v2}, Landroid/view/OrientationEventListener;->enable()V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mOrientationListener:Landroid/view/OrientationEventListener;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/OrientationEventListener;->onOrientationChanged(I)V

    new-instance v2, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;

    new-instance v3, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnZoomAnimationListener;

    invoke-direct {v3, p0, v6}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnZoomAnimationListener;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$1;)V

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$Listener;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSpenZoomAnimation:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;

    goto/16 :goto_0
.end method

.method private getResourceString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    const-string v5, "string"

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, p1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_1
    move-object v5, v4

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private onColorPickerChanged(III)V
    .locals 3

    const-string v0, "SpenSimpleSurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onColorPickerChanged color"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mColorPickerListener:Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mColorPickerListener:Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;

    invoke-interface {v0, p3, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;->onChanged(III)V

    :cond_0
    return-void
.end method

.method private onPageDocCompleted(I)V
    .locals 2

    const-string v0, "SpenSimpleSurfaceView"

    const-string v1, "onPageDocCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSpenSetPageDocListener:Lcom/samsung/android/sdk/pen/engine/SpenSetPageDocListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSpenSetPageDocListener:Lcom/samsung/android/sdk/pen/engine/SpenSetPageDocListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenSetPageDocListener;->onCompleted(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)V

    :cond_0
    return-void
.end method

.method private onSelectObject(Ljava/util/ArrayList;IIFFI)Z
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;IIFFI)Z"
        }
    .end annotation

    const-string v2, "SpenSimpleSurfaceView"

    const-string v3, "onSelectObject"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mControl:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    if-eqz v2, :cond_0

    if-nez p3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSelectObjectList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSelectObjectList:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mControl:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mControl:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->isTouchEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->closeControl()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSelectObjectList:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSelectObjectList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSelectObjectList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_3
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSelectObjectList:Ljava/util/ArrayList;

    if-nez p1, :cond_4

    const-string v2, "SpenSimpleSurfaceView"

    const-string v3, "onSelectObject ObjectList is nulll"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "SpenSimpleSurfaceView"

    const-string v3, "onSelectObject : selected list size is zero."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Landroid/graphics/PointF;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {v8, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v18, Landroid/graphics/RectF;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/RectF;-><init>()V

    const/16 v17, 0x0

    new-instance v9, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-direct {v9, v2, v3, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v2, "SpenSimpleSurfaceView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSelectObject : objectList.size() ="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_8

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    if-nez v17, :cond_6

    const-string v2, "SpenSimpleSurfaceView"

    const-string v3, "onSelectObject : object is null."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_6
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getPan()Landroid/graphics/PointF;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v3, v12, Landroid/graphics/PointF;->x:F

    iget v7, v12, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getZoomRatio()F

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v2, v3, v7, v1}, Lcom/samsung/android/sdk/pen/util/SpenEngineUtil;->relativeCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_8
    const-string v2, "SpenSimpleSurfaceView"

    const-string v3, "onSelectObject : boundaryRect finished"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mControlListener:Lcom/samsung/android/sdk/pen/engine/SpenControlListener;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mControlListener:Lcom/samsung/android/sdk/pen/engine/SpenControlListener;

    move-object/from16 v3, p1

    move/from16 v7, p3

    invoke-interface/range {v2 .. v8}, Lcom/samsung/android/sdk/pen/engine/SpenControlListener;->onCreated(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ILandroid/graphics/PointF;)Z

    move-result v10

    if-nez v10, :cond_9

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getSelectedObjectCount()I

    move-result v2

    if-nez v2, :cond_a

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->selectObject(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_a
    new-instance v11, Lcom/samsung/android/sdk/pen/engine/SpenControlList;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-direct {v11, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)V

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->setStyle(I)V

    invoke-virtual {v11, v5}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->setContextMenu(Ljava/util/ArrayList;)V

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->setObject(Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setControl(Lcom/samsung/android/sdk/pen/engine/SpenControlBase;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v13

    const-string v2, "SpenSimpleSurfaceView"

    const-string v3, "selectObject : object is not in current layer"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v13

    const-string v2, "SpenSimpleSurfaceView"

    const-string v3, "selectObject : pageDoc is not loaded"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getSelectedObjectCount()I

    move-result v2

    if-nez v2, :cond_c

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v2, v15}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->selectObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_c
    invoke-virtual {v15}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const-string v2, "SpenSimpleSurfaceView"

    const-string v3, "Do not support object in SpenSimpleSurfaceView"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mControlListener:Lcom/samsung/android/sdk/pen/engine/SpenControlListener;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mControlListener:Lcom/samsung/android/sdk/pen/engine/SpenControlListener;

    move-object/from16 v3, p1

    move/from16 v7, p3

    invoke-interface/range {v2 .. v8}, Lcom/samsung/android/sdk/pen/engine/SpenControlListener;->onCreated(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ILandroid/graphics/PointF;)Z

    move-result v2

    if-nez v2, :cond_d

    const/4 v2, 0x1

    goto/16 :goto_0

    :catch_2
    move-exception v13

    const-string v2, "SpenSimpleSurfaceView"

    const-string v3, "selectObject : object is not in current layer"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto/16 :goto_0

    :catch_3
    move-exception v13

    const-string v2, "SpenSimpleSurfaceView"

    const-string v3, "selectObject : pageDoc is not loaded"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto/16 :goto_0

    :pswitch_0
    const-string v2, "SpenSimpleSurfaceView"

    const-string v3, "TYPE_STROKE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Lcom/samsung/android/sdk/pen/engine/SpenControlStroke;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-direct {v11, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenControlStroke;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)V

    move-object v2, v11

    check-cast v2, Lcom/samsung/android/sdk/pen/engine/SpenControlStroke;

    check-cast v15, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;

    invoke-virtual {v2, v15}, Lcom/samsung/android/sdk/pen/engine/SpenControlStroke;->setObject(Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;)V

    goto :goto_2

    :cond_d
    if-eqz v11, :cond_e

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->setStyle(I)V

    invoke-virtual {v11, v5}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->setContextMenu(Ljava/util/ArrayList;)V

    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->setFocusable(Z)V

    invoke-virtual {v11}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->requestFocus()Z

    const v2, 0x3ac90

    invoke-virtual {v11, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->setNextFocusDownId(I)V

    new-instance v2, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$2;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)V

    invoke-virtual {v11, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setControl(Lcom/samsung/android/sdk/pen/engine/SpenControlBase;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onShowRemoverMessage()V
    .locals 3

    const-string v0, "SpenSimpleSurfaceView"

    const-string v1, "onShowRemoverMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pen_string_unable_to_erase_heavy_lines"

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getResourceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private onTouchControl(Landroid/view/MotionEvent;I)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v3, 0xd3

    if-ne v0, v3, :cond_1

    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsControlSelect:Z

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mControl:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mControl:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->isTouchEnabled()Z

    move-result v3

    if-ne v3, v1, :cond_7

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mControl:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getStyle()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7

    iget-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsControlSelect:Z

    if-ne v3, v1, :cond_5

    if-ne v0, v1, :cond_2

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsControlSelect:Z

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mControl:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_3
    :goto_0
    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenStartX:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenStartY:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_4
    :goto_1
    return v1

    :cond_5
    if-eq v0, v1, :cond_6

    const/16 v2, 0xd4

    if-ne v0, v2, :cond_3

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->closeControl()V

    goto :goto_0

    :cond_7
    move v1, v2

    goto :goto_1
.end method

.method private onZoom(FFF)V
    .locals 9

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getCanvasWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenWidth:I

    int-to-float v1, v1

    div-float/2addr v1, p3

    sub-float v3, v0, v1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsStretch:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mStretchWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenWidth:I

    int-to-float v1, v1

    div-float/2addr v1, p3

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mStretchRatio:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    div-float v3, v0, v1

    :cond_0
    cmpg-float v0, v3, v2

    if-gez v0, :cond_1

    const/4 v3, 0x0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getCanvasHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenHeight:I

    int-to-float v1, v1

    div-float/2addr v1, p3

    sub-float v4, v0, v1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsStretch:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mStretchHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenHeight:I

    int-to-float v1, v1

    div-float/2addr v1, p3

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mStretchRatio:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float v4, v0, v1

    :cond_2
    cmpg-float v0, v4, v2

    if-gez v0, :cond_3

    const/4 v4, 0x0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getCanvasWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v5, v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getCanvasHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v6, v0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsStretch:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getCanvasWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mStretchRatio:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v1

    float-to-int v5, v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getCanvasHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mStretchRatio:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v1

    float-to-int v6, v0

    :cond_4
    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenWidth:I

    if-ge v5, v0, :cond_7

    move v0, v5

    :goto_0
    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mRtoCvsItstFrmWidth:I

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenHeight:I

    if-ge v6, v0, :cond_8

    move v0, v6

    :goto_1
    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mRtoCvsItstFrmHeight:I

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenWidth:I

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mRtoCvsItstFrmWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenStartX:I

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenHeight:I

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mRtoCvsItstFrmHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenStartY:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScroll:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->setDeltaValue(FFFFII)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScroll:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mRtoCvsItstFrmWidth:I

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mRtoCvsItstFrmHeight:I

    iget v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenStartX:I

    iget v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenStartY:I

    invoke-virtual {v0, v1, v2, v7, v8}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->setScreenInfo(IIII)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSmartScaleGestureDetector:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->onZoom(FFF)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSmartScaleGestureDetector:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->setLimitHeight(FF)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSpenHapticSound:Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSpenHapticSound:Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mRtoCvsItstFrmWidth:I

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mRtoCvsItstFrmHeight:I

    iget v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenStartX:I

    iget v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenStartY:I

    invoke-virtual {v0, v1, v2, v7, v8}, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->setScreenInfo(IIII)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mZoomListener:Lcom/samsung/android/sdk/pen/engine/SpenZoomListener;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mZoomListener:Lcom/samsung/android/sdk/pen/engine/SpenZoomListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/engine/SpenZoomListener;->onZoom(FFF)V

    :cond_6
    return-void

    :cond_7
    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenWidth:I

    goto :goto_0

    :cond_8
    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenHeight:I

    goto :goto_1
.end method


# virtual methods
.method public cancelStroke()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsStrokeDrawing:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSpenHapticSound:Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSpenHapticSound:Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->cancelStroke()V

    :cond_1
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_cancelStroke(J)V

    goto :goto_0
.end method

.method public captureCurrentView(Z)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-string v2, "SpenSimpleSurfaceView"

    const-string v3, "Native canvas is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenWidth:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenHeight:I

    if-nez v2, :cond_2

    :cond_1
    const-string v2, "SpenSimpleSurfaceView"

    const-string v3, "Not yet to create view"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x4

    const-string v3, " : ScreenWidth or ScreenHeight is zero."

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    if-nez p1, :cond_3

    :try_start_0
    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mRtoCvsItstFrmWidth:I

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mRtoCvsItstFrmHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v2, v3, v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_captureCurrentView(JLandroid/graphics/Bitmap;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SpenSimpleSurfaceView"

    const-string v3, "Failed to create bitmap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    const-string v3, " : fail createBitmap."

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_1
    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenWidth:I

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public capturePage(FI)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v6, 0x0

    iget-wide v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_1

    const-string v7, "SpenSimpleSurfaceView"

    const-string v8, "Native canvas is null!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getCanvasWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getCanvasHeight()I

    move-result v2

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-wide v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v8, v9, v1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_capturePage(JLandroid/graphics/Bitmap;I)Z

    move-result v0

    if-eqz v0, :cond_2

    int-to-float v7, v3

    mul-float/2addr v7, p1

    float-to-int v7, v7

    int-to-float v8, v2

    mul-float/2addr v8, p1

    float-to-int v8, v8

    const/4 v9, 0x1

    invoke-static {v1, v7, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    move-object v5, v6

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v7, "SpenSimpleSurfaceView"

    const-string v8, "Failed to create bitmap"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x2

    const-string v8, " : fail createBitmap."

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public close()V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mDetachReceiver:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$DetachReceiver;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mDetachReceiver:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$DetachReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mDetachReceiver:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$DetachReceiver;

    :cond_0
    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_finalize(J)V

    iput-wide v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSpenHapticSound:Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSpenHapticSound:Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->close()V

    iput-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSpenHapticSound:Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHolderCallback:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$HolderCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    iput-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHolderCallback:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$HolderCallback;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    iput-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mOrientationListener:Landroid/view/OrientationEventListener;

    return-void
.end method

.method public closeControl()V
    .locals 6

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSelectObjectList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mControl:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mControl:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public getBlankColor()I
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "SpenSimpleSurfaceView"

    const-string v1, "Native canvas is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_getBlankColor(J)I

    move-result v0

    goto :goto_0
.end method

.method public getCanvasHeight()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCanvasWidth()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getControl()Lcom/samsung/android/sdk/pen/engine/SpenControlBase;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mControl:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    return-object v0
.end method

.method public getEraserSettingInfo()Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;
    .locals 6

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;-><init>()V

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_getEraserSize(J)F

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;->size:F

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_getEraserType(J)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;->type:I

    goto :goto_0
.end method

.method public getFrameStartPosition()Landroid/graphics/PointF;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenStartX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenStartY:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method public getMaxZoomRatio()F
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "SpenSimpleSurfaceView"

    const-string v1, "Native canvas is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_getMaxZoomRatio(J)F

    move-result v0

    goto :goto_0
.end method

.method public getMinZoomRatio()F
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "SpenSimpleSurfaceView"

    const-string v1, "Native canvas is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_getMinZoomRatio(J)F

    move-result v0

    goto :goto_0
.end method

.method public getPan()Landroid/graphics/PointF;
    .locals 6

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const-string v1, "SpenSimpleSurfaceView"

    const-string v2, "Native canvas is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v2, v3, v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_getPan(JLandroid/graphics/PointF;)V

    goto :goto_0
.end method

.method public getPenSettingInfo()Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;
    .locals 6

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;-><init>()V

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_getPenStyle(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_getPenSize(J)F

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_getPenColor(J)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_isPenCurve(J)Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isCurvable:Z

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_getAdvancedPenSetting(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRemoverSettingInfo()Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;
    .locals 6

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;-><init>()V

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_getRemoverType(J)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->type:I

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_getRemoverSize(J)F

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->size:F

    goto :goto_0
.end method

.method public getSelectionSettingInfo()Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;
    .locals 6

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;-><init>()V

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_getSelectionType(J)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;->type:I

    goto :goto_0
.end method

.method public getToolTypeAction(I)I
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "SpenSimpleSurfaceView"

    const-string v1, "Native canvas is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_getToolTypeAction(JI)I

    move-result v0

    goto :goto_0
.end method

.method public getZoomRatio()F
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "SpenSimpleSurfaceView"

    const-string v1, "Native canvas is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_getZoomRatio(J)F

    move-result v0

    goto :goto_0
.end method

.method public isScrollBarEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScroll:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->isScroll()Z

    move-result v0

    return v0
.end method

.method public isToolTipEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsToolTip:Z

    return v0
.end method

.method public isZoomable()Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_isZoomable(J)Z

    move-result v0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScroll:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScroll:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScroll:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsToolTip:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->onHoverEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mControl:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mControl:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getObjectList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mControl:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getObjectList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->isObjectContained(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mControl:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->onCanvasHoverEnter()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    sub-int v1, p4, p2

    sub-int v0, p5, p3

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenWidth:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenHeight:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScroll:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->setScreenSize(II)V

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v2, v3, v1, v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_setScreenSize(JII)V

    invoke-super/range {p0 .. p5}, Landroid/view/SurfaceView;->onLayout(ZIIII)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-nez v24, :cond_0

    const/16 v24, 0x0

    :goto_0
    return v24

    :cond_0
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getToolTypeAction(I)I

    move-result v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->OnPreTouch(Landroid/view/MotionEvent;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSpenZoomAnimation:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSpenZoomAnimation:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->isWorking()Z

    move-result v24

    if-eqz v24, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenStartX:I

    move/from16 v24, v0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenStartY:I

    move/from16 v25, v0

    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/16 v24, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->onTouchControl(Landroid/view/MotionEvent;I)Z

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    const/16 v24, 0x1

    goto :goto_0

    :cond_2
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->invalidate(IIII)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v24

    move/from16 v0, v24

    and-int/lit16 v6, v0, 0xff

    if-nez v6, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsToolTip:Z

    move/from16 v24, v0

    if-eqz v24, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    const/16 v24, 0x2

    move/from16 v0, v24

    if-eq v7, v0, :cond_3

    const/16 v24, 0x8

    move/from16 v0, v24

    if-ne v7, v0, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->setPointerDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v26

    sub-long v8, v24, v26

    const-wide/16 v24, 0x258

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mTouchProcessingTime:J

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    cmp-long v24, v8, v24

    if-lez v24, :cond_7

    const/16 v24, 0x1

    :goto_1
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsSkipTouch:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsSkipTouch:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    const-string v24, "SpenSimpleSurfaceView"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "skiptouch action = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " eventTime = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " downTime = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " systemTime = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " diffTime = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " mTouchProcessingTime = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mTouchProcessingTime:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mTouchProcessingTime:J

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    move-wide/from16 v16, v22

    move-wide/from16 v12, v22

    move-wide/from16 v18, v22

    const-string v24, "SpenSimpleSurfaceView"

    const-string v25, "Performance touch process start"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPreTouchListener:Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;

    move-object/from16 v24, v0

    if-eqz v24, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPreTouchListener:Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_8

    const-string v24, "SpenSimpleSurfaceView"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Performance pretouch listener has consumed action = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x1

    goto/16 :goto_0

    :cond_7
    const/16 v24, 0x0

    goto/16 :goto_1

    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSpenHapticSound:Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;

    move-object/from16 v24, v0

    if-eqz v24, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSpenHapticSound:Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->onTouchHaptic(Landroid/view/MotionEvent;I)Z

    move-result v24

    if-eqz v24, :cond_9

    const/16 v24, 0x1

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenStartX:I

    move/from16 v24, v0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenStartY:I

    move/from16 v25, v0

    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSmartScaleGestureDetector:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScroll:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->onTouch(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenStartX:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenStartY:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    move-wide/from16 v24, v0

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p1

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_onTouch(JLandroid/view/MotionEvent;I)Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->OnPostTouch(Landroid/view/MotionEvent;I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenStartX:I

    move/from16 v24, v0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenStartY:I

    move/from16 v25, v0

    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mTouchListener:Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;

    move-object/from16 v24, v0

    if-eqz v24, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mTouchListener:Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v22

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mTouchProcessingTime:J

    const-string v24, "SpenSimpleSurfaceView"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Performance touch process end total = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    sub-long v26, v26, v22

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " ms pretouch = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sub-long v26, v18, v22

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " ms spenview = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sub-long v26, v12, v18

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " ms posttouch = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sub-long v26, v16, v12

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " ms action = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenStartX:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenStartY:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/16 v24, 0x1

    goto/16 :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    const-string v0, "SpenSimpleSurfaceView"

    const-string v1, "onWindowFocusChanged() - Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const-string v0, "SpenSimpleSurfaceView"

    const-string v1, "onWindowFocusChanged() - hasWindowFocus : true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSpenHapticSound:Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSpenHapticSound:Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->registerPensoundSolution()V

    :cond_0
    :goto_0
    const-string v0, "SpenSimpleSurfaceView"

    const-string v1, "onWindowFocusChanged() - End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "SpenSimpleSurfaceView"

    const-string v1, "onWindowFocusChanged() - hasWindowFocus : false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSpenHapticSound:Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSpenHapticSound:Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->unregisterPensoundSolution()V

    goto :goto_0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0xd

    const-string v1, " : setBackground not supported"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0xd

    const-string v1, " : setBackgroundColor not supported"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    return-void
.end method

.method public setBackgroundColorChangeListener(Ljava/lang/Object;Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface$SpenBackgroundColorChangeListener;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const-string v1, "SpenSimpleSurfaceView"

    const-string v4, "setBackgroundColorListener"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mBackgroundColorChangeListener:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface$SpenBackgroundColorChangeListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->isValid()Z

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mBackgroundColorChangeListener:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface$SpenBackgroundColorChangeListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getBackgroundColor()I

    move-result v1

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    const/16 v4, 0xff

    if-ne v1, v4, :cond_1

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->hasBackgroundImage()Z

    move-result v4

    if-ne v4, v2, :cond_2

    :goto_1
    or-int v0, v1, v2

    const-string v1, "SpenSimpleSurfaceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Listener enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mMagicPenEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mMagicPenEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mMagicPenEnabled:Z

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mBackgroundColorChangeListener:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface$SpenBackgroundColorChangeListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface$SpenBackgroundColorChangeListener;->onChanged(Z)V

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mMagicPenEnabled:Z

    :cond_0
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0xd

    const-string v1, " : setBackgroundDrawable not supported"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0xd

    const-string v1, " : setBackgroundResource not supported"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    return-void
.end method

.method public setBlankColor(I)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_setBlankColor(JI)V

    goto :goto_0
.end method

.method public setColorPickerListener(Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mColorPickerListener:Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;

    return-void
.end method

.method public setControl(Lcom/samsung/android/sdk/pen/engine/SpenControlBase;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x7

    const-string v2, " control instance must not be null"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mControl:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mControl:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->close()V

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mControl:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    :cond_1
    const-string v1, "SpenSimpleSurfaceView"

    const-string v2, "setControl"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsControlSelect:Z

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mControl:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mControl:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    new-instance v2, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$BaseControlListener;

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$BaseControlListener;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$1;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->setListener(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mControl:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->fit()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mControl:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getObjectList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSelectObjectList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mControl:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public setControlListener(Lcom/samsung/android/sdk/pen/engine/SpenControlListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mControlListener:Lcom/samsung/android/sdk/pen/engine/SpenControlListener;

    return-void
.end method

.method public setDoubleTapZoomable(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSpenZoomAnimation:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSpenZoomAnimation:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->setDoubleTapEnable(Z)V

    goto :goto_0
.end method

.method public setEraserChangeListener(Lcom/samsung/android/sdk/pen/engine/SpenEraserChangeListener;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mEraserChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenEraserChangeListener;

    goto :goto_0
.end method

.method public setEraserSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;)V
    .locals 5

    const/4 v4, 0x5

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsEraserDrawing:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsToolTip:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mToolTip:Lcom/samsung/android/sdk/pen/engine/SpenToolTip;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getToolTypeAction(I)I

    move-result v0

    if-eq v0, v4, :cond_2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getToolTypeAction(I)I

    move-result v0

    if-eq v0, v4, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getToolTypeAction(I)I

    move-result v0

    if-eq v0, v4, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getToolTypeAction(I)I

    move-result v0

    if-eq v0, v4, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsStretch:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mToolTip:Lcom/samsung/android/sdk/pen/engine/SpenToolTip;

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;->size:F

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mStretchRatio:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mStretchRatio:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->getDrawableEraserImage(FFF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->setPointerDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;->type:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_setEraserType(JI)V

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;->size:F

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_setEraserSize(JF)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSpenHapticSound:Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSpenHapticSound:Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_getEraserSize(J)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->setEraserSize(F)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mEraserChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenEraserChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mEraserChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenEraserChangeListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenEraserChangeListener;->onChanged(Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mToolTip:Lcom/samsung/android/sdk/pen/engine/SpenToolTip;

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;->size:F

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->getDrawableEraserImage(F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->setPointerDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public setForceStretchView(ZII)Z
    .locals 7

    const/4 v6, 0x0

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsStretch:Z

    iput p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mStretchWidth:I

    iput p3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mStretchHeight:I

    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsStretch:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getCanvasWidth()I

    move-result v2

    int-to-float v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getCanvasHeight()I

    move-result v2

    int-to-float v0, v2

    cmpl-float v2, v1, v6

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mStretchRatio:Landroid/graphics/PointF;

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mStretchWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/PointF;->x:F

    :cond_1
    cmpl-float v2, v0, v6

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mStretchRatio:Landroid/graphics/PointF;

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mStretchHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/PointF;->y:F

    :cond_2
    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v2, v3, p1, p2, p3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_setForceStretchView(JZII)Z

    move-result v2

    goto :goto_0
.end method

.method public setLongPressListener(Lcom/samsung/android/sdk/pen/engine/SpenLongPressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mLongPressListener:Lcom/samsung/android/sdk/pen/engine/SpenLongPressListener;

    return-void
.end method

.method public setMaxZoomRatio(F)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "SpenSimpleSurfaceView"

    const-string v1, "Native canvas is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_setMaxZoomRatio(JF)Z

    move-result v0

    goto :goto_0
.end method

.method public setMinZoomRatio(F)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "SpenSimpleSurfaceView"

    const-string v1, "Native canvas is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_setMinZoomRatio(JF)Z

    move-result v0

    goto :goto_0
.end method

.method public setPageDoc(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;Z)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    :goto_0
    return v3

    :cond_0
    if-nez p1, :cond_1

    const-string v1, "SpenSimpleSurfaceView"

    const-string v2, "setPageDoc is closed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v4, v5, v8, p2}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_setPageDoc(JLcom/samsung/android/sdk/pen/document/SpenPageDoc;Z)Z

    iput-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "SpenSimpleSurfaceView"

    const-string v3, "setPageDoc is same"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->isValid()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "SpenSimpleSurfaceView"

    const-string v2, "setPageDoc is closed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSpenHapticSound:Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSpenHapticSound:Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->registerPensoundSolution()V

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->closeControl()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    iget-wide v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v4, v5, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_setPageDoc(JLcom/samsung/android/sdk/pen/document/SpenPageDoc;Z)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "SpenSimpleSurfaceView"

    const-string v2, "setPageDoc failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->isValid()Z

    move-result v1

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mBackgroundColorChangeListener:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface$SpenBackgroundColorChangeListener;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getBackgroundColor()I

    move-result v1

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    const/16 v4, 0xff

    if-ne v1, v4, :cond_8

    move v1, v2

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->hasBackgroundImage()Z

    move-result v4

    if-ne v4, v2, :cond_6

    move v3, v2

    :cond_6
    or-int v0, v1, v3

    const-string v1, "SpenSimpleSurfaceView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPageDoc enable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mMagicPenEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mMagicPenEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mMagicPenEnabled:Z

    if-eq v0, v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mBackgroundColorChangeListener:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface$SpenBackgroundColorChangeListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface$SpenBackgroundColorChangeListener;->onChanged(Z)V

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mMagicPenEnabled:Z

    :cond_7
    move v3, v2

    goto/16 :goto_0

    :cond_8
    move v1, v3

    goto :goto_1
.end method

.method public setPan(Landroid/graphics/PointF;)V
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_setPan(JFFZ)V

    goto :goto_0
.end method

.method public setPenChangeListener(Lcom/samsung/android/sdk/pen/engine/SpenPenChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPenChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenPenChangeListener;

    return-void
.end method

.method public setPenDetachmentListener(Lcom/samsung/android/sdk/pen/engine/SpenPenDetachmentListener;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPenDetachmentListener:Lcom/samsung/android/sdk/pen/engine/SpenPenDetachmentListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPenDetachmentListener:Lcom/samsung/android/sdk/pen/engine/SpenPenDetachmentListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mDetachReceiver:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$DetachReceiver;

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.pen.INSERT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.pen.INSERT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$DetachReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$DetachReceiver;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$1;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mDetachReceiver:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$DetachReceiver;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mDetachReceiver:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$DetachReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public setPenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V
    .locals 6

    const/4 v4, 0x5

    const/4 v5, 0x2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsToolTip:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mToolTip:Lcom/samsung/android/sdk/pen/engine/SpenToolTip;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getToolTypeAction(I)I

    move-result v0

    if-eq v0, v4, :cond_3

    invoke-virtual {p0, v5}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getToolTypeAction(I)I

    move-result v0

    if-eq v0, v4, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getToolTypeAction(I)I

    move-result v0

    if-eq v0, v4, :cond_3

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getToolTypeAction(I)I

    move-result v0

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mToolTip:Lcom/samsung/android/sdk/pen/engine/SpenToolTip;

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget v4, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->getDrawableImage(Ljava/lang/String;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->setPointerDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getToolTypeAction(I)I

    move-result v0

    if-eq v0, v5, :cond_2

    invoke-virtual {p0, v5}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getToolTypeAction(I)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    iget-object v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->setPenHoverPoint(Ljava/lang/String;)V

    :cond_3
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_setPenStyle(JLjava/lang/String;)Z

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_setPenColor(JI)V

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_setPenSize(JF)V

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    iget-boolean v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isCurvable:Z

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_enablePenCurve(JZ)V

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_setAdvancedPenSetting(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSpenHapticSound:Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSpenHapticSound:Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;

    iget-object v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_getPenSize(J)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->setPenSize(Ljava/lang/String;F)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPenChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenPenChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPenChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenPenChangeListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenPenChangeListener;->onChanged(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    goto/16 :goto_0
.end method

.method public setPreTouchListener(Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPreTouchListener:Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;

    return-void
.end method

.method public setRemoverChangeListener(Lcom/samsung/android/sdk/pen/engine/SpenRemoverChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mRemoverChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenRemoverChangeListener;

    return-void
.end method

.method public setRemoverSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x5

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsToolTip:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mToolTip:Lcom/samsung/android/sdk/pen/engine/SpenToolTip;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v5}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getToolTypeAction(I)I

    move-result v0

    if-eq v0, v4, :cond_2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getToolTypeAction(I)I

    move-result v0

    if-eq v0, v4, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getToolTypeAction(I)I

    move-result v0

    if-eq v0, v4, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getToolTypeAction(I)I

    move-result v0

    if-eq v0, v4, :cond_2

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->type:I

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsStretch:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mToolTip:Lcom/samsung/android/sdk/pen/engine/SpenToolTip;

    const/high16 v2, 0x41a00000    # 20.0f

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mStretchRatio:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mStretchRatio:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->getDrawableRemoverImage(FFF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->setPointerDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->type:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_setRemoverType(JI)V

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->size:F

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_setRemoverSize(JF)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSpenHapticSound:Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSpenHapticSound:Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_getRemoverSize(J)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenHapticSound;->setRemoverSize(F)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mRemoverChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenRemoverChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mRemoverChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenRemoverChangeListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenRemoverChangeListener;->onChanged(Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mToolTip:Lcom/samsung/android/sdk/pen/engine/SpenToolTip;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->getDrawableRemoverImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->setPointerDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_5
    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->type:I

    if-ne v0, v5, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsStretch:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mToolTip:Lcom/samsung/android/sdk/pen/engine/SpenToolTip;

    const/high16 v2, 0x42200000    # 40.0f

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mStretchRatio:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mStretchRatio:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->getDrawableRemoverImage(FFF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->setPointerDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mToolTip:Lcom/samsung/android/sdk/pen/engine/SpenToolTip;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->getDrawableRemoverImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->setPointerDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public setScrollBarEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScroll:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->enableScroll(Z)V

    return-void
.end method

.method public setSelectionChangeListener(Lcom/samsung/android/sdk/pen/engine/SpenSelectionChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSelectionChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenSelectionChangeListener;

    return-void
.end method

.method public setSelectionSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;)V
    .locals 5

    const/4 v4, 0x5

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsToolTip:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mToolTip:Lcom/samsung/android/sdk/pen/engine/SpenToolTip;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getToolTypeAction(I)I

    move-result v0

    if-eq v0, v4, :cond_2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getToolTypeAction(I)I

    move-result v0

    if-eq v0, v4, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getToolTypeAction(I)I

    move-result v0

    if-eq v0, v4, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getToolTypeAction(I)I

    move-result v0

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mToolTip:Lcom/samsung/android/sdk/pen/engine/SpenToolTip;

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;->type:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->getDrawableSelectionImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->setPointerDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;->type:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_setSelectionType(JI)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSelectionChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenSelectionChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSelectionChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenSelectionChangeListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenSelectionChangeListener;->onChanged(Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;)V

    goto :goto_0
.end method

.method public setSetPageDocListener(Lcom/samsung/android/sdk/pen/engine/SpenSetPageDocListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSpenSetPageDocListener:Lcom/samsung/android/sdk/pen/engine/SpenSetPageDocListener;

    return-void
.end method

.method public setToolTipEnabled(Z)V
    .locals 3

    const-string v0, "SpenSimpleSurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setToolTipEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsToolTip:Z

    return-void
.end method

.method public setToolTypeAction(II)V
    .locals 8

    const/high16 v7, 0x41a00000    # 20.0f

    const/4 v6, 0x0

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsEraserDrawing:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsStrokeDrawing:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getToolTypeAction(I)I

    move-result v1

    if-eq p2, v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->cancelStroke()V

    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsToolTip:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mToolTip:Lcom/samsung/android/sdk/pen/engine/SpenToolTip;

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    if-eq p2, v1, :cond_3

    const/16 v1, 0x8

    if-ne p2, v1, :cond_5

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mToolTip:Lcom/samsung/android/sdk/pen/engine/SpenToolTip;

    iget-wide v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_getPenStyle(J)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_getPenColor(J)I

    move-result v4

    iget-wide v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_getPenSize(J)F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->getDrawableImage(Ljava/lang/String;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->setPointerDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_getPenStyle(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->setPenHoverPoint(Ljava/lang/String;)V

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScroll:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->setToolTypeAction(II)V

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v2, v3, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_setToolTypeAction(JII)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    if-ne p2, v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mToolTip:Lcom/samsung/android/sdk/pen/engine/SpenToolTip;

    invoke-virtual {v2, v7}, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->getDrawableEraserImage(F)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->setPointerDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    invoke-virtual {v1, v6}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->setPenHoverPoint(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const/4 v1, 0x4

    if-ne p2, v1, :cond_b

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_getRemoverType(J)I

    move-result v0

    if-nez v0, :cond_9

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsStretch:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mToolTip:Lcom/samsung/android/sdk/pen/engine/SpenToolTip;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mStretchRatio:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mStretchRatio:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v7, v3, v4}, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->getDrawableRemoverImage(FFF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->setPointerDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    invoke-virtual {v1, v6}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->setPenHoverPoint(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mToolTip:Lcom/samsung/android/sdk/pen/engine/SpenToolTip;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->getDrawableRemoverImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->setPointerDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_9
    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsStretch:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mToolTip:Lcom/samsung/android/sdk/pen/engine/SpenToolTip;

    const/high16 v3, 0x42200000    # 40.0f

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mStretchRatio:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mStretchRatio:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->getDrawableRemoverImage(FFF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->setPointerDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mToolTip:Lcom/samsung/android/sdk/pen/engine/SpenToolTip;

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->getDrawableRemoverImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->setPointerDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_b
    const/4 v1, 0x5

    if-ne p2, v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mToolTip:Lcom/samsung/android/sdk/pen/engine/SpenToolTip;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->getDrawableHoverImage()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->setPointerDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    invoke-virtual {v1, v6}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->setPenHoverPoint(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    const/4 v1, 0x6

    if-ne p2, v1, :cond_d

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mToolTip:Lcom/samsung/android/sdk/pen/engine/SpenToolTip;

    iget-wide v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_getSelectionType(J)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->getDrawableSelectionImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->setPointerDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    invoke-virtual {v1, v6}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->setPenHoverPoint(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    invoke-virtual {v1, v6}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->setPointerDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    invoke-virtual {v1, v6}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->setPenHoverPoint(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public setTouchListener(Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mTouchListener:Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;

    return-void
.end method

.method public setTransparentBackgroundColor(ZI)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_setTransparentBackgroundColor(JZI)Z

    move-result v0

    goto :goto_0
.end method

.method public setTransparentBackgroundImage(Landroid/graphics/Bitmap;I)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_setTransparentBackgroundImage(JLandroid/graphics/Bitmap;I)Z

    move-result v0

    goto :goto_0
.end method

.method public setZoom(FFF)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_setZoom(JFFF)V

    goto :goto_0
.end method

.method public setZoomAnimationListener(Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimationListener;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mZoomAnimationListener:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimationListener;

    goto :goto_0
.end method

.method public setZoomListener(Lcom/samsung/android/sdk/pen/engine/SpenZoomListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mZoomListener:Lcom/samsung/android/sdk/pen/engine/SpenZoomListener;

    return-void
.end method

.method public setZoomable(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_enableZoom(JZ)V

    goto :goto_0
.end method

.method public update()V
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_update(J)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->isValid()Z

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mBackgroundColorChangeListener:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface$SpenBackgroundColorChangeListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getBackgroundColor()I

    move-result v1

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    const/16 v4, 0xff

    if-ne v1, v4, :cond_2

    move v1, v2

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->hasBackgroundImage()Z

    move-result v4

    if-ne v4, v2, :cond_3

    :goto_2
    or-int v0, v1, v2

    const-string v1, "SpenSimpleSurfaceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mMagicPenEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mMagicPenEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mMagicPenEnabled:Z

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mBackgroundColorChangeListener:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface$SpenBackgroundColorChangeListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface$SpenBackgroundColorChangeListener;->onChanged(Z)V

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mMagicPenEnabled:Z

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2
.end method

.method public updateRedo([Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "SpenSimpleSurfaceView"

    const-string v1, "The parameter \'userDataList\' cannot be null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->closeControl()V

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    array-length v2, p1

    invoke-static {v0, v1, p1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_updateRedo(J[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;I)Z

    goto :goto_0
.end method

.method public updateUndo([Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "SpenSimpleSurfaceView"

    const-string v1, "The parameter \'userDataList\' cannot be null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->closeControl()V

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->nativeSimple:J

    array-length v2, p1

    invoke-static {v0, v1, p1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->Native_updateUndo(J[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;I)Z

    goto :goto_0
.end method
