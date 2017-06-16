.class public Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;
.super Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;
.source "GLLayerLayout.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/sec/android/mimage/photoretouching/lpe/core/Listeners$StateChangeListener;


# static fields
.field private static final MAX_VISIBLE_LAYERS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "PEDIT_GLLayerLayout"


# instance fields
.field private LONG_CLICK_DURATION:I

.field private MSG_LONG_CLICK:I

.field private mAddButton:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

.field private mBackground:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

.field private mCurrLayerId:I

.field private mDecceleration:F

.field private mFocus:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mLayerLayoutSize:I

.field private mLayerMargin:I

.field private mLayerThumbnailMargin:I

.field private mLayerThumbs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mLayersRect:Landroid/graphics/Rect;

.field private mMaxLayerThumbSize:I

.field private mNumLayers:I

.field private mOnLongClickListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnLongClickListener;

.field private mOrientation:I

.field private mPosLengthRatio:F

.field private mPosition:F

.field private mSIView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

.field private mScissorRect:Landroid/graphics/Rect;

.field private mScrollLength:I

.field private mThumbSize:I

.field private mTouchDownPosition:F

.field private mVelocity:F

.field private touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;FFFF)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;FFFF)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbs:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mCurrLayerId:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mVelocity:F

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mPosition:F

    const v0, 0x3f7c28f6    # 0.985f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mDecceleration:F

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->MSG_LONG_CLICK:I

    const/16 v0, 0x2ee

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->LONG_CLICK_DURATION:I

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout$1;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->setClickable(Z)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbs:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mCurrLayerId:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mVelocity:F

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mPosition:F

    const v0, 0x3f7c28f6    # 0.985f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mDecceleration:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->MSG_LONG_CLICK:I

    const/16 v0, 0x2ee

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->LONG_CLICK_DURATION:I

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout$1;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->MSG_LONG_CLICK:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnLongClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mOnLongClickListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnLongClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mAddButton:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mCurrLayerId:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mFocus:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    return-object v0
.end method

