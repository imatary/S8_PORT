.class public Lcom/sec/android/gallery3d/ui/GestureRecognizer;
.super Ljava/lang/Object;
.source "GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/ui/GestureRecognizer$MyDownUpListener;,
        Lcom/sec/android/gallery3d/ui/GestureRecognizer$MyScaleListener;,
        Lcom/sec/android/gallery3d/ui/GestureRecognizer$MyGestureListener;,
        Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GestureRecognizer"


# instance fields
.field private mAlwaysInTapRegion:Z

.field private final mContext:Landroid/content/Context;

.field private mCustomTouchSlopSquare:I

.field private mDownFocusX:F

.field private mDownFocusY:F

.field private final mDownUpDetector:Lcom/sec/android/gallery3d/ui/DownUpDetector;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginDx:F

.field private mOriginDy:F

.field private final mRes:Landroid/content/res/Resources;

.field private final mScaleDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mDownFocusX:F

    iput v0, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mDownFocusY:F

    iput v4, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mCustomTouchSlopSquare:I

    iput v1, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mOriginDx:F

    iput v1, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mOriginDy:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mListeners:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/sec/android/gallery3d/ui/GestureRecognizer$MyGestureListener;

    invoke-direct {v1, p0, v3}, Lcom/sec/android/gallery3d/ui/GestureRecognizer$MyGestureListener;-><init>(Lcom/sec/android/gallery3d/ui/GestureRecognizer;Lcom/sec/android/gallery3d/ui/GestureRecognizer$1;)V

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v3, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/sec/android/gallery3d/ui/GestureRecognizer$MyScaleListener;

    invoke-direct {v1, p0, v3}, Lcom/sec/android/gallery3d/ui/GestureRecognizer$MyScaleListener;-><init>(Lcom/sec/android/gallery3d/ui/GestureRecognizer;Lcom/sec/android/gallery3d/ui/GestureRecognizer$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, v4}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    new-instance v0, Lcom/sec/android/gallery3d/ui/DownUpDetector;

    new-instance v1, Lcom/sec/android/gallery3d/ui/GestureRecognizer$MyDownUpListener;

    invoke-direct {v1, p0, v3}, Lcom/sec/android/gallery3d/ui/GestureRecognizer$MyDownUpListener;-><init>(Lcom/sec/android/gallery3d/ui/GestureRecognizer;Lcom/sec/android/gallery3d/ui/GestureRecognizer$1;)V

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/DownUpDetector;-><init>(Lcom/sec/android/gallery3d/ui/DownUpDetector$DownUpListener;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mDownUpDetector:Lcom/sec/android/gallery3d/ui/DownUpDetector;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mRes:Landroid/content/res/Resources;

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/ui/GestureRecognizer;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/ui/GestureRecognizer;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->checkScrollNOPRegion(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/ui/GestureRecognizer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mAlwaysInTapRegion:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/ui/GestureRecognizer;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->isInCustomTouchSlopRegion(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/gallery3d/ui/GestureRecognizer;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mOriginDx:F

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/gallery3d/ui/GestureRecognizer;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mOriginDx:F

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/gallery3d/ui/GestureRecognizer;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mOriginDy:F

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/gallery3d/ui/GestureRecognizer;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mOriginDy:F

    return p1
.end method

.method private checkScrollNOPRegion(Landroid/view/MotionEvent;)Z
    .locals 5

    const v0, 0x7fffffff

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getActionBarSize(Landroid/content/Context;)I

    move-result v3

    div-int/lit8 v2, v3, 0x2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-int v4, v0, v2

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    int-to-float v4, v2

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    :catch_0
    move-exception v1

    const-string/jumbo v3, "GestureRecognizer"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isInCustomTouchSlopRegion(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v8, 0x0

    iget v9, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mCustomTouchSlopSquare:I

    if-nez v9, :cond_0

    :goto_0
    return v8

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_1

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    add-float/2addr v6, v9

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    add-float/2addr v7, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    int-to-float v9, v0

    div-float v3, v6, v9

    int-to-float v9, v0

    div-float v4, v7, v9

    iget v9, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mDownFocusX:F

    sub-float v9, v3, v9

    float-to-int v1, v9

    iget v9, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mDownFocusY:F

    sub-float v9, v4, v9

    float-to-int v2, v9

    mul-int v9, v1, v1

    mul-int v10, v2, v2

    add-int/2addr v9, v10

    iget v10, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mCustomTouchSlopSquare:I

    if-le v9, v10, :cond_2

    iput-boolean v8, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mAlwaysInTapRegion:Z

    goto :goto_0

    :cond_2
    const/4 v8, 0x1

    goto :goto_0
.end method

.method private onTouchEventCustomTouchSlop(Landroid/view/MotionEvent;)V
    .locals 6

    const/4 v5, 0x0

    iget v4, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mCustomTouchSlopSquare:I

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    add-float/2addr v2, v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    add-float/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    int-to-float v4, v0

    div-float v4, v2, v4

    iput v4, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mDownFocusX:F

    int-to-float v4, v0

    div-float v4, v3, v4

    iput v4, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mDownFocusY:F

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mAlwaysInTapRegion:Z

    iput v5, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mOriginDx:F

    iput v5, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mOriginDy:F

    goto :goto_0

    :pswitch_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mAlwaysInTapRegion:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addListener(Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public cancelScale()V
    .locals 9

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, v8}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public isDown()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mDownUpDetector:Lcom/sec/android/gallery3d/ui/DownUpDetector;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/DownUpDetector;->isDown()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->onTouchEventCustomTouchSlop(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mDownUpDetector:Lcom/sec/android/gallery3d/ui/DownUpDetector;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/DownUpDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public removeListener(Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCustomTouchSlop(I)V
    .locals 1

    mul-int v0, p1, p1

    iput v0, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mCustomTouchSlopSquare:I

    return-void
.end method
