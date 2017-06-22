.class public Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;
.super Ljava/lang/Object;
.source "GLSuperImposeAGIF.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF$SIListener;
    }
.end annotation


# static fields
.field private static final MOVING:I = 0x5

.field private static final NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PEDIT_GLSuperImpose"


# instance fields
.field private gifBitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field isGIF:Z

.field private mAlpha:F

.field private mAngle:F

.field private mAspectRatio:F

.field private mCenterX:F

.field private mCenterY:F

.field private mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

.field private mGifTextures:[I

.field private mHeight:F

.field private mIconSizeRotate:F

.field private mIconSizeScale:F

.field private mIconSizeTouchRotate:F

.field private mIconSizeTouchScale:F

.field private mImageHeight:I

.field private mImageWidth:I

.field private mLayerId:I

.field private mLeft:F

.field private mLoaded:Z

.field private mMode:I

.field mPreviewBitmap:Landroid/graphics/Bitmap;

.field private mScreenRect:Landroid/graphics/RectF;

.field private mSelected:Z

.field private mTextureBuffer:Ljava/nio/FloatBuffer;

.field private mTextureImage:I

.field private mTop:F

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field private mWidth:F

.field private mode:I

.field private recentId:I

.field private superImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)V
    .locals 9

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mTextureImage:I

    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mLoaded:Z

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mAngle:F

    iput-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mSelected:Z

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mMode:I

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mLayerId:I

    const/high16 v3, 0x42c80000    # 100.0f

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mAlpha:F

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mode:I

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->recentId:I

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->type:I

    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->isGIF:Z

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mAspectRatio:F

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->gifBitmaps:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getSuperImposeBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mPreviewBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->gifBitmaps:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mImageHeight:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mImageWidth:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->gifBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v6, :cond_0

    iput-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->isGIF:Z

    :cond_0
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080389

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mIconSizeScale:F

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080388

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mIconSizeRotate:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mIconSizeScale:F

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mIconSizeTouchScale:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mIconSizeRotate:F

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mIconSizeTouchRotate:F

    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->isGIF:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->gifBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mGifTextures:[I

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mGifTextures:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mGifTextures:[I

    aput v8, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v3, 0xc

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    array-length v3, v2

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->getInstance()Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;

    move-result-object v3

    iget-object v0, v3, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->faceRect:Landroid/graphics/RectF;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v7, v7, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    :cond_2
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->getInstance()Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->getBitmaps()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->getInstance()Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->getBitmapWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->getInstance()Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->getBitmapheight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0, v0, v3, v4}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->loadTextureCoordinates(Landroid/graphics/RectF;FF)V

    :goto_1
    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->superImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    return-void

    :cond_3
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0, v0, v3, v4}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->loadTextureCoordinates(Landroid/graphics/RectF;FF)V

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mTextureImage:I

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mTextureImage:I

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;)[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mGifTextures:[I

    return-object v0
.end method

.method private isInBounds()Z
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterX:F

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mScreenRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mScreenRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterY:F

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mScreenRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mScreenRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isXinBound()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterX:F

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mScreenRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mScreenRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isYinBound()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterY:F

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mScreenRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mScreenRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private onTouchNormal(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mAngle:F

    neg-float v4, v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterX:F

    sub-float/2addr v6, v7

    float-to-double v6, v6

    mul-double/2addr v4, v6

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mAngle:F

    neg-float v6, v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterY:F

    sub-float/2addr v8, v9

    float-to-double v8, v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterX:F

    float-to-double v6, v6

    add-double/2addr v4, v6

    double-to-float v0, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mAngle:F

    neg-float v4, v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterX:F

    sub-float/2addr v6, v7

    float-to-double v6, v6

    mul-double/2addr v4, v6

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mAngle:F

    neg-float v6, v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterY:F

    sub-float/2addr v8, v9

    float-to-double v8, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterY:F

    float-to-double v6, v6

    add-double/2addr v4, v6

    double-to-float v1, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mMode:I

    if-nez v4, :cond_0

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterX:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mWidth:F

    div-float/2addr v5, v10

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mIconSizeTouchScale:F

    sub-float/2addr v4, v5

    cmpl-float v4, v0, v4

    if-lez v4, :cond_7

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterX:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mWidth:F

    div-float/2addr v5, v10

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mIconSizeTouchRotate:F

    add-float/2addr v4, v5

    cmpg-float v4, v0, v4

    if-gez v4, :cond_7

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterY:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mHeight:F

    div-float/2addr v5, v10

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mIconSizeTouchRotate:F

    sub-float/2addr v4, v5

    cmpl-float v4, v1, v4

    if-lez v4, :cond_7

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterY:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mHeight:F

    div-float/2addr v5, v10

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mIconSizeTouchScale:F

    add-float/2addr v4, v5

    cmpg-float v4, v1, v4

    if-gez v4, :cond_7

    :cond_0
    iget-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mSelected:Z

    if-nez v4, :cond_1

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mSelected:Z

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_2
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    move v2, v3

    :goto_1
    return v2

    :pswitch_1
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterX:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mWidth:F

    div-float/2addr v4, v10

    sub-float/2addr v2, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mIconSizeTouchScale:F

    sub-float/2addr v2, v4

    cmpl-float v2, v0, v2

    if-lez v2, :cond_3

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterX:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mWidth:F

    div-float/2addr v4, v10

    sub-float/2addr v2, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mIconSizeTouchScale:F

    add-float/2addr v2, v4

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterY:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mHeight:F

    div-float/2addr v4, v10

    sub-float/2addr v2, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mIconSizeTouchScale:F

    sub-float/2addr v2, v4

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterY:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mHeight:F

    div-float/2addr v4, v10

    sub-float/2addr v2, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mIconSizeTouchScale:F

    add-float/2addr v2, v4

    cmpg-float v2, v1, v2

    if-ltz v2, :cond_2

    :cond_3
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterX:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mWidth:F

    div-float/2addr v4, v10

    add-float/2addr v2, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mIconSizeTouchRotate:F

    sub-float/2addr v2, v4

    cmpl-float v2, v0, v2

    if-lez v2, :cond_4

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterX:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mWidth:F

    div-float/2addr v4, v10

    add-float/2addr v2, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mIconSizeTouchRotate:F

    add-float/2addr v2, v4

    cmpg-float v2, v0, v2

    if-gez v2, :cond_4

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterY:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mHeight:F

    div-float/2addr v4, v10

    sub-float/2addr v2, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mIconSizeTouchRotate:F

    sub-float/2addr v2, v4

    cmpl-float v2, v1, v2

    if-lez v2, :cond_4

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterY:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mHeight:F

    div-float/2addr v4, v10

    sub-float/2addr v2, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mIconSizeTouchRotate:F

    add-float/2addr v2, v4

    cmpg-float v2, v1, v2

    if-ltz v2, :cond_2

    :cond_4
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterX:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mWidth:F

    div-float/2addr v4, v10

    sub-float/2addr v2, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mIconSizeTouchScale:F

    sub-float/2addr v2, v4

    cmpl-float v2, v0, v2

    if-lez v2, :cond_5

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterX:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mWidth:F

    div-float/2addr v4, v10

    sub-float/2addr v2, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mIconSizeTouchScale:F

    add-float/2addr v2, v4

    cmpg-float v2, v0, v2

    if-gez v2, :cond_5

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterY:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mHeight:F

    div-float/2addr v4, v10

    add-float/2addr v2, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mIconSizeTouchScale:F

    sub-float/2addr v2, v4

    cmpl-float v2, v1, v2

    if-lez v2, :cond_5

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterY:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mHeight:F

    div-float/2addr v4, v10

    add-float/2addr v2, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mIconSizeTouchScale:F

    add-float/2addr v2, v4

    cmpg-float v2, v1, v2

    if-ltz v2, :cond_2

    :cond_5
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterX:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mWidth:F

    div-float/2addr v4, v10

    add-float/2addr v2, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mIconSizeTouchScale:F

    sub-float/2addr v2, v4

    cmpl-float v2, v0, v2

    if-lez v2, :cond_6

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterX:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mWidth:F

    div-float/2addr v4, v10

    add-float/2addr v2, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mIconSizeTouchScale:F

    add-float/2addr v2, v4

    cmpg-float v2, v0, v2

    if-gez v2, :cond_6

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterY:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mHeight:F

    div-float/2addr v4, v10

    add-float/2addr v2, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mIconSizeTouchScale:F

    sub-float/2addr v2, v4

    cmpl-float v2, v1, v2

    if-lez v2, :cond_6

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterY:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mHeight:F

    div-float/2addr v4, v10

    add-float/2addr v2, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mIconSizeTouchScale:F

    add-float/2addr v2, v4

    cmpg-float v2, v1, v2

    if-ltz v2, :cond_2

    :cond_6
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mMode:I

    if-nez v2, :cond_2

    const/4 v2, 0x5

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mMode:I

    goto/16 :goto_0

    :pswitch_2
    iput v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mMode:I

    goto/16 :goto_0

    :pswitch_3
    iput v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mMode:I

    goto/16 :goto_0

    :cond_7
    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mSelected:Z

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private declared-synchronized updateBuffer()V
    .locals 10

    const/high16 v2, 0x40000000    # 2.0f

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v5

    if-ge v4, v5, :cond_1

    int-to-float v0, v4

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mWidth:F

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mWidth:F

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mAspectRatio:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mHeight:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mLeft:F

    int-to-float v0, v5

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mHeight:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mTop:F

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mHeight:F

    int-to-float v1, v5

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    int-to-float v0, v5

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mHeight:F

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mHeight:F

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mAspectRatio:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mWidth:F

    int-to-float v0, v4

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mWidth:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mLeft:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mTop:F

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->superImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mLeft:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mTop:F

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mWidth:F

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mLeft:F

    add-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mHeight:F

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mTop:F

    add-float/2addr v8, v9

    invoke-direct {v1, v2, v3, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->setScreenRect(Landroid/graphics/RectF;)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mLeft:F

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mTop:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mWidth:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mHeight:F

    invoke-static/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinates(FFFFII)[F

    move-result-object v6

    array-length v0, v6

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    int-to-float v0, v5

    :try_start_1
    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mHeight:F

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mHeight:F

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mAspectRatio:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mWidth:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mTop:F

    int-to-float v0, v4

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mWidth:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mLeft:F

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mWidth:F

    int-to-float v1, v4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    int-to-float v0, v4

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mWidth:F

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mWidth:F

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mAspectRatio:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mHeight:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mLeft:F

    int-to-float v0, v5

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mHeight:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mTop:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mPreviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mPreviewBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->gifBitmaps:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->gifBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->gifBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->gifBitmaps:Ljava/util/ArrayList;

    return-void
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF$1;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->queueEvent(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mLoaded:Z

    return-void
.end method

.method public draw()V
    .locals 11

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mLoaded:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->load()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mLoaded:Z

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    move-result-object v7

    iget v1, v7, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v1, "a_Position"

    invoke-virtual {v7, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v0

    const-string v1, "u_Matrix"

    invoke-virtual {v7, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v8

    const-string v1, "a_TextureCoordinate"

    invoke-virtual {v7, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v10

    const-string v1, "u_Sampler"

    invoke-virtual {v7, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v9

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mTextureBuffer:Ljava/nio/FloatBuffer;

    move v1, v10

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v1, 0x0

    invoke-static {v9, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getIdentityMatrix()[F

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v8, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {v10}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->isGIF:Z

    if-nez v1, :cond_1

    const/16 v1, 0xde1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mTextureImage:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :goto_0
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mGifTextures:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->gifBitmaps:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->loadGifTex(I)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mGifTextures:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    const/16 v1, 0xde1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mTextureImage:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_0

    :cond_3
    const/16 v1, 0xde1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mGifTextures:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_0
.end method

.method public getAlpha()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mAlpha:F

    return v0
.end method

.method public getAngle()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mAngle:F

    return v0
.end method

.method public getCenter()[F
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterX:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterY:F

    aput v2, v0, v1

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mLayerId:I

    return v0
.end method

.method public getLogoHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mImageHeight:I

    return v0
.end method

.method public getLogoWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mImageWidth:I

    return v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mode:I

    return v0
.end method

.method public getRecentId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->recentId:I

    return v0
.end method

.method public getScreenRect()Landroid/graphics/RectF;
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterX:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mWidth:F

    div-float/2addr v2, v6

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterY:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mHeight:F

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterX:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mWidth:F

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterY:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mHeight:F

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getSize()[F
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mWidth:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mHeight:F

    aput v2, v0, v1

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->type:I

    return v0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mSelected:Z

    return v0
.end method

.method public load()V
    .locals 3

    const/16 v1, 0xde1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->isGIF:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mPreviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mTextureImage:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mTextureImage:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v2, v0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mGifTextures:[I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mTextureImage:I

    aput v1, v0, v2

    :cond_0
    return-void
.end method

.method public loadGifTex(I)V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0xde1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mGifTextures:[I

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v1

    aput v1, v0, p1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mGifTextures:[I

    aget v0, v0, p1

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->gifBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v2, v3, v0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    return-void
.end method

.method public loadTextureCoordinates(Landroid/graphics/RectF;FF)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    cmpl-float v5, p2, v6

    if-eqz v5, :cond_0

    cmpl-float v5, p3, v6

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v5

    cmpl-float v5, v5, p2

    if-gtz v5, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpl-float v5, v5, p3

    if-lez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v5, p1, Landroid/graphics/RectF;->left:F

    div-float v1, v5, p2

    iget v5, p1, Landroid/graphics/RectF;->top:F

    div-float v4, v5, p3

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, p2

    add-float v2, v1, v5

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, p3

    add-float v0, v4, v5

    const/16 v5, 0xc

    new-array v3, v5, [F

    aput v1, v3, v7

    const/4 v5, 0x1

    aput v0, v3, v5

    const/4 v5, 0x2

    aput v2, v3, v5

    const/4 v5, 0x3

    aput v4, v3, v5

    const/4 v5, 0x4

    aput v1, v3, v5

    const/4 v5, 0x5

    aput v4, v3, v5

    const/4 v5, 0x6

    aput v1, v3, v5

    const/4 v5, 0x7

    aput v0, v3, v5

    const/16 v5, 0x8

    aput v2, v3, v5

    const/16 v5, 0x9

    aput v0, v3, v5

    const/16 v5, 0xa

    aput v2, v3, v5

    const/16 v5, 0xb

    aput v4, v3, v5

    array-length v5, v3

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public onOrientationChange(Landroid/graphics/RectF;)V
    .locals 7

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mScreenRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mScreenRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float v3, v4, v5

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mScreenRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mScreenRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float v2, v4, v5

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->left:F

    sub-float v1, v4, v5

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    sub-float v0, v4, v5

    cmpl-float v4, v1, v3

    if-lez v4, :cond_2

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mWidth:F

    div-float/2addr v4, v3

    mul-float/2addr v4, v1

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mWidth:F

    :cond_0
    :goto_0
    cmpl-float v4, v0, v2

    if-lez v4, :cond_3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mHeight:F

    div-float/2addr v4, v2

    mul-float/2addr v4, v0

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mHeight:F

    :cond_1
    :goto_1
    iget v4, p1, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterX:F

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mScreenRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v3

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterX:F

    iget v4, p1, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterY:F

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mScreenRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v2

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterY:F

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mScreenRect:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->updateBuffer()V

    return-void

    :cond_2
    cmpg-float v4, v1, v3

    if-gez v4, :cond_0

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mWidth:F

    div-float/2addr v4, v3

    mul-float/2addr v4, v1

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mWidth:F

    goto :goto_0

    :cond_3
    cmpg-float v4, v0, v2

    if-gez v4, :cond_1

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mHeight:F

    div-float/2addr v4, v2

    mul-float/2addr v4, v0

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mHeight:F

    goto :goto_1
.end method

.method public onSurfaceChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mLoaded:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->onTouchNormal(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mAlpha:F

    return-void
.end method

.method public setDimensions(FIIII)V
    .locals 7

    const/4 v5, 0x0

    int-to-float v3, p4

    div-float v2, v3, p1

    cmpl-float v4, p1, v5

    if-nez v4, :cond_2

    :cond_0
    :goto_0
    cmpl-float v4, p1, v5

    if-nez v4, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mAspectRatio:F

    :cond_1
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mAspectRatio:F

    div-int/lit8 v4, p4, 0x2

    add-int/2addr v4, p2

    int-to-float v4, v4

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterX:F

    div-int/lit8 v4, p5, 0x2

    add-int/2addr v4, p3

    int-to-float v4, v4

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mCenterY:F

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mAngle:F

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mWidth:F

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mHeight:F

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v4

    int-to-float v1, v4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v4

    int-to-float v0, v4

    div-float v4, v1, v0

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mWidth:F

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mHeight:F

    div-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    move v2, v0

    mul-float v3, v2, p1

    :goto_1
    iput v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mWidth:F

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mHeight:F

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->updateBuffer()V

    return-void

    :cond_2
    int-to-float v4, p5

    cmpl-float v4, v2, v4

    if-lez v4, :cond_0

    int-to-float v2, p5

    mul-float v3, v2, p1

    goto :goto_0

    :cond_3
    move v3, v1

    div-float v2, v3, p1

    goto :goto_1
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mLayerId:I

    return-void
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mode:I

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mSelected:Z

    return-void
.end method