.method private getSIBitmap()Landroid/graphics/Bitmap;
    .locals 15

    const/high16 v14, 0x41200000    # 10.0f

    const v13, 0x3dcccccd    # 0.1f

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbs:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f08043f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v8, v11

    add-int/lit8 v11, v6, -0x1

    int-to-float v11, v11

    mul-float/2addr v11, v13

    mul-float/2addr v11, v8

    add-float/2addr v11, v8

    float-to-int v11, v11

    add-int/lit8 v12, v6, -0x1

    int-to-float v12, v12

    mul-float/2addr v12, v13

    mul-float/2addr v12, v8

    add-float/2addr v12, v8

    float-to-int v12, v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbs:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v4, v11, :cond_1

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbs:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    int-to-float v11, v3

    mul-float/2addr v11, v8

    div-float v5, v11, v14

    int-to-float v11, v3

    mul-float/2addr v11, v8

    div-float v9, v11, v14

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->getImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v11, 0x0

    invoke-virtual {v2, v0, v5, v9, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    float-to-int v11, v8

    float-to-int v12, v8

    const/4 v13, 0x1

    invoke-static {v1, v11, v12, v13}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v7
.end method

.method private declared-synchronized init()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080442

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbnailMargin:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080443

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mMaxLayerThumbSize:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080441

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerMargin:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mMaxLayerThumbSize:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerLayoutSize:I

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mOrientation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private restorePosition()V
    .locals 3

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mPosLengthRatio:F

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mScrollLength:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mThumbSize:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mPosition:F

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->updateThumbPositions()V

    return-void
.end method

.method private updateThumbPositions()V
    .locals 7

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mThumbSize:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbnailMargin:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mScrollLength:I

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayersRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayersRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mPosition:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mThumbSize:I

    mul-int/2addr v5, v0

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbnailMargin:I

    mul-int/2addr v5, v0

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayersRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mThumbSize:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->getId()I

    move-result v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mCurrLayerId:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->getBoundRect()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mFocus:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    add-int/lit8 v3, v3, -0x5

    iget v4, v1, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    add-int/lit8 v5, v5, 0xa

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-int v6, v6

    add-int/lit8 v6, v6, 0xa

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mThumbSize:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbnailMargin:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mScrollLength:I

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayersRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mPosition:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mThumbSize:I

    mul-int/2addr v4, v0

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbnailMargin:I

    mul-int/2addr v4, v0

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayersRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mThumbSize:I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mThumbSize:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->getId()I

    move-result v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mCurrLayerId:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->getBoundRect()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mFocus:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    add-int/lit8 v3, v3, -0x5

    iget v4, v1, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    add-int/lit8 v5, v5, 0xa

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-int v6, v6

    add-int/lit8 v6, v6, 0xa

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public addLayer(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-direct {v0, v3, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->getLayerId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setId(I)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mNumLayers:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mNumLayers:I

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->addView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->updateThumbPositions()V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mFocus:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v3, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setVisible(Z)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mSIView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mNumLayers:I

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    :goto_0
    invoke-virtual {v3, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setVisible(Z)V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public addView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->addView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mOnClickListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->setOnClickListener(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;)V

    return-void
.end method

.method public declared-synchronized draw()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mVelocity:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v8

    if-lez v1, :cond_4

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mVelocity:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mDecceleration:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mVelocity:F

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mPosition:F

    float-to-double v2, v1

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mVelocity:F

    float-to-double v4, v1

    const-wide v6, 0x3f9eb851eb851eb8L    # 0.03

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mPosition:F

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mVelocity:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x42480000    # 50.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mVelocity:F

    :cond_0
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mOrientation:I

    if-ne v1, v9, :cond_8

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mPosition:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mScrollLength:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayersRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mScrollLength:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayersRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mPosition:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mVelocity:F

    :cond_1
    :goto_0
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mPosition:F

    cmpg-float v1, v1, v8

    if-gez v1, :cond_2

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mPosition:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mVelocity:F

    :cond_2
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mVelocity:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v8

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->updateThumbPositions()V

    :cond_4
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mBackground:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mBackground:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->onDraw()V

    :cond_5
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mAddButton:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mAddButton:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->onDraw()V

    :cond_6
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mOrientation:I

    if-ne v1, v9, :cond_9

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mScissorRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x5

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mScissorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/lit8 v4, v4, 0xa

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glScissor(IIII)V

    :goto_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mFocus:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mFocus:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->onDraw()V

    :cond_7
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbs:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->onDraw()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_8
    :try_start_1
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mPosition:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mScrollLength:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayersRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mScrollLength:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayersRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mPosition:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mVelocity:F

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mScissorRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, -0x5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mScissorRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/lit8 v3, v3, 0xa

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glScissor(IIII)V

    goto :goto_1

    :cond_a
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glScissor(IIII)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mSIView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mSIView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->onDraw()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_b
    monitor-exit p0

    return-void
.end method

.method public getLayoutHeight()I
    .locals 4

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mMaxLayerThumbSize:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getActionBarHeight(Landroid/content/Context;)I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerMargin:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbnailMargin:I

    mul-int/lit8 v3, v3, 0x7

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x6

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v1, v0, 0x6

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbnailMargin:I

    mul-int/lit8 v2, v2, 0x7

    add-int/2addr v1, v2

    return v1
.end method

.method public getLayoutWidth()I
    .locals 4

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mMaxLayerThumbSize:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerMargin:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbnailMargin:I

    mul-int/lit8 v3, v3, 0x7

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x6

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v1, v0, 0x6

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbnailMargin:I

    mul-int/lit8 v2, v2, 0x7

    add-int/2addr v1, v2

    return v1
.end method

.method public getThumbnailHeight()I
    .locals 3

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mMaxLayerThumbSize:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getActionBarHeight(Landroid/content/Context;)I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerMargin:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbnailMargin:I

    mul-int/lit8 v2, v2, 0x7

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getThumbnailWidth()I
    .locals 3

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mMaxLayerThumbSize:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerMargin:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbnailMargin:I

    mul-int/lit8 v2, v2, 0x7

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 8

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->getTop()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->getTop()F

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->getLeft()F

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->getTop()F

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;-><init>(Landroid/content/Context;FFFFFF)V

    :goto_0
    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;->setDuration(I)V

    new-instance v1, Lcom/samsung/android/view/animation/SineInOut60;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut60;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout$2;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout$2;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;->setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->setAnimation(Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->startAnimation()V

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->getTop()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->getHeight()F

    move-result v5

    neg-float v5, v5

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->getLeft()F

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->getTop()F

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;-><init>(Landroid/content/Context;FFFFFF)V

    goto :goto_0
.end method

.method public initChildren()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mBackground:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/high16 v2, 0x10000000

    invoke-direct {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mAddButton:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mBackground:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setEnabled(Z)V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const v2, 0x10000004

    invoke-direct {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mSIView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mSIView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setColor(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mSIView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setVisible(Z)V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/4 v2, -0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mFocus:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mFocus:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setColor(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mFocus:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mBackground:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->addView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mAddButton:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->addView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mFocus:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->addView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mSIView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->addView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->initSizes()V

    return-void
.end method

.method public declared-synchronized initSizes()V
    .locals 23

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getOrientation()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerLayoutSize:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbnailMargin:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    sub-int v17, v18, v19

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->getThumbnailHeight()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->getLayoutHeight()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getActionBarHeight(Landroid/content/Context;)I

    move-result v19

    sub-int v14, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v15

    sub-int v18, v14, v6

    div-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getActionBarHeight(Landroid/content/Context;)I

    move-result v19

    add-int v9, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerLayoutSize:I

    move/from16 v18, v0

    sub-int v18, v15, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerMargin:I

    move/from16 v19, v0

    sub-int v8, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerLayoutSize:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v8, v9, v1, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->setSize(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mBackground:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerLayoutSize:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mAddButton:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerLayoutSize:I

    move/from16 v19, v0

    sub-int v19, v19, v5

    div-int/lit8 v19, v19, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbnailMargin:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v5, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->setSize(IIII)V

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mThumbSize:I

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->updateThumbPositions()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mSIView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerLayoutSize:I

    move/from16 v19, v0

    sub-int v19, v19, v5

    div-int/lit8 v19, v19, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbnailMargin:I

    move/from16 v20, v0

    add-int v20, v20, v16

    mul-int/lit8 v20, v20, 0x5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbnailMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->getLeft()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerLayoutSize:I

    move/from16 v19, v0

    sub-int v19, v19, v5

    div-int/lit8 v19, v19, 0x2

    add-int v11, v18, v19

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->getTop()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbnailMargin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbnailMargin:I

    move/from16 v19, v0

    add-int v19, v19, v16

    add-int v13, v18, v19

    add-int v12, v11, v5

    mul-int/lit8 v18, v16, 0x4

    add-int v18, v18, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbnailMargin:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x3

    add-int v10, v18, v19

    new-instance v18, Landroid/graphics/Rect;

    move-object/from16 v0, v18

    invoke-direct {v0, v11, v13, v12, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mScissorRect:Landroid/graphics/Rect;

    new-instance v18, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerLayoutSize:I

    move/from16 v19, v0

    sub-int v19, v19, v5

    div-int/lit8 v19, v19, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbnailMargin:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbnailMargin:I

    move/from16 v21, v0

    add-int v21, v21, v16

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbnailMargin:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbnailMargin:I

    move/from16 v22, v0

    add-int v22, v22, v16

    add-int v21, v21, v22

    mul-int/lit8 v22, v16, 0x4

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbnailMargin:I

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x3

    add-int v21, v21, v22

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayersRect:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->getThumbnailWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerLayoutSize:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbnailMargin:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    sub-int v16, v18, v19

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->getLayoutWidth()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getActionBarHeight(Landroid/content/Context;)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerMargin:I

    move/from16 v19, v0

    add-int v9, v18, v19

    sub-int v18, v15, v7

    div-int/lit8 v8, v18, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerLayoutSize:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v8, v9, v7, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->setSize(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mBackground:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerLayoutSize:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v7, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mAddButton:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbnailMargin:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerLayoutSize:I

    move/from16 v20, v0

    sub-int v20, v20, v4

    div-int/lit8 v20, v20, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->setSize(IIII)V

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mThumbSize:I

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->updateThumbPositions()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mSIView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbnailMargin:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbnailMargin:I

    move/from16 v20, v0

    add-int v20, v20, v17

    mul-int/lit8 v20, v20, 0x5

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerLayoutSize:I

    move/from16 v20, v0

    sub-int v20, v20, v4

    div-int/lit8 v20, v20, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->getLeft()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbnailMargin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mThumbSize:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbnailMargin:I

    move/from16 v19, v0

    add-int v11, v18, v19

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->getTop()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerLayoutSize:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mThumbSize:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    div-int/lit8 v19, v19, 0x2

    add-int v13, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mThumbSize:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x4

    add-int v18, v18, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbnailMargin:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x3

    add-int v12, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mThumbSize:I

    move/from16 v18, v0

    add-int v10, v13, v18

    new-instance v18, Landroid/graphics/Rect;

    move-object/from16 v0, v18

    invoke-direct {v0, v11, v13, v12, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mScissorRect:Landroid/graphics/Rect;

    new-instance v18, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbnailMargin:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mThumbSize:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbnailMargin:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerLayoutSize:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mThumbSize:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    div-int/lit8 v20, v20, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mThumbSize:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbnailMargin:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mThumbSize:I

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x4

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbnailMargin:I

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x3

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mThumbSize:I

    move/from16 v22, v0

    invoke-direct/range {v18 .. v22}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayersRect:Landroid/graphics/Rect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v18

    monitor-exit p0

    throw v18
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    const/high16 v2, 0x3f000000    # 0.5f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFling: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    neg-float v0, p4

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mVelocity:F

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    const/4 v0, 0x0

    return v0

    :cond_0
    neg-float v0, p3

    mul-float/2addr v0, v2

    :try_start_1
    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mVelocity:F

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mPosition:F

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mScrollLength:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mThumbSize:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mPosLengthRatio:F

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mVelocity:F

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mOrientation:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->initSizes()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->updateThumbPositions()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    const/4 v4, 0x0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mPosition:F

    add-float v1, v2, p4

    cmpg-float v2, v1, v4

    if-gez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mScrollLength:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayersRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mScrollLength:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayersRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v1, v2

    :cond_1
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mPosition:F

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->updateThumbPositions()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    const/4 v2, 0x0

    return v2

    :cond_2
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mPosition:F

    add-float v0, v2, p3

    cmpg-float v2, v0, v4

    if-gez v2, :cond_3

    const/4 v0, 0x0

    :cond_3
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mScrollLength:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayersRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_4

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mScrollLength:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayersRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v0, v2

    :cond_4
    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mPosition:F

    goto :goto_0
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

.method public onStateChange(II)V
    .locals 4

    const/16 v3, 0x100

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mSIView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    if-ne p2, v3, :cond_1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mNumLayers:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setVisible(Z)V

    if-ne p2, v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->isVisible()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->show()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PEDIT_GLLayerLayout"

    const-string v1, "Hide"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->hide()V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v3, 0x1

    const v9, 0x3f733333    # 0.95f

    const/4 v4, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v8, 0x4b

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p0, v2, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual {v2, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->setPressed(Z)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual {v2, v6, v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->smoothScaleTo(FI)V

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mCurrLayerId:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getId()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mFocus:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v2, v6, v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->smoothScaleTo(FI)V

    :cond_1
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mPosition:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mTouchDownPosition:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->MSG_LONG_CLICK:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    move v3, v4

    :cond_3
    :goto_0
    return v3

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p0, v2, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->getChildAt(FF)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_5
    :goto_1
    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mScissorRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x4

    if-le v2, v5, :cond_6

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_6
    if-nez v1, :cond_3

    move v3, v4

    goto :goto_0

    :pswitch_0
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mPosition:F

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mTouchDownPosition:F

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_1
    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mVelocity:F

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->setPressed(Z)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual {v2, v9, v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->smoothScaleTo(FI)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mHandler:Landroid/os/Handler;

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->MSG_LONG_CLICK:I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->LONG_CLICK_DURATION:I

    int-to-long v6, v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getId()I

    move-result v2

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mCurrLayerId:I

    if-ne v2, v5, :cond_5

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mFocus:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v2, v9, v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->smoothScaleTo(FI)V

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mHandler:Landroid/os/Handler;

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->MSG_LONG_CLICK:I

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    if-ne v2, v1, :cond_7

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mPosition:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mTouchDownPosition:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_7

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->performClick()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mFocus:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v2, v9, v6, v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->smoothScaleTo(FFI)V

    :cond_7
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual {v2, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->setPressed(Z)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual {v2, v6, v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->smoothScaleTo(FI)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getId()I

    move-result v2

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mCurrLayerId:I

    if-ne v2, v5, :cond_5

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mFocus:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v2, v6, v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->smoothScaleTo(FI)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    if-eqz v2, :cond_5

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    if-ne v1, v2, :cond_8

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->setPressed(Z)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    if-eq v1, v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mHandler:Landroid/os/Handler;

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->MSG_LONG_CLICK:I

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual {v2, v6, v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->smoothScaleTo(FI)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getId()I

    move-result v2

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mCurrLayerId:I

    if-ne v2, v5, :cond_5

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mFocus:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v2, v6, v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->smoothScaleTo(FI)V

    goto/16 :goto_1

    :cond_8
    move v2, v4

    goto :goto_2

    :cond_9
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mHandler:Landroid/os/Handler;

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->MSG_LONG_CLICK:I

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual {v2, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->setPressed(Z)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual {v2, v6, v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->smoothScaleTo(FI)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getId()I

    move-result v2

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mCurrLayerId:I

    if-ne v2, v5, :cond_5

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mFocus:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v2, v6, v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->smoothScaleTo(FI)V

    goto/16 :goto_1

    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public removeLayer(I)V
    .locals 6

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mChildren:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mChildren:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mChildren:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->removeView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mNumLayers:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mNumLayers:I

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->updateThumbPositions()V

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mCurrLayerId:I

    if-ne v3, p1, :cond_0

    const/4 v3, -0x1

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mCurrLayerId:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mFocus:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v3, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setVisible(Z)V

    :cond_2
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mSIView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mNumLayers:I

    if-lt v4, v5, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-virtual {v3, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setVisible(Z)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mSIView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mSIView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->getSIBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayerThumbs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x4

    if-gt v2, v3, :cond_6

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mPosition:F

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->updateThumbPositions()V

    :cond_5
    :goto_1
    return-void

    :cond_6
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mOrientation:I

    if-ne v2, v5, :cond_7

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mPosition:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mScrollLength:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayersRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mScrollLength:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayersRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mPosition:F

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->updateThumbPositions()V

    goto :goto_1

    :cond_7
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mPosition:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mScrollLength:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayersRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mScrollLength:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mLayersRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mPosition:F

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->updateThumbPositions()V

    goto :goto_1
.end method

.method public setOnClickListener(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mOnClickListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mChildren:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mBackground:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    if-eq v0, v2, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->setOnClickListener(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setOnLongClickListener(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mOnLongClickListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnLongClickListener;

    return-void
.end method

.method public setSelection(I)V
    .locals 3

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mCurrLayerId:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mFocus:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mCurrLayerId:I

    const v2, 0x10000004

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setVisible(Z)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->updateThumbPositions()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show()V
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->setVisible(Z)V

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->getWidth()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->getTop()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->getTop()F

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->getLeft()F

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->getTop()F

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;-><init>(Landroid/content/Context;FFFFFF)V

    :goto_0
    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout$3;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout$3;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;->setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;->setDuration(I)V

    new-instance v1, Lcom/samsung/android/view/animation/SineInOut60;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut60;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->setAnimation(Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->startAnimation()V

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->getHeight()F

    move-result v4

    neg-float v4, v4

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->getTop()F

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->getLeft()F

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->getTop()F

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;-><init>(Landroid/content/Context;FFFFFF)V

    goto :goto_0
.end method

.method public updateLayerIcon(Landroid/graphics/Bitmap;I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mChildren:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mChildren:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getId()I

    move-result v2

    if-ne v2, p2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mBackground:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    if-eq v1, v2, :cond_1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mSIView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->getSIBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
