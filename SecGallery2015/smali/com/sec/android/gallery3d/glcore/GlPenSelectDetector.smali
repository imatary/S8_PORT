.class public Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;
.super Ljava/lang/Object;
.source "GlPenSelectDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector$GlPenSelectDetectorListener;
    }
.end annotation


# static fields
.field private static final LIST_SCROLL_INTERVAL:J = 0x12cL

.field private static final LIST_SCROLL_RECOGNITION_EVT:I = 0x0

.field private static final LIST_SCROLL_TICK_EVT:I = 0x1

.field private static final LIST_SCROLL_TICK_INTERVAL:I = 0xa

.field private static final MOVE_STEP:I = 0x14

.field private static final MULTI_SELECT_EVT:I = 0x2

.field private static final PAST_COUNT:I = 0x8

.field private static final PENMOVE_SCROLL_DETECT_AREA:I = 0x64

.field private static final PENMOVE_SCROLL_DOWN:I = 0x2

.field private static final PENMOVE_SCROLL_NONE:I = 0x0

.field private static final PENMOVE_SCROLL_UP:I = 0x1

.field public static final REACHED_BOTTOM_BOUNDARY:I = 0x1

.field public static final REACHED_TOP_BOUNDARY:I = -0x1

.field private static final THRESHOLD_DISTANCE:I = 0x14

.field private static sInstance:Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;


# instance fields
.field private mDetectListener:Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector$GlPenSelectDetectorListener;

.field private final mEnd:Landroid/graphics/PointF;

.field private mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

.field private mInThreshold:Z

.field private mIsActionDown:Z

.field private mIsActionUp:Z

.field private mIsListScroll:Z

.field private mIsScrollPaused:Z

