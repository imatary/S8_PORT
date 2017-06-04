.class public Lcom/sec/android/gallery3d/glcore/GlMovementDetector;
.super Ljava/lang/Object;
.source "GlMovementDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;
    }
.end annotation


# static fields
.field private static final DELAY_GOOGLE_MULTISELECTION:I = 0x64

.field private static final LONG_PRESSED_EVT:I = 0x1

.field private static final LONG_PRESSED_INCREMENT_EVT:I = 0x3

.field private static final LONG_PRESSED_OCCUR:I = 0x1f4

.field private static final MIN_FLING_VELOCITY:F = 500.0f

.field private static final MOUSE_SCROLL_SPEED:F = 100.0f

.field private static final MULTI_SELECT_EVT:I = 0x2

.field private static final PAST_COUNT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "GlMovementDetector"

.field private static sInstance:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

.field public static sThresholdDistance:I


# instance fields
.field private mClickActive:Z

.field private mDetectListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

.field private mDifX:F

.field private mDifY:F

.field private mFirstEnterMultiSelect:Z

.field private mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

.field private mInThreshold:Z

.field private final mLMs:[J

.field private final mLX:[I

.field private final mLY:[I

.field private mLongPressedOccur:I

.field private mLongTmActive:Z

.field private mLxIndex:I

.field private mMovX:I

.field private mMovY:I

.field private mMovedOverClickLimit:Z

.field private mMultiSelectionActive:Z

.field private mPressX:I

.field private mPressY:I

.field private mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

.field private mSupportViewOfMultiSelection:Z

.field private mTEvtCount:I

.field private mVelocityX:F

.field private mVelocityY:F


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/glcore/GlRootView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x4

    const/16 v3, 0x1f4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

    iput v3, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLongPressedOccur:I

    iput v5, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDifX:F

    iput v5, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDifY:F

    new-array v1, v4, [I

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLX:[I

    new-array v1, v4, [I

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLY:[I

    new-array v1, v4, [J

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLMs:[J

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mInThreshold:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLongTmActive:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mClickActive:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mMovedOverClickLimit:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mMultiSelectionActive:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mSupportViewOfMultiSelection:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mFirstEnterMultiSelect:Z

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iput-object p2, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

    iput v3, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLongPressedOccur:I

    :try_start_0
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    sput v1, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->sThresholdDistance:I

    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "long_press_timeout"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLongPressedOccur:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$1;

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$1;-><init>(Lcom/sec/android/gallery3d/glcore/GlMovementDetector;Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->sThresholdDistance:I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    iput v3, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLongPressedOccur:I

    goto :goto_1

    :catch_1
    move-exception v0

    iput v3, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLongPressedOccur:I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/glcore/GlMovementDetector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLongTmActive:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/gallery3d/glcore/GlMovementDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLongTmActive:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/glcore/GlMovementDetector;)Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/glcore/GlMovementDetector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mMultiSelectionActive:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/gallery3d/glcore/GlMovementDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mMultiSelectionActive:Z

    return p1
.end method

.method static synthetic access$302(Lcom/sec/android/gallery3d/glcore/GlMovementDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mClickActive:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/glcore/GlMovementDetector;)Lcom/sec/android/gallery3d/glcore/GlHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/glcore/GlMovementDetector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mFirstEnterMultiSelect:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/gallery3d/glcore/GlMovementDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mFirstEnterMultiSelect:Z

    return p1
.end method

.method private calcMovement(IIJI)V
    .locals 9

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLX:[I

    iget v6, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLxIndex:I

    aput p1, v5, v6

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLY:[I

    iget v6, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLxIndex:I

    aput p2, v5, v6

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLMs:[J

    iget v6, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLxIndex:I

    aput-wide p3, v5, v6

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLxIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLxIndex:I

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLxIndex:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    iput v5, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLxIndex:I

    :cond_0
    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mTEvtCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mTEvtCount:I

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mPressX:I

    sub-int v5, p1, v5

    iput v5, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mMovX:I

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mPressY:I

    sub-int v5, p2, v5

    iput v5, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mMovY:I

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mMovX:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sget v6, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->sThresholdDistance:I

    if-gt v5, v6, :cond_1

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mMovY:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sget v6, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->sThresholdDistance:I

    if-le v5, v6, :cond_2

    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mMovedOverClickLimit:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mClickActive:Z

    :cond_2
    iget-boolean v5, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLongTmActive:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mMovedOverClickLimit:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeMessage(I)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeMessage(I)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeMessage(I)V

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLongTmActive:Z

    :cond_3
    const/4 v5, 0x1

    if-eq p5, v5, :cond_4

    const/4 v5, 0x3

    if-ne p5, v5, :cond_7

    :cond_4
    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mTEvtCount:I

    const/4 v6, 0x4

    if-lt v5, v6, :cond_8

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLxIndex:I

    :goto_0
    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLX:[I

    aget v5, v5, v4

    sub-int v2, p1, v5

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLY:[I

    aget v5, v5, v4

    sub-int v3, p2, v5

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLMs:[J

    aget-wide v6, v5, v4

    sub-long v0, p3, v6

    int-to-float v5, v2

    const/high16 v6, 0x44fa0000    # 2000.0f

    mul-float/2addr v5, v6

    long-to-float v6, v0

    div-float/2addr v5, v6

    iput v5, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mVelocityX:F

    int-to-float v5, v3

    const/high16 v6, 0x44fa0000    # 2000.0f

    mul-float/2addr v5, v6

    long-to-float v6, v0

    div-float/2addr v5, v6

    iput v5, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mVelocityY:F

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mVelocityX:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x43fa0000    # 500.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_5

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mVelocityY:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x43fa0000    # 500.0f

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_6

    :cond_5
    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mMovX:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sget v6, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->sThresholdDistance:I

    if-ge v5, v6, :cond_7

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mMovY:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sget v6, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->sThresholdDistance:I

    if-ge v5, v6, :cond_7

    :cond_6
    const/4 v5, 0x0

    iput v5, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mVelocityX:F

    const/4 v5, 0x0

    iput v5, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mVelocityY:F

    :cond_7
    return-void

    :cond_8
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private checkMultiSelectCondition(FF)Z
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v7, 0x0

    cmpl-float v7, v0, v7

    if-nez v7, :cond_1

    move v5, v6

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const v3, 0x3f570a3d    # 0.84f

    div-float v4, v1, v0

    cmpl-float v7, v4, v3

    if-lez v7, :cond_0

    move v5, v6

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v6, "GlMovementDetector"

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Lcom/sec/android/gallery3d/glcore/GlRootView;)Lcom/sec/android/gallery3d/glcore/GlMovementDetector;
    .locals 2

    const-class v1, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->sInstance:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    sput-object v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->sInstance:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    :cond_0
    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->sInstance:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private inSelectionMode()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    return v0
.end method

.method private isSupportViewMultiSelection(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v2, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private onTouch(Landroid/view/MotionEvent;II)Z
    .locals 16

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v10, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v11, v3

    if-nez v8, :cond_4

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDifX:F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDifY:F

    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mPressX:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mPressY:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLX:[I

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mPressX:I

    aput v13, v3, v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLY:[I

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mPressY:I

    aput v13, v3, v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLMs:[J

    const/4 v9, 0x0

    aput-wide v6, v3, v9

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLxIndex:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mTEvtCount:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mFirstEnterMultiSelect:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    const/4 v9, 0x2

    if-ne v3, v9, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v3, v10, v11, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;->onSecondaryClick(IIII)Z

    move-result v2

    move v5, v11

    move v4, v10

    :goto_0
    move v3, v2

    :goto_1
    return v3

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mPressX:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mPressY:I

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v3, v9, v13, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;->onPress(IIII)Z

    move-result v2

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->isSupportViewMultiSelection(Landroid/content/Context;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mSupportViewOfMultiSelection:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mSupportViewOfMultiSelection:Z

    if-eqz v3, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->inSelectionMode()Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v4, 0x2

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLongPressedOccur:I

    add-int/lit8 v9, v9, 0x64

    int-to-long v8, v9

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual/range {v3 .. v9}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessageDelayed(IIIIJ)V

    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLongTmActive:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mPressX:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mPressY:I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLongPressedOccur:I

    int-to-long v8, v9

    invoke-virtual/range {v3 .. v9}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessageDelayed(IIIIJ)V

    :cond_2
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mInThreshold:Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLongTmActive:Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mClickActive:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mMovedOverClickLimit:Z

    move v5, v11

    move v4, v10

    goto/16 :goto_0

    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mSupportViewOfMultiSelection:Z

    goto :goto_2

    :cond_4
    const/4 v3, 0x2

    if-ne v8, v3, :cond_9

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mInThreshold:Z

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mPressX:I

    sub-int v3, v10, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sget v9, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->sThresholdDistance:I

    if-ge v3, v9, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mPressY:I

    sub-int v3, v11, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sget v9, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->sThresholdDistance:I

    if-ge v3, v9, :cond_5

    const/4 v3, 0x1

    move v5, v11

    move v4, v10

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mPressX:I

    sub-int v3, v10, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDifX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mPressY:I

    sub-int v3, v11, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDifY:F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mInThreshold:Z

    :cond_6
    int-to-float v3, v10

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDifX:F

    sub-float/2addr v3, v9

    float-to-int v4, v3

    int-to-float v3, v11

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDifY:F

    sub-float/2addr v3, v9

    float-to-int v5, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDifX:F

    const v9, 0x3f8ccccd    # 1.1f

    div-float/2addr v3, v9

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDifX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDifY:F

    const v9, 0x3f8ccccd    # 1.1f

    div-float/2addr v3, v9

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDifY:F

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mSupportViewOfMultiSelection:Z

    if-eqz v3, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->inSelectionMode()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mMultiSelectionActive:Z

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mClickActive:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLongTmActive:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v3, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;->onMultiSelectMove(II)Z

    move-result v2

    :cond_7
    :goto_3
    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->calcMovement(IIJI)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mPressX:I

    sub-int v9, v4, v9

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mPressY:I

    sub-int v13, v5, v13

    invoke-interface {v3, v9, v13}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;->onMove(II)Z

    move-result v3

    or-int/2addr v2, v3

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLongTmActive:Z

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDifX:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDifY:F

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v9}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->checkMultiSelectCondition(FF)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v9, 0x2

    const/4 v13, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v3, v9, v0, v1, v13}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    goto :goto_3

    :cond_9
    const/16 v3, 0x8

    if-ne v8, v3, :cond_d

    const/16 v3, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v3, v9

    float-to-int v12, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    const/4 v9, 0x3

    if-ne v3, v9, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isCtrlPressed()Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

    if-ltz v12, :cond_b

    const/4 v3, 0x1

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    float-to-int v14, v14

    invoke-interface {v9, v3, v13, v14}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;->onMouseWheelScale(ZII)Z

    move-result v2

    :cond_a
    :goto_5
    move v5, v11

    move v4, v10

    goto/16 :goto_0

    :cond_b
    const/4 v3, 0x0

    goto :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

    const/4 v9, 0x0

    invoke-interface {v3, v9, v12, v10, v11}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;->onScroll(IIII)Z

    move-result v2

    goto :goto_5

    :cond_d
    const/4 v3, 0x1

    if-ne v8, v3, :cond_12

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mMultiSelectionActive:Z

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v3, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;->onMultiSelectRelease(II)Z

    move-result v2

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLongTmActive:Z

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeMessage(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v9, 0x2

    invoke-virtual {v3, v9}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeMessage(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v9, 0x3

    invoke-virtual {v3, v9}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeMessage(I)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLongTmActive:Z

    :cond_f
    int-to-float v3, v10

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDifX:F

    sub-float/2addr v3, v9

    float-to-int v4, v3

    int-to-float v3, v11

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDifY:F

    sub-float/2addr v3, v9

    float-to-int v5, v3

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->calcMovement(IIJI)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mClickActive:Z

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mMovedOverClickLimit:Z

    if-nez v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;->onClick()Z

    move-result v3

    or-int/2addr v2, v3

    :cond_10
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mClickActive:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mMultiSelectionActive:Z

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface {v3, v9, v13, v14, v15}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;->onRelease(IIII)Z

    move-result v3

    or-int/2addr v2, v3

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mMultiSelectionActive:Z

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mMovX:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mMovY:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mVelocityX:F

    float-to-int v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mVelocityY:F

    float-to-int v15, v15

    invoke-interface {v3, v9, v13, v14, v15}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;->onRelease(IIII)Z

    move-result v3

    or-int/2addr v2, v3

    goto/16 :goto_0

    :cond_12
    const/4 v3, 0x3

    if-ne v8, v3, :cond_16

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mMultiSelectionActive:Z

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v3, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;->onMultiSelectRelease(II)Z

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLongTmActive:Z

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeMessage(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v9, 0x2

    invoke-virtual {v3, v9}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeMessage(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v9, 0x3

    invoke-virtual {v3, v9}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeMessage(I)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLongTmActive:Z

    :cond_14
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mClickActive:Z

    int-to-float v3, v10

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDifX:F

    sub-float/2addr v3, v9

    float-to-int v4, v3

    int-to-float v3, v11

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDifY:F

    sub-float/2addr v3, v9

    float-to-int v5, v3

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->calcMovement(IIJI)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mMultiSelectionActive:Z

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface {v3, v9, v13, v14, v15}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;->onRelease(IIII)Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mMultiSelectionActive:Z

    :goto_6
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mMovX:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mMovY:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mVelocityX:F

    float-to-int v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mVelocityY:F

    float-to-int v15, v15

    invoke-interface {v3, v9, v13, v14, v15}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;->onRelease(IIII)Z

    goto :goto_6

    :cond_16
    const/16 v3, 0x3e8

    if-eq v8, v3, :cond_17

    const/16 v3, 0x3ea

    if-eq v8, v3, :cond_17

    const/16 v3, 0x3eb

    if-ne v8, v3, :cond_18

    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v13, v13

    invoke-interface {v3, v9, v13}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;->onGenericMotionTouch(II)Z

    move-result v2

    move v5, v11

    move v4, v10

    goto/16 :goto_0

    :cond_18
    move v5, v11

    move v4, v10

    goto/16 :goto_0
.end method

.method public static declared-synchronized releaseInstance()V
    .locals 2

    const-class v0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->sInstance:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, v0}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->onTouch(Landroid/view/MotionEvent;II)Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;)Z
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->onTouch(Landroid/view/MotionEvent;Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;II)Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;II)Z
    .locals 1

    iput-object p2, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

    invoke-direct {p0, p1, p3, p4}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->onTouch(Landroid/view/MotionEvent;II)Z

    move-result v0

    return v0
.end method
