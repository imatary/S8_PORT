.class public Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;
.super Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;
.source "GLEffectThumbsLayout.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "PEDIT_GLEffectThumbsLayout"


# instance fields
.field private CLICK_DURATION:J

.field private bgView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

.field private children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private curr:I

.field private intent:Landroid/content/Intent;

.field private isInitChildren:Z

.field private mCachedButtons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenWidth:F

.field private mDecceleration:F

.field private mDownTime:J

.field private mEffectManager:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

.field private mEffectManagerLoader:Ljava/lang/Runnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mLayerId:I

.field private mOnClickListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;

.field private mScrollPosition:F

.field private mSelectedId:I

.field private mSelection:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

.field private mService:Ljava/util/concurrent/ExecutorService;

.field private mThumbLoader:Ljava/lang/Runnable;

.field private mThumbs:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

.field private mTotalLength:F

.field private mTouchedId:I

.field private mVelocity:F

.field private thumbData:[I

.field private thumbHeight:I

.field private thumbWidth:I


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;ILandroid/graphics/Bitmap;ILcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    const v1, 0x3f7c28f6    # 0.985f

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mDecceleration:F

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->isInitChildren:Z

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->curr:I

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mThumbLoader:Ljava/lang/Runnable;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout$2;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout$2;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mEffectManagerLoader:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    iput-wide v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->CLICK_DURATION:J

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mTouchedId:I

    iput-object p5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mOnClickListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mCachedButtons:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0804be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0805f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v4, v4, v1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->setSize(IIII)V

    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p3, p4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->init(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->getNext()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;)[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mThumbs:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;)[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->thumbData:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->thumbWidth:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->thumbHeight:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mLayerId:I

    return v0
.end method

.method private declared-synchronized getNext()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->curr:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->curr:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->curr:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private loadThumbs()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mService:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->curr:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mService:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mService:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mThumbLoader:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mService:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mEffectManagerLoader:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method


# virtual methods
.method public clearSelection()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mSelectedId:I

    return-void
.end method

.method public draw()V
    .locals 14

    iget-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mIsLoaded:Z

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->load()Z

    :cond_0
    iget-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->isInitChildren:Z

    if-nez v7, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v6, 0x0

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mVelocity:F

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mDecceleration:F

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mVelocity:F

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mScrollPosition:F

    float-to-double v8, v7

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mVelocity:F

    float-to-double v10, v7

    const-wide v12, 0x3f9eb851eb851eb8L    # 0.03

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v7, v8

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mScrollPosition:F

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mVelocity:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x42480000    # 50.0f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mVelocity:F

    :cond_2
    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mScrollPosition:F

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mTotalLength:F

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->getWidth()F

    move-result v9

    sub-float/2addr v8, v9

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mTotalLength:F

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->getWidth()F

    move-result v8

    sub-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mScrollPosition:F

    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mVelocity:F

    :cond_3
    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mScrollPosition:F

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_4

    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mScrollPosition:F

    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mVelocity:F

    :cond_4
    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mVelocity:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_5

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    :cond_5
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0805f1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->getLeft()F

    move-result v7

    float-to-int v7, v7

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->getWidth()F

    move-result v9

    float-to-int v9, v9

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v10

    invoke-static {v7, v8, v9, v10}, Landroid/opengl/GLES20;->glScissor(IIII)V

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->bgView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->onDraw()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->getLeft()F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v7, v1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->getWidth()F

    move-result v9

    float-to-int v9, v9

    mul-int/lit8 v10, v1, 0x2

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v10

    invoke-static {v7, v8, v9, v10}, Landroid/opengl/GLES20;->glScissor(IIII)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mScrollPosition:F

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mChildren:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->bgView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    if-eq v0, v8, :cond_6

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mSelection:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    if-eq v0, v8, :cond_6

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getScrollMatrix()[F

    move-result-object v2

    const/4 v8, 0x0

    invoke-static {v2, v8}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getWidth()F

    move-result v8

    add-float/2addr v8, v6

    sub-float/2addr v8, v4

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_7

    sub-float v8, v6, v4

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->getWidth()F

    move-result v9

    mul-int/lit8 v10, v1, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gez v8, :cond_7

    sub-float v8, v6, v4

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    mul-float v5, v8, v9

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v2, v8, v5, v9, v10}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->onDraw()V

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getId()I

    move-result v8

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mSelectedId:I

    if-ne v8, v9, :cond_7

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mSelection:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->getScrollMatrix()[F

    move-result-object v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    array-length v10, v2

    invoke-static {v2, v8, v3, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mSelection:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->onDraw()V

    :cond_7
    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getWidth()F

    move-result v8

    int-to-float v9, v1

    add-float/2addr v8, v9

    add-float/2addr v6, v8

    goto :goto_1

    :cond_8
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v10

    invoke-static {v7, v8, v9, v10}, Landroid/opengl/GLES20;->glScissor(IIII)V

    goto/16 :goto_0
.end method

.method public init(Landroid/graphics/Bitmap;I)V
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->thumbWidth:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->thumbHeight:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->thumbWidth:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->thumbHeight:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->thumbData:[I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->thumbData:[I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->thumbWidth:I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->thumbWidth:I

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->thumbHeight:I

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->curr:I

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mLayerId:I

    return-void
.end method

.method public initChildren()V
    .locals 14

    const v13, 0x10000006

    const/4 v12, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v6, 0x1000

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getSubButtonOrderForEffects(ILandroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->children:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mChildren:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    iput-boolean v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->isInitChildren:Z

    iput v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mVelocity:F

    iput v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mScrollPosition:F

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->children:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iput-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mThumbs:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0804bf

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0804be

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0805f1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->bgView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    if-nez v6, :cond_0

    new-instance v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mId:I

    invoke-direct {v6, v7, v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    iput-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->bgView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    :cond_0
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->bgView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v6, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setEnabled(Z)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->bgView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->getWidth()F

    move-result v7

    float-to-int v7, v7

    mul-int/lit8 v8, v4, 0x2

    add-int/2addr v8, v1

    invoke-virtual {v6, v9, v9, v7, v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->bgView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v6, v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setColor(I)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->bgView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {p0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->addView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    iput v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mChildrenWidth:F

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->children:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->children:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mCachedButtons:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    if-nez v0, :cond_1

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mCachedButtons:Landroid/util/SparseArray;

    new-instance v7, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-direct {v7, v8, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    invoke-virtual {v6, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mCachedButtons:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setColor(I)V

    :cond_2
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mThumbs:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    aput-object v0, v6, v2

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mThumbs:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    aget-object v6, v6, v2

    invoke-virtual {v6, v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setScrollable(Z)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mThumbs:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    aget-object v6, v6, v2

    invoke-virtual {v6, v4, v4, v5, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mThumbs:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    aget-object v6, v6, v2

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mOnClickListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;

    invoke-virtual {v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setOnClickListener(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mThumbs:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    aget-object v6, v6, v2

    invoke-virtual {p0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->addView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mChildrenWidth:F

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mThumbs:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->getWidth()F

    move-result v7

    int-to-float v8, v4

    add-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mChildrenWidth:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mCachedButtons:Landroid/util/SparseArray;

    invoke-virtual {v6, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iput-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mEffectManager:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mEffectManager:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    if-nez v6, :cond_4

    new-instance v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-direct {v6, v7, v13}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    iput-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mEffectManager:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mCachedButtons:Landroid/util/SparseArray;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mEffectManager:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v6, v13, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mEffectManager:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v6, v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setScrollable(Z)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mEffectManager:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v6, v4, v4, v5, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mEffectManager:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mOnClickListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;

    invoke-virtual {v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setOnClickListener(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mEffectManager:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {p0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->addView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mChildrenWidth:F

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mEffectManager:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->getWidth()F

    move-result v7

    add-float/2addr v6, v7

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mChildrenWidth:F

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mSelection:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    if-nez v6, :cond_5

    new-instance v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-direct {v6, v7, v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    iput-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mSelection:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    :cond_5
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mSelection:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v6, v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setScrollable(Z)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mSelection:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v6, v4, v4, v5, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mSelection:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    const v7, 0x7f02026f

    invoke-virtual {v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setImageResource(I)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mSelection:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {p0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->addView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    int-to-float v6, v4

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mChildrenWidth:F

    add-float/2addr v6, v7

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mTotalLength:F

    iput-boolean v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->isInitChildren:Z

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->loadThumbs()V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    neg-float v0, p3

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mVelocity:F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    const/4 v0, 0x0

    return v0
.end method

.method protected onLoad()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mScrollPosition:F

    add-float v0, v1, p3

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mTotalLength:F

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mTotalLength:F

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->getWidth()F

    move-result v2

    sub-float v0, v1, v2

    :cond_1
    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mScrollPosition:F

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    const/4 v1, 0x0

    return v1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceChanged()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->onSurfaceChanged()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mCachedButtons:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    const v13, 0x7f0805f1

    const/4 v5, 0x1

    const/4 v12, -0x1

    const/high16 v11, 0x42c80000    # 100.0f

    const/4 v10, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mScrollPosition:F

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->getLeft()F

    move-result v4

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mTouchedId:I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mVelocity:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v11

    if-gez v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mChildren:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->bgView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    if-eq v0, v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mSelection:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    if-eq v0, v7, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getWidth()F

    move-result v7

    add-float/2addr v7, v4

    sub-float/2addr v7, v3

    cmpl-float v7, v7, v10

    if-lez v7, :cond_9

    sub-float v7, v4, v3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->getWidth()F

    move-result v8

    mul-int/lit8 v9, v2, 0x2

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->getLeft()F

    move-result v9

    add-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gez v7, :cond_9

    sub-float v7, v4, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_8

    :cond_1
    iput v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mVelocity:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mDownTime:J

    :cond_2
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v6, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v5, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mDownTime:J

    sub-long/2addr v6, v8

    iget-wide v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->CLICK_DURATION:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_6

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mScrollPosition:F

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->getLeft()F

    move-result v4

    const/4 v1, -0x1

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mChildren:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->bgView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    if-eq v0, v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mSelection:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    if-eq v0, v7, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getWidth()F

    move-result v7

    add-float/2addr v7, v4

    sub-float/2addr v7, v3

    cmpl-float v7, v7, v10

    if-lez v7, :cond_b

    sub-float v7, v4, v3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->getWidth()F

    move-result v8

    mul-int/lit8 v9, v2, 0x2

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->getLeft()F

    move-result v9

    add-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gez v7, :cond_b

    sub-float v7, v4, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_a

    :cond_4
    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mTouchedId:I

    if-ne v6, v1, :cond_6

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mVelocity:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v11

    if-gez v6, :cond_6

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mChildren:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getId()I

    move-result v7

    if-ne v7, v1, :cond_c

    const v7, 0x10000006

    if-ne v1, v7, :cond_c

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->startEffectManager()V

    :cond_6
    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mTouchedId:I

    if-ne v6, v12, :cond_7

    const/4 v5, 0x0

    :cond_7
    return v5

    :cond_8
    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getId()I

    move-result v7

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mTouchedId:I

    :cond_9
    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getWidth()F

    move-result v7

    int-to-float v8, v2

    add-float/2addr v7, v8

    add-float/2addr v4, v7

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getId()I

    move-result v1

    :cond_b
    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getWidth()F

    move-result v7

    int-to-float v8, v2

    add-float/2addr v7, v8

    add-float/2addr v4, v7

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getId()I

    move-result v7

    if-ne v7, v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->setSelection(I)V

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->performClick()V

    goto :goto_2
.end method

.method public reloadThumbs()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->loadThumbs()V

    return-void
.end method

.method public setSelection(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mSelectedId:I

    return-void
.end method

.method public startEffectManager()V
    .locals 3

    const-string v0, "PEDIT_GLEffectThumbsLayout"

    const-string v1, "Effect manager started!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->clickSound()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.mimage.photoretouching.lpe.effectmanager.EffectManagerActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->intent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->intent:Landroid/content/Intent;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