.field private final mLMs:[J

.field private final mLX:[I

.field private final mLY:[I

.field private mListScrollActive:Z

.field private mLxIndex:I

.field private mMSActive:Z

.field private mMoveEvent:Landroid/view/MotionEvent;

.field private mMoveY:I

.field private mPressX:I

.field private mPressY:I

.field private final mRect:Landroid/graphics/Rect;

.field private mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

.field private mScrollDirection:I

.field private final mStart:Landroid/graphics/PointF;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/glcore/GlRootView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector$GlPenSelectDetectorListener;)V

    return-void
.end method

.method private constructor <init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector$GlPenSelectDetectorListener;)V
    .locals 3

    const/4 v0, 0x0

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector$GlPenSelectDetectorListener;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mStart:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mEnd:Landroid/graphics/PointF;

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mMoveY:I

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mScrollDirection:I

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mLX:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mLY:[I

    new-array v0, v2, [J

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mLMs:[J

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mListScrollActive:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mIsListScroll:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mIsScrollPaused:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mIsActionUp:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mIsActionDown:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mInThreshold:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mMSActive:Z

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iput-object p2, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector$GlPenSelectDetectorListener;

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector$1;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector$1;-><init>(Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mListScrollActive:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mListScrollActive:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;)Lcom/sec/android/gallery3d/glcore/GlHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;)Landroid/view/MotionEvent;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mMoveEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->updateMovement(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;Landroid/view/MotionEvent;Z)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->calcMovement(Landroid/view/MotionEvent;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mMSActive:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;)Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector$GlPenSelectDetectorListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector$GlPenSelectDetectorListener;

    return-object v0
.end method

.method private calcMovement(Landroid/view/MotionEvent;Z)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v1, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v4, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iget-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mLX:[I

    iget v7, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mLxIndex:I

    aput v1, v6, v7

    iget-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mLY:[I

    iget v7, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mLxIndex:I

    aput v4, v6, v7

    iget-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mLMs:[J

    iget v7, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mLxIndex:I

    aput-wide v2, v6, v7

    iget v6, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mLxIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mLxIndex:I

    iget v6, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mLxIndex:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    iput v8, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mLxIndex:I

    :cond_0
    iget v6, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mPressY:I

    sub-int v0, v4, v6

    if-eqz p2, :cond_3

    iget v6, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mScrollDirection:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    iget v6, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mScrollDirection:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    iget-boolean v6, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mIsActionUp:Z

    if-eqz v6, :cond_2

    :cond_1
    iput-boolean v8, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mIsActionUp:Z

    iget-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector$GlPenSelectDetectorListener;

    invoke-interface {v6, v8, v0, v8, v8}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector$GlPenSelectDetectorListener;->onRelease(IIII)Z

    move-result v5

    :cond_2
    :goto_0
    return v5

    :cond_3
    iget-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector$GlPenSelectDetectorListener;

    invoke-interface {v6, v8, v0}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector$GlPenSelectDetectorListener;->onMove(II)Z

    move-result v5

    goto :goto_0
.end method

.method private checkPoint(II)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->getDirection(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mScrollDirection:I

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mScrollDirection:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDirection(II)I
    .locals 7

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayHeight(Landroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v1, v5, v6

    const/high16 v5, 0x42c80000    # 100.0f

    iget v6, v2, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    div-float/2addr v6, v1

    mul-float/2addr v5, v6

    float-to-int v4, v5

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    const/4 v3, 0x0

    if-le p2, v0, :cond_1

    add-int v5, v0, v4

    if-ge p2, v5, :cond_1

    const/4 v3, 0x1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget v5, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v4

    if-le p2, v5, :cond_0

    const/4 v3, 0x2

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Lcom/sec/android/gallery3d/glcore/GlRootView;)Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;
    .locals 2

    const-class v1, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->sInstance:Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    sput-object v0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->sInstance:Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;

    :cond_0
    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->sInstance:Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onPenMoveScroll(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    invoke-direct {p0, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->checkPoint(II)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mIsActionUp:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mListScrollActive:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeMessage(I)V

    :cond_0
    iput-boolean v6, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mListScrollActive:Z

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->processListScrollEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1

    :cond_2
    iget-boolean v4, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mIsListScroll:Z

    if-eqz v4, :cond_4

    iput-boolean v6, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mIsScrollPaused:Z

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    sget v4, Lcom/sec/samsung/gallery/lib/factory/MotionEventWrapper;->ACTION_PEN_UP:I

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->processListScrollEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_3
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    sget v5, Lcom/sec/samsung/gallery/lib/factory/MotionEventWrapper;->ACTION_PEN_UP:I

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mMoveEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mMoveEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, v4, v6}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->calcMovement(Landroid/view/MotionEvent;Z)Z

    goto :goto_1
.end method

.method private onTouch(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v2, 0x2

    const/16 v6, 0x14

    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v3, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v4, v1

    sget v1, Lcom/sec/samsung/gallery/lib/factory/MotionEventWrapper;->ACTION_PEN_DOWN:I

    if-ne v0, v1, :cond_2

    iput-boolean v9, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mIsActionDown:Z

    iput-boolean v9, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mInThreshold:Z

    iput v3, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mPressX:I

    iput v4, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mPressY:I

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->onPenMoveScroll(Landroid/view/MotionEvent;)Z

    invoke-direct {p0, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->setFirstPoint(II)V

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mMSActive:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeMessage(I)V

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mMSActive:Z

    move v1, v9

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector$GlPenSelectDetectorListener;

    invoke-interface {v1, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector$GlPenSelectDetectorListener;->onPenEnter(II)Z

    move-result v8

    :cond_1
    :goto_1
    move v1, v8

    goto :goto_0

    :cond_2
    sget v1, Lcom/sec/samsung/gallery/lib/factory/MotionEventWrapper;->ACTION_PEN_UP:I

    if-ne v0, v1, :cond_5

    iput-boolean v9, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mIsActionUp:Z

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mIsActionDown:Z

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->onPenMoveScroll(Landroid/view/MotionEvent;)Z

    invoke-direct {p0, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->setSecondPoint(II)V

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mInThreshold:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mPressX:I

    sub-int v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v6, :cond_3

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mPressY:I

    sub-int v1, v4, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v6, :cond_3

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mPressX:I

    iget v6, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mPressY:I

    invoke-direct {p0, v1, v6}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->setSecondPoint(II)V

    iput-boolean v9, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mMSActive:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const-wide/16 v6, 0x12c

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessageDelayed(IIIIJ)V

    move v1, v9

    goto :goto_0

    :cond_3
    iput-boolean v5, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mInThreshold:Z

    :cond_4
    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector$GlPenSelectDetectorListener;

    invoke-interface {v1, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector$GlPenSelectDetectorListener;->onPenSelect(II)Z

    move-result v8

    goto :goto_1

    :cond_5
    sget v1, Lcom/sec/samsung/gallery/lib/factory/MotionEventWrapper;->ACTION_PEN_MOVE:I

    if-ne v0, v1, :cond_7

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->onPenMoveScroll(Landroid/view/MotionEvent;)Z

    invoke-direct {p0, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->setSecondPoint(II)V

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mPressX:I

    sub-int v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v6, :cond_6

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mPressY:I

    sub-int v1, v4, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v6, :cond_6

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mPressX:I

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mPressY:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->setSecondPoint(II)V

    :cond_6
    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector$GlPenSelectDetectorListener;

    invoke-interface {v1, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector$GlPenSelectDetectorListener;->onPenMove(II)Z

    move-result v8

    goto :goto_1

    :cond_7
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iput-boolean v9, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mIsActionUp:Z

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mIsActionDown:Z

    if-nez v1, :cond_8

    move v1, v8

    goto :goto_0

    :cond_8
    iput-boolean v5, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mIsActionDown:Z

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->onPenMoveScroll(Landroid/view/MotionEvent;)Z

    invoke-direct {p0, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->setSecondPoint(II)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector$GlPenSelectDetectorListener;

    invoke-interface {v1, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector$GlPenSelectDetectorListener;->onPenSelect(II)Z

    move-result v8

    goto/16 :goto_1
.end method

.method private processListScrollEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mIsListScroll:Z

    if-nez v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    sget v4, Lcom/sec/samsung/gallery/lib/factory/MotionEventWrapper;->ACTION_PEN_MOVE:I

    if-ne v3, v4, :cond_0

    sget v3, Lcom/sec/samsung/gallery/lib/factory/MotionEventWrapper;->ACTION_PEN_DOWN:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v15, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v0, v3

    move/from16 v16, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    sget v3, Lcom/sec/samsung/gallery/lib/factory/MotionEventWrapper;->ACTION_PEN_DOWN:I

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mIsScrollPaused:Z

    if-nez v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mPressX:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mPressY:I

    :cond_1
    move-wide v12, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mLX:[I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mPressX:I

    aput v5, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mLY:[I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mPressY:I

    aput v5, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mLMs:[J

    const/4 v4, 0x0

    aput-wide v12, v3, v4

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mLxIndex:I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mIsScrollPaused:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mPressY:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mMoveY:I

    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mIsScrollPaused:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector$GlPenSelectDetectorListener;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mPressX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mPressY:I

    invoke-interface {v3, v4, v5}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector$GlPenSelectDetectorListener;->onPress(II)Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x12c

    invoke-virtual/range {v3 .. v9}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessageDelayed(IIIIJ)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mMoveEvent:Landroid/view/MotionEvent;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mListScrollActive:Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mIsListScroll:Z

    :cond_3
    :goto_0
    return v14

    :cond_4
    sget v3, Lcom/sec/samsung/gallery/lib/factory/MotionEventWrapper;->ACTION_PEN_MOVE:I

    if-ne v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mIsListScroll:Z

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mScrollDirection:I

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->getDirection(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mScrollDirection:I

    :cond_5
    const/4 v14, 0x1

    goto :goto_0

    :cond_6
    sget v3, Lcom/sec/samsung/gallery/lib/factory/MotionEventWrapper;->ACTION_PEN_UP:I

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mListScrollActive:Z

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeMessage(I)V

    :goto_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mScrollDirection:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mListScrollActive:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mIsListScroll:Z

    const/4 v14, 0x1

    goto :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mMoveEvent:Landroid/view/MotionEvent;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->calcMovement(Landroid/view/MotionEvent;Z)Z

    goto :goto_1
.end method

.method public static declared-synchronized releaseInstance()V
    .locals 2

    const-class v0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->sInstance:Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private setFirstPoint(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mStart:Landroid/graphics/PointF;

    int-to-float v1, p1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mStart:Landroid/graphics/PointF;

    int-to-float v1, p2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method private setSecondPoint(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mEnd:Landroid/graphics/PointF;

    int-to-float v1, p1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mEnd:Landroid/graphics/PointF;

    int-to-float v1, p2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method private updateMovement(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 4

    const/4 v3, 0x1

    const/high16 v2, 0x41a00000    # 20.0f

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mScrollDirection:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector$GlPenSelectDetectorListener;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector$GlPenSelectDetectorListener;->isReachedBoundary()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mStart:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mMoveY:I

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mMoveY:I

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mPressX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mMoveY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mScrollDirection:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector$GlPenSelectDetectorListener;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector$GlPenSelectDetectorListener;->isReachedBoundary()I

    move-result v0

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mStart:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    :cond_3
    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mMoveY:I

    add-int/lit8 v0, v0, -0x14

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mMoveY:I

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mPressX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mMoveY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0
.end method


# virtual methods
.method public getFirstPoint()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mStart:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getPenSelectRect()Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mStart:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mEnd:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mStart:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mEnd:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    :goto_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mStart:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mEnd:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mStart:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mEnd:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :goto_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mRect:Landroid/graphics/Rect;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mEnd:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mStart:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mEnd:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mStart:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method

.method public getSecondPoint()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mEnd:Landroid/graphics/PointF;

    return-object v0
.end method

.method public onTouch(Landroid/view/MotionEvent;Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector$GlPenSelectDetectorListener;)Z
    .locals 1

    iput-object p2, p0, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector$GlPenSelectDetectorListener;

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
