.class public Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;
.super Ljava/lang/Object;
.source "GlHoverGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$Area;,
        Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$HoverHandler;,
        Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$SimpleOnGestureListener;,
        Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$OnListScrollListner;
    }
.end annotation


# static fields
.field private static final HOVER_POINT:I = 0x0

.field private static final HOVER_SCROLL_DETECT_AREA:I = 0x3c

.field private static final HOVER_SCROLL_DOWN:I = 0x2

.field private static final HOVER_SCROLL_LEFT:I = 0x3

.field private static final HOVER_SCROLL_RIGHT:I = 0x4

.field private static final HOVER_SCROLL_UP:I = 0x1

.field private static final INVALID_TIME:I = -0x1

.field private static final NSEC:J = 0x64L

.field private static final SCROLL_LIMITATION:I = 0x258

.field private static final SCROLL_MOVE:I = 0x1

.field private static final SCROLL_SPEED:I = 0x14

.field private static final TAG:Ljava/lang/String; = "GlHoverGestureDetector"


# instance fields
.field private final mAreaOfListScroll:Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$Area;

.field private final mContext:Landroid/content/Context;

.field private final mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field private final mHandler:Landroid/os/Handler;

.field private mHoverRelease:Z

.field private mIsListScroll:Z

.field private mListScrollListner:Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$OnListScrollListner;

.field private mRecongnizedStartTime:I

.field private mScrollDirection:I

.field private mTotalDx:I

.field private mTotalDy:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x258

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mHoverRelease:Z

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mTotalDx:I

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mTotalDy:I

    iput-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mListScrollListner:Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$OnListScrollListner;

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$Area;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$Area;-><init>(Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$1;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mAreaOfListScroll:Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$Area;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mRecongnizedStartTime:I

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mScrollDirection:I

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mIsListScroll:Z

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    if-eqz p2, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$HoverHandler;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$HoverHandler;-><init>(Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mHandler:Landroid/os/Handler;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$HoverHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$HoverHandler;-><init>(Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mRecongnizedStartTime:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mScrollDirection:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->scrollBy(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mIsListScroll:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-object v0
.end method

.method private getType(II)I
    .locals 10

    const/high16 v9, 0x42700000    # 60.0f

    const/high16 v8, 0x3f800000    # 1.0f

    iget-object v7, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mContext:Landroid/content/Context;

    check-cast v7, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getScreenSize(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)Landroid/graphics/Point;

    move-result-object v4

    iget-object v7, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    mul-float v1, v7, v8

    iget-object v7, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    mul-float v6, v7, v8

    iget v7, v4, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    div-float/2addr v7, v6

    mul-float/2addr v7, v9

    float-to-int v2, v7

    iget v7, v4, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    div-float/2addr v7, v1

    mul-float/2addr v7, v9

    float-to-int v5, v7

    iget-object v7, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mContext:Landroid/content/Context;

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    const/4 v3, 0x0

    if-le p2, v0, :cond_1

    add-int v7, v0, v5

    if-ge p2, v7, :cond_1

    const/4 v3, 0x1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget v7, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v5

    if-le p2, v7, :cond_2

    const/4 v3, 0x2

    goto :goto_0

    :cond_2
    if-ge p1, v2, :cond_3

    const/4 v3, 0x3

    goto :goto_0

    :cond_3
    iget v7, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v2

    if-le p1, v7, :cond_0

    const/4 v3, 0x4

    goto :goto_0
.end method

.method private processListScrollEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/16 v9, 0x9

    const/4 v7, 0x7

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-boolean v6, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mHoverRelease:Z

    if-eqz v6, :cond_0

    :goto_0
    return v5

    :cond_0
    iget-boolean v6, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mIsListScroll:Z

    if-nez v6, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v7, :cond_1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v3, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v4, v6

    if-ne v0, v9, :cond_4

    iget-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iput-boolean v8, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mIsListScroll:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mRecongnizedStartTime:I

    iput v5, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mTotalDx:I

    iput v5, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mTotalDy:I

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mListScrollListner:Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$OnListScrollListner;

    invoke-interface {v5, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$OnListScrollListner;->onPress(II)Z

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v8, v1, Landroid/os/Message;->what:I

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v2, 0x1

    :cond_3
    :goto_1
    move v5, v2

    goto :goto_0

    :cond_4
    if-ne v0, v7, :cond_6

    iget-boolean v5, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mIsListScroll:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mScrollDirection:I

    if-nez v5, :cond_5

    invoke-direct {p0, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->getType(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mScrollDirection:I

    :cond_5
    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    const/16 v6, 0xa

    if-ne v0, v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeMessages(I)V

    :cond_7
    iput-boolean v5, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mIsListScroll:Z

    const/4 v6, -0x1

    iput v6, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mRecongnizedStartTime:I

    iput v5, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mScrollDirection:I

    iput v5, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mTotalDx:I

    iput v5, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mTotalDy:I

    iget-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mListScrollListner:Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$OnListScrollListner;

    invoke-interface {v6, v5, v5, v5, v5}, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$OnListScrollListner;->onRelease(IIII)Z

    const/4 v2, 0x1

    goto :goto_1
.end method

.method private scrollBy(II)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mHoverRelease:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mTotalDx:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mTotalDx:I

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mTotalDy:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mTotalDy:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mListScrollListner:Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$OnListScrollListner;

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mScrollDirection:I

    invoke-interface {v0, p1, p2, v1}, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$OnListScrollListner;->onMove(III)Z

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mTotalDx:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x258

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mTotalDx:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mListScrollListner:Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$OnListScrollListner;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$OnListScrollListner;->onPrevious()Z

    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mTotalDx:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mListScrollListner:Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$OnListScrollListner;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$OnListScrollListner;->onNext()Z

    goto :goto_1
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mAreaOfListScroll:Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$Area;

    # invokes: Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$Area;->contains(II)Z
    invoke-static {v4, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$Area;->access$600(Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$Area;II)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->processListScrollEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget-boolean v4, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mIsListScroll:Z

    if-eqz v4, :cond_1

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->processListScrollEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public releaseHoverListenerAndEvent()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mHoverRelease:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mIsListScroll:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mRecongnizedStartTime:I

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mScrollDirection:I

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mTotalDx:I

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mTotalDy:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mListScrollListner:Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$OnListScrollListner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mListScrollListner:Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$OnListScrollListner;

    invoke-interface {v0, v1, v1, v1, v1}, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$OnListScrollListner;->onRelease(IIII)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mListScrollListner:Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$OnListScrollListner;

    :cond_1
    return-void
.end method

.method public setListener(Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$OnListScrollListner;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mListScrollListner:Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$OnListScrollListner;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->mHoverRelease:Z

    return-void
.end method
