.class public Lcom/sec/android/gallery3d/glcore/GlRootView;
.super Lcom/sec/android/gallery3d/glcore/LibGLRootView;
.source "GlRootView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/FutureListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "WrongCall"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;,
        Lcom/sec/android/gallery3d/glcore/GlRootView$RotationListener;,
        Lcom/sec/android/gallery3d/glcore/GlRootView$ScaleListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/gallery3d/glcore/LibGLRootView;",
        "Lcom/sec/android/gallery3d/util/FutureListener",
        "<",
        "Lcom/sec/android/gallery3d/glcore/GlObject;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTION_ACCESSIBILITY_FLING:I = 0x3eb

.field private static final BUTTON_STYLUS_PRIMARY:I = 0x20

.field private static final CMD_SYS_RESET:I = 0x2

.field private static final CMD_SYS_SURFACECHG:I = 0x1

.field private static final CMD_TARGET_LAYER:I = 0x1

.field private static final CMD_TARGET_OBJ:I = 0x3

.field private static final CMD_TARGET_VIEW:I = 0x2

.field private static final FeatureIsTabletEnabed:Z

.field private static final FeatureSupportKnoxDesktop:Z

.field private static final MAX_CMD_QUEUE_SIZE:I = 0x400

.field private static final RENDER_LOGIC_GED:I = 0x1

.field private static final RENDER_LOGIC_NONE:I = 0x0

.field private static final RENDER_LOGIC_SEC:I = 0x2

.field private static final RESET_TIMER_WITH_DELAY:[Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "GlRootView"


# instance fields
.field private WHITE_THEME_CLEARCOLOR_ALPHA:F

.field private WHITE_THEME_CLEARCOLOR_BLUE:F

.field private WHITE_THEME_CLEARCOLOR_GREEN:F

.field private WHITE_THEME_CLEARCOLOR_RED:F

.field private mAccessibliityNodeProvider:Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;

.field private mAddedLayerPosition:I

.field private final mAnimationMgr:Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;

.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private mBackground:Lcom/sec/android/gallery3d/glcore/GlBackground;

.field mBgColorAlpha:F

.field mBgColorBlue:F

.field mBgColorGreen:F

.field mBgColorRed:F

.field private final mClipRect:Landroid/graphics/Rect;

.field private mClipRetryCount:I

.field private final mCmdQueue:[Lcom/sec/android/gallery3d/glcore/GlCmd;

.field private mCmdQueueRD:I

.field private mCmdQueueWR:I

.field public mDragDownFromSelectAll:Z

.field private mFirstDraw:Z

.field private final mGLUtil:Lcom/sec/android/gallery3d/glcore/TUtils;

.field private final mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

.field private mGlActive:Z

.field private final mGlConfig:Lcom/sec/android/gallery3d/glcore/GlConfig;

.field private mKnoxDesktopMode:Z

.field private mMotionEventType:I

.field mMotionTarget:Ljava/lang/Object;

.field private mMotionTargetType:I

.field mObjectZPosChanged:Z

.field private mOnClipDataListener:Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListener;

.field private mRefreshEnabled:Z

.field private mRenderLogic:I

.field private mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

.field private mRootLayerNew:Lcom/sec/android/gallery3d/glcore/GlLayer;

.field public mRootObject:Lcom/sec/android/gallery3d/glcore/GlObject;

.field private final mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

.field private final mRotationDetector:Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;

.field private final mRotationListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/glcore/GlObject;",
            ">;"
        }
    .end annotation
.end field

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mToolType:I

.field mUploadBmCache:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/glcore/GlRootView;->FeatureIsTabletEnabed:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->SupportKnoxDesktop:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/glcore/GlRootView;->FeatureSupportKnoxDesktop:Z

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;->RESET_TIMER_WITH_DELAY:Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/glcore/GlRootView;->RESET_TIMER_WITH_DELAY:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/high16 v2, 0x3f700000    # 0.9375f

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGlActive:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mClipRect:Landroid/graphics/Rect;

    iput v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mClipRetryCount:I

    iput v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderLogic:I

    sget-boolean v1, Lcom/sec/android/gallery3d/glcore/GlRootView;->FeatureIsTabletEnabed:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->WHITE_THEME_CLEARCOLOR_RED:F

    sget-boolean v1, Lcom/sec/android/gallery3d/glcore/GlRootView;->FeatureIsTabletEnabed:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->WHITE_THEME_CLEARCOLOR_GREEN:F

    sget-boolean v1, Lcom/sec/android/gallery3d/glcore/GlRootView;->FeatureIsTabletEnabed:Z

    if-eqz v1, :cond_5

    :goto_2
    iput v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->WHITE_THEME_CLEARCOLOR_BLUE:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->WHITE_THEME_CLEARCOLOR_ALPHA:F

    iput-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mAddedLayerPosition:I

    iput-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayerNew:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iput-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mMotionTarget:Ljava/lang/Object;

    iput v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mMotionTargetType:I

    iput v5, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mMotionEventType:I

    iput-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mBackground:Lcom/sec/android/gallery3d/glcore/GlBackground;

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;

    invoke-direct {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mAnimationMgr:Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;

    const/16 v1, 0x400

    new-array v1, v1, [Lcom/sec/android/gallery3d/glcore/GlCmd;

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueue:[Lcom/sec/android/gallery3d/glcore/GlCmd;

    iput v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueWR:I

    iput v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueRD:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRotationListener:Ljava/util/ArrayList;

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mObjectZPosChanged:Z

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRefreshEnabled:Z

    new-instance v1, Lcom/sec/android/gallery3d/glcore/TUtils;

    invoke-direct {v1}, Lcom/sec/android/gallery3d/glcore/TUtils;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGLUtil:Lcom/sec/android/gallery3d/glcore/TUtils;

    iput-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mUploadBmCache:Ljava/lang/Object;

    iput v6, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mBgColorRed:F

    iput v6, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mBgColorGreen:F

    iput v6, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mBgColorBlue:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mBgColorAlpha:F

    iput v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mToolType:I

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mDragDownFromSelectAll:Z

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mFirstDraw:Z

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mKnoxDesktopMode:Z

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->checkPickerMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/sec/android/gallery3d/glcore/GlRootView;->FeatureIsTabletEnabed:Z

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0, v3}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContext:Landroid/content/Context;

    iput-object p0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlConfig;

    invoke-direct {v1}, Lcom/sec/android/gallery3d/glcore/GlConfig;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGlConfig:Lcom/sec/android/gallery3d/glcore/GlConfig;

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x200

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setSystemUiVisibility(I)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->createRootObject()V

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlRootView$RotationListener;

    invoke-direct {v2, p0, v3}, Lcom/sec/android/gallery3d/glcore/GlRootView$RotationListener;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Lcom/sec/android/gallery3d/glcore/GlRootView$1;)V

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;-><init>(Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector$OnRotationGestureListener;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRotationDetector:Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/GalleryApp;

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    :goto_3
    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContext:Landroid/content/Context;

    const v2, 0x7f1000ab

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->intColorToFloatARGBArray(I)[F

    move-result-object v0

    aget v1, v0, v5

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->WHITE_THEME_CLEARCOLOR_RED:F

    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->WHITE_THEME_CLEARCOLOR_GREEN:F

    const/4 v1, 0x3

    aget v1, v0, v1

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->WHITE_THEME_CLEARCOLOR_BLUE:F

    aget v1, v0, v4

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->WHITE_THEME_CLEARCOLOR_ALPHA:F

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setDataExtractionListener()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setGLContextListener()V

    return-void

    :cond_3
    const v1, 0x3f7ae148    # 0.98f

    goto/16 :goto_0

    :cond_4
    const v1, 0x3f7ae148    # 0.98f

    goto/16 :goto_1

    :cond_5
    const v2, 0x3f7ae148    # 0.98f

    goto/16 :goto_2

    :cond_6
    move-object v1, v3

    goto :goto_3
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/glcore/GlRootView;)Lcom/sec/android/gallery3d/glcore/GlLayer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/glcore/GlRootView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRotationListener:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/glcore/GlRootView;Lcom/sec/android/gallery3d/glcore/GlObject;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZ)Landroid/graphics/Rect;
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/sec/android/gallery3d/glcore/GlRootView;->extractSmartClipDataInter(Lcom/sec/android/gallery3d/glcore/GlObject;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZ)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private checkPickerMode(Landroid/content/Context;)Z
    .locals 4

    const/4 v2, 0x0

    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v3, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "android.intent.action.PICK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "android.intent.action.PERSON_PICK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/gallery3d/app/GalleryActivity;->ACTION_MULTIPLE_PICK:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private clearAllAnimation()V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mAnimationMgr:Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;

    iget v2, v3, Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;->mMaxUsed:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mAnimationMgr:Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;

    iget-object v3, v3, Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;->mAnimationSet:[Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    aget-object v0, v3, v1

    if-nez v0, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->removeAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mAnimationMgr:Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;->clear()V

    return-void
.end method

.method private clearCommandQueue()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueue:[Lcom/sec/android/gallery3d/glcore/GlCmd;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueue:[Lcom/sec/android/gallery3d/glcore/GlCmd;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueWR:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueRD:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private createRootObject()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-direct {v0, v2, v1, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;FF)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    iput-object p0, v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    iput-object v2, v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosChanged:Z

    return-void
.end method

.method private destroyCachedLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;)V
    .locals 6

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/app/TabStateManager;

    const/4 v1, 0x0

    const/4 v2, 0x4

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {v3, v1}, Lcom/sec/android/gallery3d/app/TabStateManager;->getTabState(I)Lcom/sec/android/gallery3d/app/TabActivityState;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/TabActivityState;->getGlComposeView()Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlLayer;->pause()V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlLayer;->destroy()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private dispatchHoverEventInter(Lcom/sec/android/gallery3d/glcore/GlObject;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v5, 0x1

    iget-object v0, p1, Lcom/sec/android/gallery3d/glcore/GlObject;->mChild:[Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mMotionTarget:Ljava/lang/Object;

    iget v6, p1, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    add-int/lit8 v2, v6, -0x1

    :goto_0
    if-ltz v2, :cond_5

    aget-object v1, v0, v2

    if-eqz v1, :cond_0

    iget-boolean v6, v1, Lcom/sec/android/gallery3d/glcore/GlObject;->mVisible:Z

    if-eqz v6, :cond_0

    iget v6, v1, Lcom/sec/android/gallery3d/glcore/GlObject;->mState:I

    if-eq v6, v5, :cond_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget v6, v1, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    if-lez v6, :cond_3

    invoke-direct {p0, v1, p2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->dispatchHoverEventInter(Lcom/sec/android/gallery3d/glcore/GlObject;Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    :goto_1
    return v5

    :cond_3
    invoke-virtual {v1, p2}, Lcom/sec/android/gallery3d/glcore/GlObject;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eq v1, v4, :cond_2

    instance-of v6, v4, Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v6, :cond_4

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Landroid/view/MotionEvent;->setAction(I)V

    check-cast v4, Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v4, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    :cond_4
    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mMotionTarget:Ljava/lang/Object;

    const/4 v6, 0x3

    iput v6, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mMotionTargetType:I

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private dispatchTouchEventInter(Lcom/sec/android/gallery3d/glcore/GlObject;Landroid/view/MotionEvent;)Z
    .locals 12

    const/16 v11, 0x3ea

    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v1, p1, Lcom/sec/android/gallery3d/glcore/GlObject;->mChild:[Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mMotionTarget:Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v5, v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v6, v10

    iget v10, p1, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    add-int/lit8 v3, v10, -0x1

    :goto_0
    if-ltz v3, :cond_9

    aget-object v2, v1, v3

    if-eqz v2, :cond_0

    iget-boolean v10, v2, Lcom/sec/android/gallery3d/glcore/GlObject;->mVisible:Z

    if-eqz v10, :cond_0

    iget v10, v2, Lcom/sec/android/gallery3d/glcore/GlObject;->mState:I

    if-eq v10, v8, :cond_1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    if-ne v0, v11, :cond_3

    if-ne v4, v2, :cond_3

    invoke-virtual {v2, v5, v6}, Lcom/sec/android/gallery3d/glcore/GlObject;->checkPosIn(II)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_2
    :goto_1
    return v8

    :cond_3
    iget v10, v2, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    if-lez v10, :cond_4

    invoke-direct {p0, v2, p2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->dispatchTouchEventInter(Lcom/sec/android/gallery3d/glcore/GlObject;Landroid/view/MotionEvent;)Z

    move-result v10

    if-nez v10, :cond_2

    :cond_4
    invoke-virtual {v2, p2}, Lcom/sec/android/gallery3d/glcore/GlObject;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mAccessibliityNodeProvider:Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;

    if-eqz v10, :cond_5

    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v7

    if-ne v7, v9, :cond_5

    iget-object v7, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mAccessibliityNodeProvider:Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;

    const/high16 v10, 0x10000

    invoke-virtual {v7, v10}, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->sendAccessibilityEventForVirtualView(I)Z

    :cond_5
    const/16 v7, 0x3e8

    if-eq v0, v7, :cond_6

    if-ne v0, v11, :cond_7

    instance-of v7, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v7, :cond_7

    move-object v7, v2

    check-cast v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getFocusBorderVisible()Z

    move-result v7

    if-nez v7, :cond_7

    :cond_6
    iget-object v7, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mAccessibliityNodeProvider:Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mAccessibliityNodeProvider:Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->clearAccessibilityFocus()V

    iget-object v7, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mAccessibliityNodeProvider:Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;

    const v10, 0x8000

    invoke-virtual {v7, v2, v10}, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->sendAccessibilityEventForVirtualView(Lcom/sec/android/gallery3d/glcore/GlObject;I)V

    :cond_7
    iput-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mMotionTarget:Ljava/lang/Object;

    const/4 v7, 0x3

    iput v7, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mMotionTargetType:I

    if-nez v0, :cond_8

    move v7, v8

    :goto_2
    iput v7, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mMotionEventType:I

    goto :goto_1

    :cond_8
    move v7, v9

    goto :goto_2

    :cond_9
    move v8, v7

    goto :goto_1
.end method

.method private engageLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;II)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "GlRootView"

    const-string/jumbo v1, "TABSWIPE_ engageLayer start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mObjectZPosChanged:Z

    iget v0, p1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mState:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/glcore/GlLayer;->setRootView(Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mWidth:I

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mHeight:I

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->isWideMode()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlLayer;->dispatchSurfaceChanged(IIZZ)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, p2, p3}, Lcom/sec/android/gallery3d/glcore/GlLayer;->create(Landroid/content/Context;II)V

    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glcore/GlLayer;->resume()V

    :cond_0
    const-string/jumbo v0, "GlRootView"

    const-string/jumbo v1, "TABSWIPE_ engageLayer end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glcore/GlLayer;->setLayerCallback()V

    invoke-virtual {p1, p2, p3}, Lcom/sec/android/gallery3d/glcore/GlLayer;->setPos(II)V

    goto :goto_0
.end method

.method private extractSmartClipDataInter(Lcom/sec/android/gallery3d/glcore/GlObject;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZ)Landroid/graphics/Rect;
    .locals 13

    iget-object v9, p1, Lcom/sec/android/gallery3d/glcore/GlObject;->mChild:[Lcom/sec/android/gallery3d/glcore/GlObject;

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iget v2, p1, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    add-int/lit8 v10, v2, -0x1

    :goto_0
    if-ltz v10, :cond_4

    aget-object v3, v9, v10

    if-eqz v3, :cond_0

    iget-boolean v2, v3, Lcom/sec/android/gallery3d/glcore/GlObject;->mVisible:Z

    if-eqz v2, :cond_0

    iget v2, v3, Lcom/sec/android/gallery3d/glcore/GlObject;->mState:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v12}, Lcom/sec/android/gallery3d/glcore/GlObject;->getGlObjectRect(Landroid/graphics/Rect;)V

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    iget v2, v3, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    if-lez v2, :cond_2

    move-object v2, p0

    move-object v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/gallery3d/glcore/GlRootView;->extractSmartClipDataInter(Lcom/sec/android/gallery3d/glcore/GlObject;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZ)Landroid/graphics/Rect;

    move-result-object p3

    :cond_2
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {v12, p2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p3, :cond_3

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_3
    new-instance p3, Landroid/graphics/Rect;

    move-object/from16 v0, p3

    invoke-direct {v0, v12}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    if-eqz p6, :cond_0

    move-object/from16 v11, p3

    :goto_2
    return-object v11

    :cond_4
    move-object/from16 v11, p3

    goto :goto_2
.end method

.method private finalizeBackground()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mBackground:Lcom/sec/android/gallery3d/glcore/GlBackground;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mBackground:Lcom/sec/android/gallery3d/glcore/GlBackground;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlBackground;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mBackground:Lcom/sec/android/gallery3d/glcore/GlBackground;

    :cond_0
    return-void
.end method

.method private finalizeGL()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "GlRootView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "finalizeView layer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", content = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContentView:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", GlAvala"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->removeAllObject()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlLayer;->destroy()V

    iput-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    :cond_0
    iput-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayerNew:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->clearAllAnimation()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGLUtil:Lcom/sec/android/gallery3d/glcore/TUtils;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/TUtils;->finalizeTexture(Ljavax/microedition/khronos/opengles/GL11;)V

    return-void
.end method

.method private getClipDataListener()Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mOnClipDataListener:Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlRootView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/glcore/GlRootView$2;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mOnClipDataListener:Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListener;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mOnClipDataListener:Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListener;

    return-object v0
.end method

.method private getScaleDetector()Landroid/view/ScaleGestureDetector;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlRootView$ScaleListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/gallery3d/glcore/GlRootView$ScaleListener;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Lcom/sec/android/gallery3d/glcore/GlRootView$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method

.method private initBackground(ZZ)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mBackground:Lcom/sec/android/gallery3d/glcore/GlBackground;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlBackground;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlBackground;-><init>(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL11;Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mBackground:Lcom/sec/android/gallery3d/glcore/GlBackground;

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mBackground:Lcom/sec/android/gallery3d/glcore/GlBackground;

    invoke-virtual {v0, p2}, Lcom/sec/android/gallery3d/glcore/GlBackground;->enableBlending(Z)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mBackground:Lcom/sec/android/gallery3d/glcore/GlBackground;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlBackground;->setClearByColor(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeGL(Z)V
    .locals 7

    const v6, 0x84c0

    const/4 v5, 0x0

    const-string/jumbo v0, "GlRootView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initializeGL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGlActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", force = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGlActive:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGlActive:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mBgColorRed:F

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mBgColorGreen:F

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mBgColorBlue:F

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mBgColorAlpha:F

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v6}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v6}, Ljavax/microedition/khronos/opengles/GL11;->glActiveTexture(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGLUtil:Lcom/sec/android/gallery3d/glcore/TUtils;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/TUtils;->initTexture(Ljavax/microedition/khronos/opengles/GL11;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContentView:Lcom/sec/android/gallery3d/ui/GLView;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;-><init>(Ljavax/microedition/khronos/opengles/GL11;Lcom/sec/android/gallery3d/glcore/LibGLRootView;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCanvas:Lcom/sec/android/gallery3d/glrenderer/GLCanvas;

    :cond_1
    invoke-direct {p0, v5, v5}, Lcom/sec/android/gallery3d/glcore/GlRootView;->initBackground(ZZ)V

    goto :goto_0
.end method

.method private isCmdQueueNotEmpty()Z
    .locals 4

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueue:[Lcom/sec/android/gallery3d/glcore/GlCmd;

    monitor-enter v3

    :try_start_0
    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueRD:I

    :cond_0
    :goto_0
    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueWR:I

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueue:[Lcom/sec/android/gallery3d/glcore/GlCmd;

    aget-object v0, v2, v1

    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/sec/android/gallery3d/glcore/GlCmd;->mValid:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    monitor-exit v3

    :goto_1
    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x400

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    monitor-exit v3

    const/4 v2, 0x0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private isRenderRequired()Z
    .locals 12

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-boolean v7, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderRequested:Z

    if-nez v7, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->isCmdQueueNotEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move v7, v8

    :goto_0
    return v7

    :cond_1
    iget v7, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderLogic:I

    const/4 v10, 0x2

    if-ne v7, v10, :cond_4

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mAnimationMgr:Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;

    iget v1, v2, Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;->mMaxUsed:I

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_4

    iget-object v7, v2, Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;->mAnimationSet:[Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    aget-object v4, v7, v5

    if-nez v4, :cond_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    iget v7, v4, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mAnimState:I

    if-eqz v7, :cond_2

    move v7, v8

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    iget-object v10, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    monitor-enter v10

    :try_start_0
    iget-object v7, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v7, v9

    goto :goto_0

    :cond_5
    :try_start_1
    iget-object v7, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/sec/android/gallery3d/ui/GLRoot$OnGLIdleListener;

    move-object v6, v0
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->lockRenderThread()V

    :try_start_3
    iget-object v7, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCanvas:Lcom/sec/android/gallery3d/glrenderer/GLCanvas;

    iget-boolean v10, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderRequested:Z

    invoke-interface {v6, v7, v10}, Lcom/sec/android/gallery3d/ui/GLRoot$OnGLIdleListener;->onGLIdle(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    move v7, v9

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_4
    const-string/jumbo v7, "GlRootView"

    invoke-virtual {v3}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception v7

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    iget-object v9, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    monitor-enter v9

    :try_start_5
    iget-object v7, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    invoke-virtual {v7, v6}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_3
    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move v7, v8

    goto :goto_0

    :catchall_1
    move-exception v7

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    throw v7

    :catch_1
    move-exception v3

    :try_start_7
    const-string/jumbo v7, "GlRootView"

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_2
    move-exception v7

    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v7
.end method

.method private isSlideShow()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->isSlideShowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWideMode()Z
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/sec/android/gallery3d/glcore/GlRootView;->FeatureIsTabletEnabed:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    move v0, v3

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContext:Landroid/content/Context;

    instance-of v2, v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDisplayRotation()I

    move-result v1

    if-eq v1, v3, :cond_3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    :cond_3
    move v0, v3

    :goto_1
    const-string/jumbo v2, "GlRootView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isWideMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move v0, v4

    goto :goto_1
.end method

.method private needLockForKeyEvent(I)Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderLogic:I

    if-ne v1, v0, :cond_1

    const/16 v1, 0xa8

    if-eq p1, v1, :cond_0

    const/16 v1, 0xa9

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method private onCommand()V
    .locals 14

    const/16 v13, 0x400

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget v12, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueWR:I

    const/4 v7, 0x0

    :goto_0
    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueRD:I

    if-eq v0, v12, :cond_a

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueue:[Lcom/sec/android/gallery3d/glcore/GlCmd;

    monitor-enter v1

    if-eqz v7, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueue:[Lcom/sec/android/gallery3d/glcore/GlCmd;

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueWR:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueWR:I

    aput-object v7, v0, v2

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueWR:I

    if-ne v0, v13, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueWR:I

    :cond_0
    const/4 v7, 0x0

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueWR:I

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueRD:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueRD:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueRD:I

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueRD:I

    if-ne v0, v13, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueRD:I

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueue:[Lcom/sec/android/gallery3d/glcore/GlCmd;

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueRD:I

    aget-object v6, v0, v2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueue:[Lcom/sec/android/gallery3d/glcore/GlCmd;

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueRD:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueRD:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueRD:I

    if-ne v0, v13, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueRD:I

    :cond_3
    if-eqz v6, :cond_4

    iget-boolean v0, v6, Lcom/sec/android/gallery3d/glcore/GlCmd;->mValid:Z

    if-nez v0, :cond_5

    :cond_4
    monitor-exit v1

    goto :goto_0

    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-wide v10, v6, Lcom/sec/android/gallery3d/glcore/GlCmd;->mExpTime:J

    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-eqz v0, :cond_6

    cmp-long v0, v10, v8

    if-gez v0, :cond_9

    :cond_6
    iget v0, v6, Lcom/sec/android/gallery3d/glcore/GlCmd;->mCmdType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    iget-object v0, v6, Lcom/sec/android/gallery3d/glcore/GlCmd;->mThis:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v6, Lcom/sec/android/gallery3d/glcore/GlCmd;->mCmd:I

    iget-object v2, v6, Lcom/sec/android/gallery3d/glcore/GlCmd;->mParmObj:Ljava/lang/Object;

    iget v3, v6, Lcom/sec/android/gallery3d/glcore/GlCmd;->mParm1:I

    iget v4, v6, Lcom/sec/android/gallery3d/glcore/GlCmd;->mParm2:I

    iget v5, v6, Lcom/sec/android/gallery3d/glcore/GlCmd;->mParm3:I

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/gallery3d/glcore/GlLayer;->onCommand(ILjava/lang/Object;III)V

    goto :goto_0

    :cond_7
    iget v0, v6, Lcom/sec/android/gallery3d/glcore/GlCmd;->mCmdType:I

    if-nez v0, :cond_8

    iget v0, v6, Lcom/sec/android/gallery3d/glcore/GlCmd;->mCmd:I

    iget v1, v6, Lcom/sec/android/gallery3d/glcore/GlCmd;->mParm1:I

    iget v2, v6, Lcom/sec/android/gallery3d/glcore/GlCmd;->mParm2:I

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->procCommand(III)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, v6, Lcom/sec/android/gallery3d/glcore/GlCmd;->mThis:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlHandler;

    iget v1, v6, Lcom/sec/android/gallery3d/glcore/GlCmd;->mCmd:I

    iget-object v2, v6, Lcom/sec/android/gallery3d/glcore/GlCmd;->mParmObj:Ljava/lang/Object;

    iget v3, v6, Lcom/sec/android/gallery3d/glcore/GlCmd;->mParm1:I

    iget v4, v6, Lcom/sec/android/gallery3d/glcore/GlCmd;->mParm2:I

    iget v5, v6, Lcom/sec/android/gallery3d/glcore/GlCmd;->mParm3:I

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/gallery3d/glcore/GlHandler;->onMessage(ILjava/lang/Object;III)V

    goto/16 :goto_0

    :cond_9
    move-object v7, v6

    goto/16 :goto_0

    :cond_a
    if-eqz v7, :cond_d

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueue:[Lcom/sec/android/gallery3d/glcore/GlCmd;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueue:[Lcom/sec/android/gallery3d/glcore/GlCmd;

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueWR:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueWR:I

    aput-object v7, v0, v2

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueWR:I

    if-ne v0, v13, :cond_b

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueWR:I

    :cond_b
    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueWR:I

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueRD:I

    if-ne v0, v2, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "onCommand Too many pending cmd - !! "

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_c
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_d
    return-void
.end method

.method private onDragInter(Lcom/sec/android/gallery3d/glcore/GlObject;Landroid/view/DragEvent;)Z
    .locals 5

    const/4 v3, 0x1

    iget-object v0, p1, Lcom/sec/android/gallery3d/glcore/GlObject;->mChild:[Lcom/sec/android/gallery3d/glcore/GlObject;

    const/4 v2, 0x0

    :goto_0
    iget v4, p1, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    if-ge v2, v4, :cond_3

    aget-object v1, v0, v2

    if-eqz v1, :cond_0

    iget-boolean v4, v1, Lcom/sec/android/gallery3d/glcore/GlObject;->mVisible:Z

    if-eqz v4, :cond_0

    iget v4, v1, Lcom/sec/android/gallery3d/glcore/GlObject;->mState:I

    if-eq v4, v3, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p2}, Lcom/sec/android/gallery3d/glcore/GlObject;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    return v3

    :cond_2
    iget v4, v1, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    if-lez v4, :cond_0

    invoke-direct {p0, v1, p2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->onDragInter(Lcom/sec/android/gallery3d/glcore/GlObject;Landroid/view/DragEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private onPosition(J)V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mAnimationMgr:Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;

    iget v3, v4, Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;->mMaxUsed:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mAnimationMgr:Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;

    iget-object v4, v4, Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;->mAnimationSet:[Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    aget-object v0, v4, v2

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v4, v0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mAnimState:I

    if-eqz v4, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->process(J)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget v4, v4, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    if-lez v4, :cond_4

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-boolean v4, v1, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosChanged:Z

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setPositionsInter()V

    iput-boolean v6, v1, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosChanged:Z

    :cond_3
    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5, v6}, Lcom/sec/android/gallery3d/glcore/GlObject;->draw(Ljavax/microedition/khronos/opengles/GL11;ZZ)V

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->onPositionInter(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    :cond_4
    return-void
.end method

.method private onPositionInter(Lcom/sec/android/gallery3d/glcore/GlObject;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v1, p1, Lcom/sec/android/gallery3d/glcore/GlObject;->mChild:[Lcom/sec/android/gallery3d/glcore/GlObject;

    iget v0, p1, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_5

    aget-object v3, v1, v4

    if-eqz v3, :cond_0

    iget-boolean v5, v3, Lcom/sec/android/gallery3d/glcore/GlObject;->mVisible:Z

    if-eqz v5, :cond_0

    iget v5, v3, Lcom/sec/android/gallery3d/glcore/GlObject;->mState:I

    if-eq v5, v6, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v5, v3, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosChanged:Z

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->setPositionsInter()V

    iput-boolean v7, v3, Lcom/sec/android/gallery3d/glcore/GlObject;->mPosChanged:Z

    :cond_2
    iget-boolean v5, v3, Lcom/sec/android/gallery3d/glcore/GlObject;->mPostDraw:Z

    if-eqz v5, :cond_4

    invoke-virtual {v3, v2, v6, v7}, Lcom/sec/android/gallery3d/glcore/GlObject;->draw(Ljavax/microedition/khronos/opengles/GL11;ZZ)V

    iget v5, v3, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    if-lez v5, :cond_3

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/glcore/GlRootView;->onPositionInter(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    :cond_3
    invoke-virtual {v3, v2, v7, v6}, Lcom/sec/android/gallery3d/glcore/GlObject;->draw(Ljavax/microedition/khronos/opengles/GL11;ZZ)V

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v2, v6, v6}, Lcom/sec/android/gallery3d/glcore/GlObject;->draw(Ljavax/microedition/khronos/opengles/GL11;ZZ)V

    iget v5, v3, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    if-lez v5, :cond_0

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/glcore/GlRootView;->onPositionInter(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method private printPerformanceLog()V
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/sec/android/gallery3d/app/GalleryActivity;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    iget-wide v8, v1, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mAppCreateTime:J

    sub-long v4, v2, v8

    iget-wide v8, v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mActivityCreateTime:J

    sub-long v6, v2, v8

    const-string/jumbo v1, "Gallery_Performance"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Elapsed time to complete first display : Activity = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", Application = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private procCommand(III)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/sec/android/gallery3d/glcore/GlRootView;->procSurfaceChanged(II)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->reset()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private procSurfaceChanged(II)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-nez v5, :cond_1

    const-string/jumbo v5, "GlRootView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mGL is null. Do not procSurfaceChanged, type["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v5, "GlRootView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "procSurfaceChanged width["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] height["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] type["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mWidth:I

    iput p2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mHeight:I

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v5, v9, v9, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glViewport(IIII)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGlConfig:Lcom/sec/android/gallery3d/glcore/GlConfig;

    int-to-float v6, p1

    int-to-float v7, p2

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/gallery3d/glcore/GlConfig;->setSize(FF)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContentView:Lcom/sec/android/gallery3d/ui/GLView;

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mFlags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mFlags:I

    :cond_2
    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContext:Landroid/content/Context;

    instance-of v5, v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/app/TabStateManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/TabStateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v5

    instance-of v5, v5, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-nez v5, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x4

    :goto_1
    if-ge v1, v2, :cond_5

    invoke-virtual {v3, v1}, Lcom/sec/android/gallery3d/app/TabStateManager;->getTabState(I)Lcom/sec/android/gallery3d/app/TabActivityState;

    move-result-object v4

    if-nez v4, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/TabActivityState;->getGlComposeView()Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v5, v0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mState:I

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->isWideMode()Z

    move-result v5

    invoke-virtual {v0, p1, p2, v5, v8}, Lcom/sec/android/gallery3d/glcore/GlLayer;->dispatchSurfaceChanged(IIZZ)V

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v5, v5, Lcom/sec/android/gallery3d/glcore/GlLayer;->mState:I

    if-ne v5, v8, :cond_0

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->isWideMode()Z

    move-result v6

    invoke-virtual {v5, p1, p2, v6, v8}, Lcom/sec/android/gallery3d/glcore/GlLayer;->dispatchSurfaceChanged(IIZZ)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mAccessibliityNodeProvider:Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mAccessibliityNodeProvider:Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->refreshAccessibilityFocus()V

    goto/16 :goto_0
.end method

.method private removeAllCommand()V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueue:[Lcom/sec/android/gallery3d/glcore/GlCmd;

    monitor-enter v3

    :try_start_0
    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueRD:I

    :cond_0
    :goto_0
    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueWR:I

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueue:[Lcom/sec/android/gallery3d/glcore/GlCmd;

    aget-object v0, v2, v1

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/sec/android/gallery3d/glcore/GlCmd;->mValid:Z

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueue:[Lcom/sec/android/gallery3d/glcore/GlCmd;

    const/4 v4, 0x0

    aput-object v4, v2, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x400

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private removeAllObjectInter(Lcom/sec/android/gallery3d/glcore/GlObject;)V
    .locals 4

    iget-object v0, p1, Lcom/sec/android/gallery3d/glcore/GlObject;->mChild:[Lcom/sec/android/gallery3d/glcore/GlObject;

    iget v3, p1, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    add-int/lit8 v2, v3, -0x1

    :goto_0
    if-ltz v2, :cond_2

    aget-object v1, v0, v2

    if-nez v1, :cond_0

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    iget v3, v1, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    if-lez v3, :cond_1

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->removeAllObjectInter(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->removeObject(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private replaceLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;)V
    .locals 11

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-string/jumbo v2, "GlRootView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "TABSWIPE_ enter replaceLayer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", new = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    if-eqz v2, :cond_2

    iget-object v9, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iput-object v10, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mMotionTarget:Ljava/lang/Object;

    if-ne v2, v9, :cond_0

    iput-object v10, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mMotionTarget:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/sec/android/gallery3d/glcore/GlLayer;->onTouch(Landroid/view/MotionEvent;)Z

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    invoke-virtual {v9}, Lcom/sec/android/gallery3d/glcore/GlLayer;->pause()V

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/glcore/GlLayer;->destroy()V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContext:Landroid/content/Context;

    instance-of v2, v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->destroyCachedLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->removeAllObject()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->clearAllAnimation()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->removeAllCommand()V

    iput-boolean v7, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mObjectZPosChanged:Z

    :cond_2
    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->resetDetailGLView()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mWidth:I

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mHeight:I

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->isWideMode()Z

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v7}, Lcom/sec/android/gallery3d/glcore/GlLayer;->dispatchSurfaceChanged(IIZZ)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/glcore/GlLayer;->create(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlLayer;->resume()V

    :cond_3
    if-eqz v9, :cond_4

    invoke-virtual {v9, v10}, Lcom/sec/android/gallery3d/glcore/GlLayer;->setRootView(Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    :cond_4
    const-string/jumbo v2, "GlRootView"

    const-string/jumbo v3, "TABSWIPE_ exit replaceLayer"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private reset()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const v1, 0x8892

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    const/16 v1, 0x1702

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/high16 v3, 0x46040000    # 8448.0f

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    return-void
.end method

.method private resetDetailGLView()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCanvas:Lcom/sec/android/gallery3d/glrenderer/GLCanvas;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCanvas:Lcom/sec/android/gallery3d/glrenderer/GLCanvas;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->yieldAllTextures()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCanvas:Lcom/sec/android/gallery3d/glrenderer/GLCanvas;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->deleteRecycledResources()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCanvas:Lcom/sec/android/gallery3d/glrenderer/GLCanvas;

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mAllTextures:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->reset()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContentView:Lcom/sec/android/gallery3d/ui/GLView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContentView:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/GLView;->detachFromRoot()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContentView:Lcom/sec/android/gallery3d/ui/GLView;

    :cond_1
    return-void
.end method

.method private resetGL()V
    .locals 9

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/16 v4, 0x10

    new-array v3, v4, [F

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mWidth:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mHeight:I

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mWidth:I

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mHeight:I

    invoke-interface {v1, v7, v7, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glViewport(IIII)V

    const/16 v4, 0x1701

    invoke-interface {v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mHeight:I

    int-to-float v5, v5

    div-float v0, v4, v5

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGlConfig:Lcom/sec/android/gallery3d/glcore/GlConfig;

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mHeight:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/gallery3d/glcore/GlConfig;->setSize(FF)V

    invoke-static {v3, v7}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/high16 v4, 0x41f00000    # 30.0f

    const/high16 v5, 0x44fa0000    # 2000.0f

    invoke-static {v3, v4, v0, v8, v5}, Lcom/sec/android/gallery3d/glcore/TUtils;->glhPerspectivef2([FFFFF)V

    const/4 v2, 0x0

    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget v4, v3, v2

    sget v5, Lcom/sec/android/gallery3d/glcore/TUtils;->PRECISION_INT:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v4, v4

    sget v5, Lcom/sec/android/gallery3d/glcore/TUtils;->PRECISION_FLOAT:F

    div-float/2addr v4, v5

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGlConfig:Lcom/sec/android/gallery3d/glcore/GlConfig;

    invoke-virtual {v4, v3}, Lcom/sec/android/gallery3d/glcore/GlConfig;->setProspectMatrix([F)V

    invoke-interface {v1, v3, v7}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mBgColorRed:F

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mBgColorGreen:F

    iget v6, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mBgColorBlue:F

    iget v7, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mBgColorAlpha:F

    invoke-interface {v1, v4, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    invoke-interface {v1, v8}, Ljavax/microedition/khronos/opengles/GL11;->glClearDepthf(F)V

    const/16 v4, 0xc50

    const/16 v5, 0x1102

    invoke-interface {v1, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glHint(II)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->isSlideShow()Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0xb71

    invoke-interface {v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    :cond_1
    const v4, 0x8074

    invoke-interface {v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    const v4, 0x8d65

    invoke-interface {v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    const/16 v4, 0xde1

    invoke-interface {v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    const v4, 0x8078

    invoke-interface {v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    const v4, 0x84c0

    invoke-interface {v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glActiveTexture(I)V

    const/16 v4, 0x1700

    invoke-interface {v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    return-void
.end method

.method private sendCommand(IIIILjava/lang/Object;)V
    .locals 6

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlCmd;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/glcore/GlCmd;-><init>(IIIILjava/lang/Object;)V

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/android/gallery3d/glcore/GlCmd;->mCmdType:I

    iput-object p0, v0, Lcom/sec/android/gallery3d/glcore/GlCmd;->mThis:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setCommand(Lcom/sec/android/gallery3d/glcore/GlCmd;)V

    return-void
.end method

.method private setGLContextListener()V
    .locals 3

    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/GLContextFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/GLContextFactory;-><init>()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/GLContextInterface;

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlRootView$3;

    invoke-direct {v2, p0}, Lcom/sec/android/gallery3d/glcore/GlRootView$3;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    invoke-interface {v0, v2}, Lcom/sec/samsung/gallery/lib/libinterface/GLContextInterface;->setRootViewListener(Lcom/sec/samsung/gallery/lib/libinterface/GLContextInterface$RootViewListener;)V

    return-void
.end method


# virtual methods
.method public addLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->lockRenderThread()V

    :try_start_0
    const-string/jumbo v0, "GlRootView"

    const-string/jumbo v1, "TABSWIPE_ addLayer start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string/jumbo v0, "GlRootView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TABSWIPE_ addedPosition is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glcore/GlLayer;->getTabPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p2}, Lcom/sec/android/gallery3d/glcore/GlLayer;->setLayerCallback(Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;)V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glcore/GlLayer;->getTabPosition()I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mAddedLayerPosition:I

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderRequested:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const-string/jumbo v0, "GlRootView"

    const-string/jumbo v1, "TABSWIPE_ addLayer end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    return-void

    :catchall_0
    move-exception v0

    const-string/jumbo v1, "GlRootView"

    const-string/jumbo v2, "TABSWIPE_ addLayer end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    throw v0
.end method

.method addObject(Lcom/sec/android/gallery3d/glcore/GlObject;)V
    .locals 2

    iput-object p0, p1, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    iput-object v0, p1, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    iget-object v0, p1, Lcom/sec/android/gallery3d/glcore/GlObject;->mAnimation:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mAnimationMgr:Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;

    iget-object v1, p1, Lcom/sec/android/gallery3d/glcore/GlObject;->mAnimation:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;->add(Ljava/util/ArrayList;)V

    iget-object v0, p1, Lcom/sec/android/gallery3d/glcore/GlObject;->mAnimation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/sec/android/gallery3d/glcore/GlObject;->mAnimation:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/glcore/GlObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderRequested:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    :cond_1
    return-void
.end method

.method public addOnGLIdleListener(Lcom/sec/android/gallery3d/ui/GLRoot$OnGLIdleListener;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderLogic:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mIdleRunner:Lcom/sec/android/gallery3d/glcore/LibGLRootView$IdleRunner;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView$IdleRunner;->enable()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method addRotationListener(Lcom/sec/android/gallery3d/glcore/GlObject;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRotationListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRotationListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public attachLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->lockRenderThread()V

    :try_start_0
    const-string/jumbo v0, "GlRootView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TABSWIPE_ attachLayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", new = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/glcore/GlLayer;->setRootView(Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    invoke-virtual {p1, p2}, Lcom/sec/android/gallery3d/glcore/GlLayer;->setLayerCallback(Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;)V

    :cond_0
    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayerNew:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderRequested:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const-string/jumbo v0, "GlRootView"

    const-string/jumbo v1, "TABSWIPE_ exit attachLayer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    return-void

    :catchall_0
    move-exception v0

    const-string/jumbo v1, "GlRootView"

    const-string/jumbo v2, "TABSWIPE_ exit attachLayer"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    throw v0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlLayer;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/glcore/GlLayer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContentView:Lcom/sec/android/gallery3d/ui/GLView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContentView:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/sec/android/gallery3d/app/GalleryActivity;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    if-nez v1, :cond_0

    :cond_4
    const/16 v1, 0x9

    if-ne v0, v1, :cond_6

    const/16 v1, 0x3e8

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_5
    :goto_2
    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_6
    const/16 v1, 0xa

    if-ne v0, v1, :cond_7

    const/16 v1, 0x3e9

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_2

    :cond_7
    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    const/16 v1, 0x3ea

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_2
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 15

    iget-object v13, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/sec/samsung/gallery/util/SettingsUtil;->getPenHovering(Landroid/content/Context;)Z

    move-result v10

    iget-object v13, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/sec/samsung/gallery/util/SettingsUtil;->getFingerAirView(Landroid/content/Context;)Z

    move-result v4

    iget-object v13, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/sec/samsung/gallery/util/SettingsUtil;->getMouseHovering(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_0

    iget-boolean v13, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mKnoxDesktopMode:Z

    if-eqz v13, :cond_4

    :cond_0
    const/4 v9, 0x1

    :goto_0
    if-nez v10, :cond_1

    if-nez v4, :cond_1

    if-eqz v9, :cond_5

    :cond_1
    const/4 v7, 0x1

    :goto_1
    iget-object v13, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/sec/samsung/gallery/util/SettingsUtil;->getFingerAirViewInformationPreview(Landroid/content/Context;)Z

    move-result v3

    iget-object v13, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/sec/samsung/gallery/util/SettingsUtil;->getMouseHoveringInformationPreview(Landroid/content/Context;)Z

    move-result v8

    move v5, v7

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v13

    iput v13, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mToolType:I

    invoke-static {}, Lcom/sec/samsung/gallery/util/HoverIconUtil;->isHoveringIconPenSelect()Z

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v13

    const/4 v14, 0x2

    if-eq v13, v14, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v13

    const/16 v14, 0x20

    if-ne v13, v14, :cond_6

    :cond_2
    if-nez v6, :cond_3

    iget-object v13, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/sec/samsung/gallery/util/HoverIconUtil;->isHoveringIconPenSelectView(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_3

    iget-object v13, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContext:Landroid/content/Context;

    invoke-static {v13, p0}, Lcom/sec/samsung/gallery/util/HoverIconUtil;->setHoveringIconToPenSelect(Landroid/content/Context;Landroid/view/View;)V

    :cond_3
    :goto_2
    if-nez v7, :cond_7

    const/4 v13, 0x0

    :goto_3
    return v13

    :cond_4
    const/4 v9, 0x0

    goto :goto_0

    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    :cond_6
    if-eqz v6, :cond_3

    iget-object v13, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContext:Landroid/content/Context;

    invoke-static {v13, p0}, Lcom/sec/samsung/gallery/util/HoverIconUtil;->setHoveringIconToDefault(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_2

    :cond_7
    if-nez v10, :cond_8

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_8

    const/4 v13, 0x0

    goto :goto_3

    :cond_8
    if-nez v4, :cond_9

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_9

    const/4 v13, 0x0

    goto :goto_3

    :cond_9
    if-nez v9, :cond_a

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v13

    const/4 v14, 0x3

    if-ne v13, v14, :cond_a

    const/4 v13, 0x0

    goto :goto_3

    :cond_a
    iget-object v13, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContext:Landroid/content/Context;

    instance-of v13, v13, Lcom/sec/android/gallery3d/app/GalleryActivity;

    if-eqz v13, :cond_b

    iget-object v13, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContext:Landroid/content/Context;

    check-cast v13, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getIsFlingAnim()Z

    move-result v13

    if-eqz v13, :cond_b

    const/4 v13, 0x0

    goto :goto_3

    :cond_b
    if-nez v3, :cond_d

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_d

    const/4 v5, 0x0

    :cond_c
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->lockRenderThread()V

    :try_start_0
    iget-object v13, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContentView:Lcom/sec/android/gallery3d/ui/GLView;

    if-eqz v13, :cond_e

    iget-object v13, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContentView:Lcom/sec/android/gallery3d/ui/GLView;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/sec/android/gallery3d/ui/GLView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    goto :goto_3

    :cond_d
    if-nez v8, :cond_c

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v13

    const/4 v14, 0x3

    if-ne v13, v14, :cond_c

    const/4 v5, 0x0

    goto :goto_4

    :cond_e
    :try_start_1
    iget-boolean v13, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mKnoxDesktopMode:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v13, :cond_f

    const/4 v13, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    goto/16 :goto_3

    :cond_f
    const/4 v2, 0x0

    :try_start_2
    iget-object v12, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mMotionTarget:Ljava/lang/Object;

    if-eqz v12, :cond_13

    const/16 v13, 0x9

    if-eq v1, v13, :cond_10

    const/16 v13, 0xa

    if-ne v1, v13, :cond_12

    :cond_10
    const/4 v13, 0x0

    iput-object v13, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mMotionTarget:Ljava/lang/Object;

    iget v13, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mMotionTargetType:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_11

    move-object v0, v12

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlObject;

    move-object v13, v0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    :goto_5
    const/16 v13, 0xa

    if-ne v1, v13, :cond_13

    const/4 v13, 0x1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    goto/16 :goto_3

    :cond_11
    :try_start_3
    move-object v0, v12

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-object v13, v0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/sec/android/gallery3d/glcore/GlLayer;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_5

    :cond_12
    iget v13, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mMotionTargetType:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_13

    move-object v0, v12

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-object v13, v0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/sec/android/gallery3d/glcore/GlLayer;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_13
    if-nez v2, :cond_17

    if-eqz v5, :cond_17

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v11

    const/16 v13, 0x9

    invoke-virtual {v11, v13}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v13, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget v13, v13, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    if-lez v13, :cond_14

    iget-object v13, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-direct {p0, v13, v11}, Lcom/sec/android/gallery3d/glcore/GlRootView;->dispatchHoverEventInter(Lcom/sec/android/gallery3d/glcore/GlObject;Landroid/view/MotionEvent;)Z

    move-result v13

    if-eqz v13, :cond_14

    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v13, 0x1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    goto/16 :goto_3

    :cond_14
    :try_start_4
    iget-object v13, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    if-eqz v13, :cond_15

    iget-object v13, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-virtual {v13, v11}, Lcom/sec/android/gallery3d/glcore/GlLayer;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v13

    if-eqz v13, :cond_15

    iget-object v13, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iput-object v13, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mMotionTarget:Ljava/lang/Object;

    const/4 v13, 0x1

    iput v13, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mMotionTargetType:I

    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v13, 0x1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    goto/16 :goto_3

    :cond_15
    if-eqz v12, :cond_16

    :try_start_5
    iget v13, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mMotionTargetType:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_16

    check-cast v12, Lcom/sec/android/gallery3d/glcore/GlObject;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v13

    if-nez v13, :cond_16

    const/4 v13, 0x0

    iput-object v13, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mMotionTarget:Ljava/lang/Object;

    :cond_16
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_17
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    const/4 v13, 0x0

    goto/16 :goto_3

    :catchall_0
    move-exception v13

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    throw v13
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContentView:Lcom/sec/android/gallery3d/ui/GLView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContentView:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/GLView;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    const/16 v11, 0x3e8

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v7

    :goto_0
    return v6

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->lockRenderThread()V

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

    if-eq v6, v9, :cond_1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getScaleDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    iget-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRotationDetector:Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRotationDetector:Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;

    invoke-virtual {v6, p1}, Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    iget-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContentView:Lcom/sec/android/gallery3d/ui/GLView;

    if-eqz v6, :cond_3

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mMotionTarget:Ljava/lang/Object;

    if-eqz v6, :cond_7

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mMotionTarget:Ljava/lang/Object;

    if-eqz v1, :cond_4

    if-eq v1, v11, :cond_4

    const/16 v6, 0x3ea

    if-eq v1, v6, :cond_4

    sget v6, Lcom/sec/samsung/gallery/lib/factory/MotionEventWrapper;->ACTION_PEN_DOWN:I

    if-eq v1, v6, :cond_4

    const/16 v6, 0x3eb

    if-ne v1, v6, :cond_d

    :cond_4
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mMotionTarget:Ljava/lang/Object;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iget v6, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mMotionEventType:I

    if-ne v6, v9, :cond_9

    invoke-virtual {v2, v1}, Landroid/view/MotionEvent;->setAction(I)V

    :goto_1
    if-eq v1, v11, :cond_5

    const/16 v6, 0x3ea

    if-eq v1, v6, :cond_5

    const/16 v6, 0x3eb

    if-eq v1, v6, :cond_5

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_5
    iget v6, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mMotionTargetType:I

    if-ne v6, v9, :cond_a

    check-cast v3, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v3, v2}, Lcom/sec/android/gallery3d/glcore/GlView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_6
    :goto_2
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_7
    if-eqz v1, :cond_8

    if-eq v1, v11, :cond_8

    const/16 v6, 0x3ea

    if-eq v1, v6, :cond_8

    sget v6, Lcom/sec/samsung/gallery/lib/factory/MotionEventWrapper;->ACTION_PEN_DOWN:I

    if-eq v1, v6, :cond_8

    const/16 v6, 0x3eb

    if-ne v1, v6, :cond_14

    :cond_8
    iget-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget v6, v6, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    if-lez v6, :cond_12

    iget-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-direct {p0, v6, p1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->dispatchTouchEventInter(Lcom/sec/android/gallery3d/glcore/GlObject;Landroid/view/MotionEvent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_12

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    move v6, v8

    goto/16 :goto_0

    :cond_9
    const/4 v6, 0x3

    :try_start_2
    invoke-virtual {v2, v6}, Landroid/view/MotionEvent;->setAction(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    throw v6

    :cond_a
    :try_start_3
    iget v6, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mMotionTargetType:I

    if-ne v6, v10, :cond_c

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    const/16 v6, 0x3ea

    if-ne v1, v6, :cond_b

    move-object v0, v3

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlObject;

    move-object v6, v0

    invoke-virtual {v6, v4, v5}, Lcom/sec/android/gallery3d/glcore/GlObject;->checkPosIn(II)Z

    move-result v6

    if-nez v6, :cond_6

    :cond_b
    check-cast v3, Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v3, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_2

    :cond_c
    check-cast v3, Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-virtual {v3, v2}, Lcom/sec/android/gallery3d/glcore/GlLayer;->onTouch(Landroid/view/MotionEvent;)Z

    goto :goto_2

    :cond_d
    if-eq v1, v10, :cond_e

    if-eq v1, v8, :cond_e

    if-eq v1, v11, :cond_e

    sget v6, Lcom/sec/samsung/gallery/lib/factory/MotionEventWrapper;->ACTION_PEN_UP:I

    if-eq v1, v6, :cond_e

    const/16 v6, 0x3eb

    if-ne v1, v6, :cond_f

    :cond_e
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mInDownState:Z

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mMotionTarget:Ljava/lang/Object;

    :cond_f
    iget v6, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mMotionTargetType:I

    if-ne v6, v9, :cond_10

    check-cast v3, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v3, p1}, Lcom/sec/android/gallery3d/glcore/GlView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    move v6, v8

    goto/16 :goto_0

    :cond_10
    :try_start_4
    iget v6, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mMotionTargetType:I

    if-ne v6, v10, :cond_11

    check-cast v3, Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v3, p1}, Lcom/sec/android/gallery3d/glcore/GlObject;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_3

    :cond_11
    check-cast v3, Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-virtual {v3, p1}, Lcom/sec/android/gallery3d/glcore/GlLayer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_3

    :cond_12
    iget-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/glcore/GlLayer;->isActive()Z

    move-result v6

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-virtual {v6, p1}, Lcom/sec/android/gallery3d/glcore/GlLayer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iput-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mMotionTarget:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mMotionTargetType:I

    if-nez v1, :cond_13

    move v6, v8

    :goto_4
    iput v6, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mMotionEventType:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    move v6, v8

    goto/16 :goto_0

    :cond_13
    move v6, v9

    goto :goto_4

    :cond_14
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    move v6, v7

    goto/16 :goto_0
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mAccessibliityNodeProvider:Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mAccessibliityNodeProvider:Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mAccessibliityNodeProvider:Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;

    return-object v0
.end method

.method public getBgColor()[F
    .locals 3

    const/4 v1, 0x4

    new-array v0, v1, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->WHITE_THEME_CLEARCOLOR_RED:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->WHITE_THEME_CLEARCOLOR_GREEN:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->WHITE_THEME_CLEARCOLOR_BLUE:F

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->WHITE_THEME_CLEARCOLOR_ALPHA:F

    aput v2, v0, v1

    return-object v0
.end method

.method public getGLContext()Ljavax/microedition/khronos/opengles/GL11;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    return-object v0
.end method

.method public getGLUtilInstance()Lcom/sec/android/gallery3d/glcore/TUtils;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGLUtil:Lcom/sec/android/gallery3d/glcore/TUtils;

    return-object v0
.end method

.method public getGlConfig()Lcom/sec/android/gallery3d/glcore/GlConfig;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGlConfig:Lcom/sec/android/gallery3d/glcore/GlConfig;

    return-object v0
.end method

.method public getRootLayer()Lcom/sec/android/gallery3d/glcore/GlLayer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    return-object v0
.end method

.method public getToolType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mToolType:I

    return v0
.end method

.method hasCommand(Ljava/lang/Object;I)Z
    .locals 4

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueue:[Lcom/sec/android/gallery3d/glcore/GlCmd;

    monitor-enter v3

    :try_start_0
    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueRD:I

    :cond_0
    :goto_0
    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueWR:I

    if-eq v1, v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueue:[Lcom/sec/android/gallery3d/glcore/GlCmd;

    aget-object v0, v2, v1

    if-nez v0, :cond_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x400

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcom/sec/android/gallery3d/glcore/GlCmd;->mThis:Ljava/lang/Object;

    if-ne p1, v2, :cond_1

    iget v2, v0, Lcom/sec/android/gallery3d/glcore/GlCmd;->mCmd:I

    if-ne p2, v2, :cond_1

    const/4 v2, 0x1

    monitor-exit v3

    :goto_1
    return v2

    :cond_3
    monitor-exit v3

    const/4 v2, 0x0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method lockRefresh()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRefreshEnabled:Z

    return-void
.end method

.method public onDrag(Landroid/view/DragEvent;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->lockRenderThread()V

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContentView:Lcom/sec/android/gallery3d/ui/GLView;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContentView:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/ui/GLView;->dispatchDragEvent(Landroid/view/DragEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    :goto_0
    return v0

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-direct {p0, v2, p1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->onDragInter(Lcom/sec/android/gallery3d/glcore/GlObject;Landroid/view/DragEvent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    move v0, v1

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/glcore/GlLayer;->dispatchDragEvent(Landroid/view/DragEvent;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    throw v1
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderLogic:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->isRenderRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v1, "ON_GL_IDLE_TIMER"

    sget-object v2, Lcom/sec/android/gallery3d/glcore/GlRootView;->RESET_TIMER_WITH_DELAY:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mFirstDraw:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlRootView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/glcore/GlRootView$1;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mFirstDraw:Z

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->printPerformanceLog()V

    :cond_3
    return-void
.end method

.method protected onDrawFrameLocked(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x1

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mAddedLayerPosition:I

    if-eq v4, v8, :cond_4

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/app/TabStateManager;

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mAddedLayerPosition:I

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/app/TabStateManager;->getTabState(I)Lcom/sec/android/gallery3d/app/TabActivityState;

    move-result-object v3

    if-nez v3, :cond_0

    const-string/jumbo v4, "GlRootView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fail to get tabActivityState. pos="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/glcore/GlLayer;->getTabPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", add pos="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mAddedLayerPosition:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/TabActivityState;->getGlComposeView()Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/glcore/GlLayer;->getTabPosition()I

    move-result v5

    iget v6, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mAddedLayerPosition:I

    invoke-direct {p0, v4, v5, v6}, Lcom/sec/android/gallery3d/glcore/GlRootView;->engageLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;II)V

    :cond_1
    iput v8, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mAddedLayerPosition:I

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContentView:Lcom/sec/android/gallery3d/ui/GLView;

    if-eqz v4, :cond_6

    const/4 v2, 0x1

    :goto_2
    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderLogic:I

    if-eq v2, v4, :cond_3

    const-string/jumbo v4, "GlRootView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "renderLogic is changed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderLogic:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderLogic:I

    if-ne v2, v9, :cond_8

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->resetGL()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->reset()V

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->onCommand()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderRequested:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-ne v2, v7, :cond_9

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->onDrawFrameLocked(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayerNew:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mAccessibliityNodeProvider:Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mAccessibliityNodeProvider:Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->clearAccessibilityFocus()V

    :cond_5
    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayerNew:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {p0, v4}, Lcom/sec/android/gallery3d/glcore/GlRootView;->replaceLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    if-eqz v4, :cond_7

    const/4 v2, 0x2

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    :cond_8
    if-ne v2, v7, :cond_3

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCanvas:Lcom/sec/android/gallery3d/glrenderer/GLCanvas;

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->onDrawFrameLocked(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0

    :cond_9
    if-ne v2, v9, :cond_e

    iget-boolean v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRefreshEnabled:Z

    if-nez v4, :cond_a

    const-string/jumbo v4, "GlRootView"

    const-string/jumbo v5, "Skip update screen"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlState;->reset3DAttributes()V

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlState;->isUseBlend()Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    invoke-virtual {v4, v7}, Lcom/sec/android/gallery3d/glcore/GlState;->setUseBlend(Z)V

    const/16 v4, 0xbe2

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    :cond_b
    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mClipRetryCount:I

    if-lez v4, :cond_c

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mClipRetryCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mClipRetryCount:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mClipRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-interface {p1, v4, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    :cond_c
    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mBackground:Lcom/sec/android/gallery3d/glcore/GlBackground;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mBackground:Lcom/sec/android/gallery3d/glcore/GlBackground;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlBackground;->draw()V

    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCurTime:J

    iget-wide v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCurTime:J

    invoke-direct {p0, v4, v5}, Lcom/sec/android/gallery3d/glcore/GlRootView;->onPosition(J)V

    goto/16 :goto_0

    :cond_e
    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mClipRetryCount:I

    if-lez v4, :cond_f

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mClipRetryCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mClipRetryCount:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mClipRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-interface {v1, v4, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL11;->glScissor(IIII)V

    :cond_f
    const/16 v4, 0x4100

    invoke-interface {v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    goto/16 :goto_0
.end method

.method public onFutureDone(Lcom/sec/android/gallery3d/util/Future;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Lcom/sec/android/gallery3d/glcore/GlObject;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/glcore/GlObject;

    if-nez v1, :cond_1

    const-string/jumbo v2, "GlCanvas"

    const-string/jumbo v3, "onFutureDone null~~~~~"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, v1, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget v2, v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mASyncRenderState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    iput v2, v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mASyncRenderState:I

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderRequested:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->needLockForKeyEvent(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->lockRenderThread()V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mAccessibliityNodeProvider:Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mAccessibliityNodeProvider:Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->clearAccessibilityFocus()V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderLogic:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlLayer;->dispatchKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_2
    if-nez v0, :cond_3

    invoke-super {p0, p1, p2}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->onKeyDown(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->needLockForKeyEvent(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    :cond_4
    return v0

    :catchall_0
    move-exception v1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->needLockForKeyEvent(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    :cond_5
    throw v1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->lockRenderThread()V

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContentView:Lcom/sec/android/gallery3d/ui/GLView;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderLogic:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContentView:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/gallery3d/ui/GLView;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderLogic:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlLayer;->dispatchKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    invoke-super {p0, p1, p2}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->onKeyLongPress(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    return v0

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    throw v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->lockRenderThread()V

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderLogic:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlLayer;->dispatchKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->onKeyUp(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    return v0

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    throw v1
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->onPause()V

    const-string/jumbo v0, "GlRootView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPause mGlActive = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGlActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->releaseInstance()V

    invoke-static {}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->releaseInstance()V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->onResume()V

    const-string/jumbo v0, "GlRootView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResume mGlActive = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGlActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 6

    const/4 v4, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    invoke-direct {p0, v4}, Lcom/sec/android/gallery3d/glcore/GlRootView;->initializeGL(Z)V

    const/4 v1, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/glcore/GlRootView;->sendCommand(IIIILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGlConfig:Lcom/sec/android/gallery3d/glcore/GlConfig;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlConfig;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4, v4, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mClipRetryCount:I

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->initializeGL(Z)V

    return-void
.end method

.method removeAllAnimation(Lcom/sec/android/gallery3d/glcore/GlObject;)V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mAnimationMgr:Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;

    iget v2, v3, Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;->mMaxUsed:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mAnimationMgr:Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;

    iget-object v3, v3, Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;->mAnimationSet:[Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    aget-object v0, v3, v1

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-ne v3, p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->removeAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public removeAllObject()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->removeAllObjectInter(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mChildCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGLUtil:Lcom/sec/android/gallery3d/glcore/TUtils;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/TUtils;->clearTexture()V

    :cond_0
    return-void
.end method

.method removeAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mAnimState:I

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->stop()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mAnimationMgr:Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;->remove(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    goto :goto_0
.end method

.method removeCommand(Lcom/sec/android/gallery3d/glcore/GlCmd;)V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueue:[Lcom/sec/android/gallery3d/glcore/GlCmd;

    monitor-enter v3

    :try_start_0
    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueRD:I

    :cond_0
    :goto_0
    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueWR:I

    if-eq v1, v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueue:[Lcom/sec/android/gallery3d/glcore/GlCmd;

    aget-object v0, v2, v1

    if-nez v0, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x400

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/sec/android/gallery3d/glcore/GlCmd;->mThis:Ljava/lang/Object;

    iget-object v4, v0, Lcom/sec/android/gallery3d/glcore/GlCmd;->mThis:Ljava/lang/Object;

    if-ne v2, v4, :cond_1

    iget v2, p1, Lcom/sec/android/gallery3d/glcore/GlCmd;->mCmd:I

    iget v4, v0, Lcom/sec/android/gallery3d/glcore/GlCmd;->mCmd:I

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueue:[Lcom/sec/android/gallery3d/glcore/GlCmd;

    const/4 v4, 0x0

    aput-object v4, v2, v1

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/sec/android/gallery3d/glcore/GlCmd;->mValid:Z

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method removeCommand(Ljava/lang/Object;)V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueue:[Lcom/sec/android/gallery3d/glcore/GlCmd;

    monitor-enter v3

    :try_start_0
    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueRD:I

    :cond_0
    :goto_0
    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueWR:I

    if-eq v1, v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueue:[Lcom/sec/android/gallery3d/glcore/GlCmd;

    aget-object v0, v2, v1

    if-nez v0, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x400

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcom/sec/android/gallery3d/glcore/GlCmd;->mThis:Ljava/lang/Object;

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueue:[Lcom/sec/android/gallery3d/glcore/GlCmd;

    const/4 v4, 0x0

    aput-object v4, v2, v1

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/sec/android/gallery3d/glcore/GlCmd;->mValid:Z

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method removeObject(Lcom/sec/android/gallery3d/glcore/GlObject;)V
    .locals 11

    const/4 v10, 0x3

    if-eqz p1, :cond_0

    iget v2, p1, Lcom/sec/android/gallery3d/glcore/GlObject;->mState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x2

    iput v2, p1, Lcom/sec/android/gallery3d/glcore/GlObject;->mState:I

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mMotionTarget:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mMotionTarget:Ljava/lang/Object;

    if-ne v2, p1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mMotionTarget:Ljava/lang/Object;

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v2, v8}, Lcom/sec/android/gallery3d/glcore/GlObject;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mMotionTarget:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glcore/GlObject;->removeAllListeners()V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glcore/GlObject;->onDestroy()V

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->removeAllAnimation(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->removeCommand(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->removeRotationListener(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    iput v10, p1, Lcom/sec/android/gallery3d/glcore/GlObject;->mState:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/glcore/GlObject;->removeChildFromRootObject(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderRequested:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    goto :goto_0

    :catch_0
    move-exception v9

    const-string/jumbo v2, "GlRootView"

    invoke-virtual {v9}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v9

    const-string/jumbo v2, "GlRootView"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method removeOnGLIdleListener(Lcom/sec/android/gallery3d/ui/GLRoot$OnGLIdleListener;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removeRotationListener(Lcom/sec/android/gallery3d/glcore/GlObject;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRotationListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRotationListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public requestRender()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mSkipRendering:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->requestRender()V

    goto :goto_0
.end method

.method public setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mAnimationMgr:Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;->add(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iput-object v0, p1, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    goto :goto_0
.end method

.method public setClearByColor(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mBackground:Lcom/sec/android/gallery3d/glcore/GlBackground;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mBackground:Lcom/sec/android/gallery3d/glcore/GlBackground;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/glcore/GlBackground;->setClearByColor(Z)V

    goto :goto_0
.end method

.method public setCommand(Lcom/sec/android/gallery3d/glcore/GlCmd;)V
    .locals 5

    const/16 v4, 0x400

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueue:[Lcom/sec/android/gallery3d/glcore/GlCmd;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueue:[Lcom/sec/android/gallery3d/glcore/GlCmd;

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueWR:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueWR:I

    aput-object p1, v0, v2

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueWR:I

    if-ne v0, v4, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueWR:I

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueWR:I

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueRD:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueRD:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueRD:I

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueRD:I

    if-ne v0, v4, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mCmdQueueRD:I

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderRequested:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setContentPane(Lcom/sec/android/gallery3d/ui/GLView;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->setContentPane(Lcom/sec/android/gallery3d/ui/GLView;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayerNew:Lcom/sec/android/gallery3d/glcore/GlLayer;

    :cond_0
    return-void
.end method

.method public setDataExtractionListener()V
    .locals 3

    new-instance v0, Lcom/sec/samsung/gallery/lib/factory/SmartClipDataHelperFactory;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/lib/factory/SmartClipDataHelperFactory;-><init>()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContext:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getClipDataListener()Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface;->setOnClipDataListener(Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListener;)V

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface;->setDataExtractionListener(Landroid/view/View;Z)V

    return-void
.end method

.method public setGlBackgroundColor(FFFF)V
    .locals 0

    iput p4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mBgColorAlpha:F

    iput p1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mBgColorRed:F

    iput p2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mBgColorGreen:F

    iput p3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mBgColorBlue:F

    return-void
.end method

.method public setRootLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "GlRootView"

    const-string/jumbo v1, "TABSWIPE_ setRootLayer default/new is same"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "GlRootView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TABSWIPE_ setRootLayer default/new : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlLayer;->getTabPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glcore/GlLayer;->getTabPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayerNew:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRenderLogic:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public skipRenderRequest(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mSkipRendering:Z

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    const-string/jumbo v1, "GlRootView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "surfaceChanged, type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/sec/android/gallery3d/glcore/GlRootView;->FeatureSupportKnoxDesktop:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mKnoxDesktopMode:Z

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    const-string/jumbo v0, "GlRootView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "surfaceCreated, type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mUploadBmCache:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->createUploadBitmapCache()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mUploadBmCache:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    const-string/jumbo v0, "GlRootView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "surfaceDestroyed, type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGlActive:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/glcore/GlRootView;->replaceLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mUploadBmCache:Ljava/lang/Object;

    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->destroyUploadBitmapCache(Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setContentPane(Lcom/sec/android/gallery3d/ui/GLView;)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->finalizeBackground()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->clearGLIdleListener()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->finalizeGL()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->clearCommandQueue()V

    iput-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mUploadBmCache:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mGlActive:Z

    goto :goto_0
.end method

.method unlockRefresh()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRefreshEnabled:Z

    return-void
.end method
