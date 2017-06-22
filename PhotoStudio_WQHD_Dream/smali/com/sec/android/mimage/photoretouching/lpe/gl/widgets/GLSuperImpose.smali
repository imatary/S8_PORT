.class public Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;
.super Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;
.source "GLSuperImpose.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PEDIT_GLSuperImpose"


# instance fields
.field private volatile currentGifFrame:I

.field private volatile gifPlayStarted:Z

.field private isGIF:Z

.field private isPreviewLoaded:Z

.field private isSuperimposeService:Z

.field private mAgifFaceRect:Landroid/graphics/RectF;

.field private mCircleTextureId:I

.field private mGifBitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mGifPlayThread:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;

.field private mGifTextures:[I

.field private mGifTimeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPerspTextureBuffer:Ljava/nio/FloatBuffer;

.field private mPreviewBitmap:Landroid/graphics/Bitmap;

.field private mTimeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile playGif:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Landroid/graphics/Bitmap;IILandroid/graphics/RectF;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$SIListener;Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;",
            "Landroid/graphics/Bitmap;",
            "II",
            "Landroid/graphics/RectF;",
            "Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$SIListener;",
            "Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p7, p5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;Landroid/graphics/RectF;)V

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isGIF:Z

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->gifPlayStarted:Z

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->playGif:Z

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->currentGifFrame:I

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isSuperimposeService:Z

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isPreviewLoaded:Z

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPreviewBitmap:Landroid/graphics/Bitmap;

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPerspectiveEnabled:Z

    iput-object p8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifBitmaps:Ljava/util/ArrayList;

    iput-object p9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifTimeList:Ljava/util/ArrayList;

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mImageWidth:I

    iput p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mImageHeight:I

    invoke-virtual {p8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v4, :cond_0

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isGIF:Z

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTimeList:Ljava/util/ArrayList;

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isGIF:Z

    if-eqz v1, :cond_1

    invoke-virtual {p8}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifTextures:[I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifTextures:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifTextures:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTimeList:Ljava/util/ArrayList;

    invoke-virtual {p9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isTabS2Device()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mUseHighPBuffer:Z

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mUseHighPBuffer:Z

    if-eqz v1, :cond_2

    const/16 v1, 0xc0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mHighPLineTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mHighPLineTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->sTextureCoordinates:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mHighPLineTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->sTextureCoordinates:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mHighPLineTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->sTextureCoordinates:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mHighPLineTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->sTextureCoordinates:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mHighPLineTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :cond_2
    const/16 v1, 0xf0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->sTextureCoordinates:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->sTextureCoordinates:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->sTextureCoordinates:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->sTextureCoordinates:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->sTextureCoordinates:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iput-object p5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    iput-object p6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$SIListener;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v4, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->startGifPlay()V

    :cond_3
    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isCoverSticker:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;[IIILandroid/graphics/RectF;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$SIListener;Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;II)V
    .locals 8

    invoke-direct {p0, p1, p7, p5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;Landroid/graphics/RectF;)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isGIF:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->gifPlayStarted:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->playGif:Z

    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->currentGifFrame:I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isSuperimposeService:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isPreviewLoaded:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPerspectiveEnabled:Z

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPreviewBuffer:[I

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mImageWidth:I

    iput p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mImageHeight:I

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move/from16 v0, p10

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mStickerType:I

    const/high16 v3, 0x42c80000    # 100.0f

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mBackgroundWidth:F

    mul-float v1, v3, v4

    const/high16 v3, 0x42c80000    # 100.0f

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mBackgroundHeight:F

    mul-float v2, v3, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->minimumDistanceBetweenBubbles:I

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isTabS2Device()Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mUseHighPBuffer:Z

    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mUseHighPBuffer:Z

    if-eqz v3, :cond_0

    const/16 v3, 0xc0

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mHighPLineTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mHighPLineTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->sTextureCoordinates:[F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mHighPLineTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->sTextureCoordinates:[F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mHighPLineTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->sTextureCoordinates:[F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mHighPLineTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->sTextureCoordinates:[F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mHighPLineTextureBuffer:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    const/16 v3, 0xf0

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->sTextureCoordinates:[F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->sTextureCoordinates:[F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->sTextureCoordinates:[F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->sTextureCoordinates:[F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->sTextureCoordinates:[F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureBuffer:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iput-object p5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    iput-object p6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$SIListener;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isCoverSticker:Z

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->isSuperImposeService()Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isSuperimposeService:Z

    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isSuperimposeService:Z

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->getInstance()Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->faceRect:Landroid/graphics/RectF;

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mAgifFaceRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mAgifFaceRect:Landroid/graphics/RectF;

    if-nez v3, :cond_1

    new-instance v3, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mBackgroundWidth:F

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mBackgroundHeight:F

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mAgifFaceRect:Landroid/graphics/RectF;

    :cond_1
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mImageWidth:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mImageHeight:I

    mul-int/2addr v3, v4

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mOriginalData:[I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPreviewBuffer:[I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mOriginalData:[I

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPreviewBuffer:[I

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->playGif:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->currentGifFrame:I

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->currentGifFrame:I

    return p1
.end method

.method static synthetic access$108(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;)I
    .locals 2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->currentGifFrame:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->currentGifFrame:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;)[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifTextures:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mCircleTextureId:I

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mCircleTextureId:I

    return p1
.end method


# virtual methods
.method public clear()V
    .locals 7

    const/16 v6, 0xa

    const/4 v5, 0x0

    const/4 v4, -0x1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifTextures:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifTextures:[I

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifTextures:[I

    array-length v1, v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifTextures:[I

    invoke-static {v1, v2, v5}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifTextures:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifTextures:[I

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v1, v6, [I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureResizeNormal:I

    aput v2, v1, v5

    const/4 v2, 0x1

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureResizePressed:I

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureRotateNormal:I

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureRotatePressed:I

    aput v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureCloseNormal:I

    aput v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureClosePressed:I

    aput v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPreviewTextureId:I

    aput v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTexturePerspNormal:I

    aput v3, v1, v2

    const/16 v2, 0x8

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTexturePerspPressed:I

    aput v3, v1, v2

    const/16 v2, 0x9

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mCircleTextureId:I

    aput v3, v1, v2

    invoke-static {v6, v1, v5}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureResizeNormal:I

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureResizePressed:I

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureRotateNormal:I

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureRotatePressed:I

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureCloseNormal:I

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureClosePressed:I

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPreviewTextureId:I

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTexturePerspNormal:I

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTexturePerspPressed:I

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mCircleTextureId:I

    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mLoaded:Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifPlayThread:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifPlayThread:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;

    :cond_1
    return-void
.end method

.method public clearBitmaps()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifBitmaps:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifTimeList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifTimeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifTimeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifTimeList:Ljava/util/ArrayList;

    return-void
.end method

.method public clearTextures()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->queueEvent(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mLoaded:Z

    goto :goto_0
.end method

.method public drawNormal()V
    .locals 20

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mLoaded:Z

    if-nez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->load()V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mLoaded:Z

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isPreviewLoaded:Z

    if-nez v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->loadPreview()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getLaunchState()Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isGIF:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x4

    :goto_0
    invoke-virtual {v4, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isCoverSticker:Z

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mCoverShape:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mDrawPreview:Z

    if-eqz v3, :cond_6

    iget v3, v15, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v3, "u_Matrix"

    invoke-virtual {v15, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v17

    const-string v3, "a_Position"

    invoke-virtual {v15, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v18

    const-string v3, "u_Sampler"

    invoke-virtual {v15, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v19

    const-string v3, "a_TextureCoordinate"

    invoke-virtual {v15, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v1

    const-string v3, "a_CircleTextureCoordinate"

    invoke-virtual {v15, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v10

    monitor-enter p0

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mCoverTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move/from16 v2, v18

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureBuffer:Ljava/nio/FloatBuffer;

    move v2, v10

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getIdentityMatrix()[F

    move-result-object v5

    const/4 v6, 0x0

    move/from16 v0, v17

    invoke-static {v0, v3, v4, v5, v6}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-static/range {v18 .. v18}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {v10}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 v3, 0xde1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPreviewTextureId:I

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v3, 0x0

    move/from16 v0, v19

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-static {v3, v4, v5}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static/range {v18 .. v18}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    const/16 v3, 0xde1

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mSelected:Z

    if-eqz v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->drawNormalBorder()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mEditTextInfos:Ljava/util/ArrayList;

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mHighlightTextThread:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$HighlightTextThread;

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mHighlightTextThread:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$HighlightTextThread;

    iget-boolean v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$HighlightTextThread;->showHighLight:Z

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mEditTextHighlightBuffer:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v3, v14, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v3, "a_Position"

    invoke-virtual {v14, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v2

    const-string v3, "u_Matrix"

    invoke-virtual {v14, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v17

    const-string v3, "u_Color"

    invoke-virtual {v14, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v11

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v3, 0x3ea66666    # 0.325f

    const v4, 0x3f36872b    # 0.713f

    const v5, 0x3f5ba5e3    # 0.858f

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-static {v11, v3, v4, v5, v6}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getIdentityMatrix()[F

    move-result-object v5

    const/4 v6, 0x0

    move/from16 v0, v17

    invoke-static {v0, v3, v4, v5, v6}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v12, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mEditTextInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v12, v3, :cond_11

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mEditTextHighlightBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v3, 0x4

    mul-int/lit8 v4, v12, 0x6

    const/4 v5, 0x6

    invoke-static {v3, v4, v5}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x3

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mDrawPreview:Z

    if-eqz v3, :cond_3

    move-object/from16 v0, v16

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v3, "a_Position"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v2

    const-string v3, "u_Matrix"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v17

    const-string v3, "a_TextureCoordinate"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v1

    const-string v3, "u_Sampler"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, v16

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v4, "light"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v9

    move-object/from16 v0, v16

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v4, "u_isPerspective"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v13

    monitor-enter p0

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mCoverTextureBuffer:Ljava/nio/FloatBuffer;

    move v3, v1

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v3, 0x0

    move/from16 v0, v19

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 v3, 0x0

    invoke-static {v13, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getIdentityMatrix()[F

    move-result-object v5

    const/4 v6, 0x0

    move/from16 v0, v17

    invoke-static {v0, v3, v4, v5, v6}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 v3, 0xde1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPreviewTextureId:I

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v3, v4, v5, v6}, Landroid/opengl/GLES20;->glScissor(IIII)V

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v9, v3, v4, v5, v6}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-static {v3, v4, v5}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/opengl/GLES20;->glScissor(IIII)V

    goto/16 :goto_1

    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    :cond_7
    move-object/from16 v0, v16

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v3, "a_Position"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v2

    const-string v3, "u_Matrix"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v17

    const-string v3, "a_TextureCoordinate"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v1

    const-string v3, "u_Sampler"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, v16

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isGIF:Z

    if-eqz v3, :cond_8

    const-string v3, "alpha"

    :goto_3
    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v9

    move-object/from16 v0, v16

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v4, "u_isPerspective"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v13

    monitor-enter p0

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureBuffer:Ljava/nio/FloatBuffer;

    move v3, v1

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v3, 0x0

    move/from16 v0, v19

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 v3, 0x0

    invoke-static {v13, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getIdentityMatrix()[F

    move-result-object v5

    const/4 v6, 0x0

    move/from16 v0, v17

    invoke-static {v0, v3, v4, v5, v6}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isGIF:Z

    if-nez v3, :cond_9

    const/16 v3, 0xde1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPreviewTextureId:I

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :goto_4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/opengl/GLES20;->glScissor(IIII)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isGIF:Z

    if-eqz v3, :cond_c

    const v3, 0x3ecccccd    # 0.4f

    invoke-static {v9, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :goto_5
    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-static {v3, v4, v5}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    sub-int/2addr v6, v7

    invoke-static {v3, v4, v5, v6}, Landroid/opengl/GLES20;->glScissor(IIII)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isGIF:Z

    if-eqz v3, :cond_d

    const v3, 0x3ecccccd    # 0.4f

    invoke-static {v9, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :goto_6
    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-static {v3, v4, v5}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/opengl/GLES20;->glScissor(IIII)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isGIF:Z

    if-eqz v3, :cond_e

    const v3, 0x3ecccccd    # 0.4f

    invoke-static {v9, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :goto_7
    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-static {v3, v4, v5}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/opengl/GLES20;->glScissor(IIII)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isGIF:Z

    if-eqz v3, :cond_f

    const v3, 0x3ecccccd    # 0.4f

    invoke-static {v9, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :goto_8
    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-static {v3, v4, v5}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v3, v4, v5, v6}, Landroid/opengl/GLES20;->glScissor(IIII)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isGIF:Z

    if-eqz v3, :cond_10

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v9, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :goto_9
    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-static {v3, v4, v5}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/opengl/GLES20;->glScissor(IIII)V

    goto/16 :goto_1

    :cond_8
    const-string v3, "light"

    goto/16 :goto_3

    :catchall_2
    move-exception v3

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifTextures:[I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->currentGifFrame:I

    aget v3, v3, v4

    const/4 v4, -0x1

    if-ne v3, v4, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifBitmaps:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->currentGifFrame:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->currentGifFrame:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->loadGifTex(I)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifTextures:[I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->currentGifFrame:I

    aget v3, v3, v4

    const/4 v4, -0x1

    if-ne v3, v4, :cond_b

    const/16 v3, 0xde1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPreviewTextureId:I

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto/16 :goto_4

    :cond_b
    const/16 v3, 0xde1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifTextures:[I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->currentGifFrame:I

    aget v4, v4, v5

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto/16 :goto_4

    :cond_c
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3ecccccd    # 0.4f

    invoke-static {v9, v3, v4, v5, v6}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    goto/16 :goto_5

    :cond_d
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3ecccccd    # 0.4f

    invoke-static {v9, v3, v4, v5, v6}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    goto/16 :goto_6

    :cond_e
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3ecccccd    # 0.4f

    invoke-static {v9, v3, v4, v5, v6}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    goto/16 :goto_7

    :cond_f
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3ecccccd    # 0.4f

    invoke-static {v9, v3, v4, v5, v6}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    goto/16 :goto_8

    :cond_10
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v9, v3, v4, v5, v6}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    goto/16 :goto_9

    :cond_11
    return-void
.end method

.method public drawPerspective()V
    .locals 23

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mLoaded:Z

    if-nez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->load()V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mLoaded:Z

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isPreviewLoaded:Z

    if-nez v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->loadPreview()V

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isCoverSticker:Z

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mCoverShape:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mDrawPreview:Z

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isGIF:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x4

    :goto_0
    invoke-virtual {v5, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v4, "a_Position"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v1

    const-string v4, "u_Matrix"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v18

    const-string v4, "a_TextureCoordinate"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v22

    const-string v4, "u_Sampler"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, v17

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v5, "light"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v12

    move-object/from16 v0, v17

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v5, "u_isPerspective"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v14

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mLogoBuffer:Ljava/nio/FloatBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mLogoBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPerspTextureBuffer:Ljava/nio/FloatBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPerspTextureBuffer:Ljava/nio/FloatBuffer;

    move/from16 v2, v22

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    move/from16 v0, v19

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 v4, 0x0

    invoke-static {v14, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getIdentityMatrix()[F

    move-result-object v6

    const/4 v7, 0x0

    move/from16 v0, v18

    invoke-static {v0, v4, v5, v6, v7}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static/range {v22 .. v22}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 v4, 0xde1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPreviewTextureId:I

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-int v7, v7

    invoke-static {v4, v5, v6, v7}, Landroid/opengl/GLES20;->glScissor(IIII)V

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v12, v4, v5, v6, v7}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/opengl/GLES20;->glScissor(IIII)V

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mSelected:Z

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->drawNormalBorder()V

    :cond_3
    :goto_2
    return-void

    :cond_4
    const/4 v4, 0x3

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mDrawPreview:Z

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    move-result-object v13

    iget v4, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v4, "a_Position"

    invoke-virtual {v13, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v10

    const-string v4, "a_TextureCoordinate"

    invoke-virtual {v13, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v11

    const-string v4, "u_Matrix"

    invoke-virtual {v13, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v18

    const-string v4, "a_CircleTextureCoordinate"

    invoke-virtual {v13, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v2

    const-string v4, "u_Sampler"

    invoke-virtual {v13, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v19

    const-string v4, "u_Sampler1"

    invoke-virtual {v13, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v20

    invoke-static {v10}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {v11}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPerspTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    monitor-enter p0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mLogoBuffer:Ljava/nio/FloatBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v4, 0x3

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x1c

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mLogoBuffer:Ljava/nio/FloatBuffer;

    move v3, v10

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mLogoBuffer:Ljava/nio/FloatBuffer;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v4, 0x4

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x1c

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mLogoBuffer:Ljava/nio/FloatBuffer;

    move v3, v11

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    iget-object v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->modelViewProjectionMatrix:[F

    const/4 v7, 0x0

    move/from16 v0, v18

    invoke-static {v0, v4, v5, v6, v7}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const v4, 0x84c1

    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/4 v4, 0x1

    move/from16 v0, v20

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/16 v4, 0xde1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPreviewTextureId:I

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const v4, 0x84c0

    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/4 v4, 0x0

    move/from16 v0, v19

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/16 v4, 0xde1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mCircleTextureId:I

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/16 v4, 0xde1

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto/16 :goto_1

    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isGIF:Z

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifTextures:[I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->currentGifFrame:I

    aget v4, v4, v5

    const/4 v5, -0x1

    if-ne v4, v5, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifBitmaps:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->currentGifFrame:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->currentGifFrame:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->loadGifTex(I)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifTextures:[I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->currentGifFrame:I

    aget v4, v4, v5

    const/4 v5, -0x1

    if-ne v4, v5, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPreviewTextureId:I

    move/from16 v21, v0

    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mLogoBuffer:Ljava/nio/FloatBuffer;

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    move-result-object v13

    iget v4, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v4, "a_Position"

    invoke-virtual {v13, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v3

    const-string v4, "a_TextureCoordinate"

    invoke-virtual {v13, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v11

    const-string v4, "u_Matrix"

    invoke-virtual {v13, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v18

    const-string v4, "u_Sampler"

    invoke-virtual {v13, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v19

    const-string v4, "isRGBA"

    invoke-virtual {v13, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v15

    const-string v4, "light"

    invoke-virtual {v13, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v16

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {v11}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mLogoBuffer:Ljava/nio/FloatBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v4, 0x3

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x1c

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mLogoBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mLogoBuffer:Ljava/nio/FloatBuffer;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v5, 0x4

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/16 v8, 0x1c

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mLogoBuffer:Ljava/nio/FloatBuffer;

    move v4, v11

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    iget-object v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->modelViewProjectionMatrix:[F

    const/4 v7, 0x0

    move/from16 v0, v18

    invoke-static {v0, v4, v5, v6, v7}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v4, 0x0

    move/from16 v0, v19

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isGIF:Z

    if-eqz v4, :cond_a

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_4
    invoke-static {v15, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/16 v4, 0xde1

    move/from16 v0, v21

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/opengl/GLES20;->glScissor(IIII)V

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3ecccccd    # 0.4f

    move/from16 v0, v16

    invoke-static {v0, v4, v5, v6, v7}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v6, v7}, Landroid/opengl/GLES20;->glScissor(IIII)V

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3ecccccd    # 0.4f

    move/from16 v0, v16

    invoke-static {v0, v4, v5, v6, v7}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/opengl/GLES20;->glScissor(IIII)V

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3ecccccd    # 0.4f

    move/from16 v0, v16

    invoke-static {v0, v4, v5, v6, v7}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/opengl/GLES20;->glScissor(IIII)V

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3ecccccd    # 0.4f

    move/from16 v0, v16

    invoke-static {v0, v4, v5, v6, v7}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-int v7, v7

    invoke-static {v4, v5, v6, v7}, Landroid/opengl/GLES20;->glScissor(IIII)V

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move/from16 v0, v16

    invoke-static {v0, v4, v5, v6, v7}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/opengl/GLES20;->glScissor(IIII)V

    const/16 v4, 0xde1

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifTextures:[I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->currentGifFrame:I

    aget v21, v4, v5

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPreviewTextureId:I

    move/from16 v21, v0

    goto/16 :goto_3

    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->drawPerspectiveBorder()V

    goto/16 :goto_2
.end method

.method public getAlpha()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mAlpha:F

    return v0
.end method

.method public getGifBitmaps()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifBitmaps:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPreviewBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPreviewBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public isGif()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isGIF:Z

    return v0
.end method

.method public load()V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/16 v10, 0xde1

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v12, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0205c7

    invoke-static {v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->decodeResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0205cb

    invoke-static {v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->decodeResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0205c3

    invoke-static {v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->decodeResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v7

    const v8, -0x50506

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->applyTint(Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0, v7, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->blendBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p0, v7, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->blendBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v8

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureResizeNormal:I

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureResizeNormal:I

    invoke-static {v10, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v10, v11, v7, v11}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v10}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    invoke-static {v10, v11}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0205c8

    invoke-static {v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->decodeResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v8

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureRemoveNormal:I

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureRemoveNormal:I

    invoke-static {v10, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v10, v11, v7, v11}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v10}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    invoke-static {v10, v11}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0205c9

    invoke-static {v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->decodeResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v8

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureRemovePress:I

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureRemovePress:I

    invoke-static {v10, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v10, v11, v7, v11}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v10}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    invoke-static {v10, v11}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0205c4

    invoke-static {v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->decodeResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {p0, v7, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->blendBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {p0, v7, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->blendBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v8

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureResizePressed:I

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureResizePressed:I

    invoke-static {v10, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v10, v11, v7, v11}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v10}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    invoke-static {v10, v11}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v8

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureRotateNormal:I

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureRotateNormal:I

    invoke-static {v10, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v10, v11, v4, v11}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v10}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    invoke-static {v10, v11}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v8

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureRotatePressed:I

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureRotatePressed:I

    invoke-static {v10, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v10, v11, v6, v11}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v10}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    invoke-static {v10, v11}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0205c5

    invoke-static {v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->decodeResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v8

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureCloseNormal:I

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureCloseNormal:I

    invoke-static {v10, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v10, v11, v7, v11}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v10}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    invoke-static {v10, v11}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0205c6

    invoke-static {v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->decodeResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v8

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureClosePressed:I

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureClosePressed:I

    invoke-static {v10, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v10, v11, v7, v11}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v10}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    invoke-static {v10, v11}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v8

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTexturePerspNormal:I

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTexturePerspNormal:I

    invoke-static {v10, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v10, v11, v1, v11}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v10}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    invoke-static {v10, v11}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v8

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTexturePerspPressed:I

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTexturePerspPressed:I

    invoke-static {v10, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v10, v11, v3, v11}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v10}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    invoke-static {v10, v11}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->loadPreview()V

    iget-boolean v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isCoverSticker:Z

    if-eqz v8, :cond_1

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mCoverShape:I

    if-ne v8, v12, :cond_1

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v8

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mCircleTextureId:I

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mCircleTextureId:I

    invoke-static {v10, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getCircleMask()Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getCircleMask()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getCircleMask()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v10, v11, v8, v11}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    :cond_0
    invoke-static {v10}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    invoke-static {v10, v11}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_1
    return-void
.end method

.method public loadGifTex(I)V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0xde1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifTextures:[I

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v1

    aput v1, v0, p1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifTextures:[I

    aget v0, v0, p1

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v2, v3, v0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    :cond_0
    invoke-static {v2}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    return-void
.end method

.method public loadPreview()V
    .locals 10

    const/16 v2, 0x1908

    const/16 v0, 0xde1

    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isGIF:Z

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPreviewTextureId:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPreviewTextureId:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPreviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    :cond_0
    invoke-static {v0}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifTextures:[I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPreviewTextureId:I

    aput v2, v0, v1

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isPreviewLoaded:Z

    :cond_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPreviewBuffer:[I

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v3

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPreviewTextureId:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPreviewTextureId:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPreviewBuffer:[I

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPreviewBuffer:[I

    invoke-virtual {v3, v4}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mImageWidth:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mImageHeight:I

    const/16 v7, 0x1401

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    goto :goto_0
.end method

.method public numOfFrames()I
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isGIF:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onExitClicked()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->removeItem(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;)V

    return-void
.end method

.method public onOrientationChange(Landroid/graphics/RectF;)V
    .locals 7

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float v3, v4, v5

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float v2, v4, v5

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->left:F

    sub-float v1, v4, v5

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    sub-float v0, v4, v5

    cmpl-float v4, v1, v3

    if-lez v4, :cond_3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mWidth:F

    div-float/2addr v4, v3

    mul-float/2addr v4, v1

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mWidth:F

    :cond_0
    :goto_0
    cmpl-float v4, v0, v2

    if-lez v4, :cond_4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mHeight:F

    div-float/2addr v4, v2

    mul-float/2addr v4, v0

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mHeight:F

    :cond_1
    :goto_1
    iget v4, p1, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mCenterX:F

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v3

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mCenterX:F

    iget v4, p1, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mCenterY:F

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v2

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mCenterY:F

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v4

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenWidth:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v4

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenHeight:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPerspectiveTouchHandler:Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->setPreviewRect(Landroid/graphics/RectF;)V

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->updateNormalBuffer(Z)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->updatePerspectiveBuffer()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->updateCornerUIButtons()V

    :cond_2
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void

    :cond_3
    cmpg-float v4, v1, v3

    if-gez v4, :cond_0

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mWidth:F

    div-float/2addr v4, v3

    mul-float/2addr v4, v1

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mWidth:F

    goto :goto_0

    :cond_4
    cmpg-float v4, v0, v2

    if-gez v4, :cond_1

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mHeight:F

    div-float/2addr v4, v2

    mul-float/2addr v4, v0

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mHeight:F

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onSelected()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$SIListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$SIListener;

    invoke-interface {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$SIListener;->onSelected(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;)V

    :cond_0
    return-void
.end method

.method public onSurfaceChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mLoaded:Z

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->clear()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTopLeft:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTopLeft:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->onSurfaceChanged()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTopRight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTopRight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->onSurfaceChanged()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mBotLeft:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mBotLeft:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->onSurfaceChanged()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mBotRight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mBotRight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->onSurfaceChanged()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mAlpha:F

    return-void
.end method

.method public setPreviewData([III)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPreviewBuffer:[I

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mImageWidth:I

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mImageHeight:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isPreviewLoaded:Z

    return-void
.end method

.method public startGifPlay()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->stopGifPlay()V

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->gifPlayStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->gifPlayStarted:Z

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTimeList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifPlayThread:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifPlayThread:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;->start()V

    :cond_0
    return-void
.end method

.method public stopGifPlay()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifPlayThread:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifPlayThread:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;->stopMe()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifPlayThread:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->currentGifFrame:I

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->gifPlayStarted:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->playGif:Z

    return-void
.end method

.method public declared-synchronized updatePerspectiveBuffer()V
    .locals 45

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isCoverSticker:Z

    if-nez v7, :cond_0

    invoke-super/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->updatePerspectiveBuffer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v19

    const/16 v7, 0xc

    new-array v0, v7, [F

    move-object/from16 v42, v0

    const/4 v7, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x0

    aget v9, v17, v9

    mul-float/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v8, v9

    aput v8, v42, v7

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v10, 0x1

    aget v10, v17, v10

    mul-float/2addr v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    aput v8, v42, v7

    const/4 v7, 0x2

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x0

    aget v9, v19, v9

    mul-float/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v8, v9

    aput v8, v42, v7

    const/4 v7, 0x3

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v10, 0x1

    aget v10, v19, v10

    mul-float/2addr v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    aput v8, v42, v7

    const/4 v7, 0x4

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x0

    aget v9, v6, v9

    mul-float/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v8, v9

    aput v8, v42, v7

    const/4 v7, 0x5

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v10, 0x1

    aget v10, v6, v10

    mul-float/2addr v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    aput v8, v42, v7

    const/4 v7, 0x6

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x0

    aget v9, v17, v9

    mul-float/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v8, v9

    aput v8, v42, v7

    const/4 v7, 0x7

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v10, 0x1

    aget v10, v17, v10

    mul-float/2addr v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    aput v8, v42, v7

    const/16 v7, 0x8

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x0

    aget v9, v18, v9

    mul-float/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v8, v9

    aput v8, v42, v7

    const/16 v7, 0x9

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v10, 0x1

    aget v10, v18, v10

    mul-float/2addr v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    aput v8, v42, v7

    const/16 v7, 0xa

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x0

    aget v9, v19, v9

    mul-float/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v8, v9

    aput v8, v42, v7

    const/16 v7, 0xb

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v10, 0x1

    aget v10, v19, v10

    mul-float/2addr v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    aput v8, v42, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v8, v7, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v10, v7, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mBackgroundWidth:F

    float-to-int v12, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mBackgroundHeight:F

    float-to-int v13, v7

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v13}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->get3DCoordinates(DDII)Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v8, v7, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v10, v7, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mBackgroundWidth:F

    float-to-int v12, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mBackgroundHeight:F

    float-to-int v13, v7

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v13}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->get3DCoordinates(DDII)Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v8, v7, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v10, v7, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mBackgroundWidth:F

    float-to-int v12, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mBackgroundHeight:F

    float-to-int v13, v7

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v13}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->get3DCoordinates(DDII)Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v8, v7, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v10, v7, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mBackgroundWidth:F

    float-to-int v12, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mBackgroundHeight:F

    float-to-int v13, v7

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v13}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->get3DCoordinates(DDII)Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    move-object/from16 v3, v30

    move-object/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->get_line_intersection(Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;)Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->distanceBetweenPoints(Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;)D

    move-result-wide v20

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->distanceBetweenPoints(Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;)D

    move-result-wide v22

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->distanceBetweenPoints(Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;)D

    move-result-wide v24

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->distanceBetweenPoints(Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;)D

    move-result-wide v26

    add-double v8, v20, v24

    div-double v34, v8, v24

    add-double v8, v22, v26

    div-double v36, v8, v26

    add-double v8, v24, v20

    div-double v38, v8, v20

    add-double v8, v26, v22

    div-double v40, v8, v22

    const/16 v7, 0x1c

    new-array v0, v7, [F

    move-object/from16 v44, v0

    const/4 v7, 0x0

    move-object/from16 v0, v30

    iget v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->x:F

    aput v8, v44, v7

    const/4 v7, 0x1

    move-object/from16 v0, v30

    iget v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->y:F

    aput v8, v44, v7

    const/4 v7, 0x2

    move-object/from16 v0, v30

    iget v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->z:F

    aput v8, v44, v7

    const/4 v7, 0x3

    const/4 v8, 0x0

    aput v8, v44, v7

    const/4 v7, 0x4

    move-wide/from16 v0, v36

    double-to-float v8, v0

    aput v8, v44, v7

    const/4 v7, 0x5

    const/4 v8, 0x0

    aput v8, v44, v7

    const/4 v7, 0x6

    move-wide/from16 v0, v36

    double-to-float v8, v0

    aput v8, v44, v7

    const/4 v7, 0x7

    move-object/from16 v0, v29

    iget v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->x:F

    aput v8, v44, v7

    const/16 v7, 0x8

    move-object/from16 v0, v29

    iget v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->y:F

    aput v8, v44, v7

    const/16 v7, 0x9

    move-object/from16 v0, v29

    iget v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->z:F

    aput v8, v44, v7

    const/16 v7, 0xa

    const/4 v8, 0x0

    aput v8, v44, v7

    const/16 v7, 0xb

    const/4 v8, 0x0

    aput v8, v44, v7

    const/16 v7, 0xc

    const/4 v8, 0x0

    aput v8, v44, v7

    const/16 v7, 0xd

    move-wide/from16 v0, v34

    double-to-float v8, v0

    aput v8, v44, v7

    const/16 v7, 0xe

    move-object/from16 v0, v31

    iget v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->x:F

    aput v8, v44, v7

    const/16 v7, 0xf

    move-object/from16 v0, v31

    iget v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->y:F

    aput v8, v44, v7

    const/16 v7, 0x10

    move-object/from16 v0, v31

    iget v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->z:F

    aput v8, v44, v7

    const/16 v7, 0x11

    move-wide/from16 v0, v38

    double-to-float v8, v0

    aput v8, v44, v7

    const/16 v7, 0x12

    move-wide/from16 v0, v38

    double-to-float v8, v0

    aput v8, v44, v7

    const/16 v7, 0x13

    const/4 v8, 0x0

    aput v8, v44, v7

    const/16 v7, 0x14

    move-wide/from16 v0, v38

    double-to-float v8, v0

    aput v8, v44, v7

    const/16 v7, 0x15

    move-object/from16 v0, v32

    iget v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->x:F

    aput v8, v44, v7

    const/16 v7, 0x16

    move-object/from16 v0, v32

    iget v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->y:F

    aput v8, v44, v7

    const/16 v7, 0x17

    move-object/from16 v0, v32

    iget v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->z:F

    aput v8, v44, v7

    const/16 v7, 0x18

    move-wide/from16 v0, v40

    double-to-float v8, v0

    aput v8, v44, v7

    const/16 v7, 0x19

    const/4 v8, 0x0

    aput v8, v44, v7

    const/16 v7, 0x1a

    const/4 v8, 0x0

    aput v8, v44, v7

    const/16 v7, 0x1b

    move-wide/from16 v0, v40

    double-to-float v8, v0

    aput v8, v44, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mCoverShape:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    move-object/from16 v0, v42

    array-length v7, v0

    mul-int/lit8 v7, v7, 0x4

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    move-object/from16 v0, v42

    invoke-virtual {v7, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mLogoBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mLogoBuffer:Ljava/nio/FloatBuffer;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :goto_1
    const/16 v7, 0x30

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPerspTextureBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mCoverShape:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isSuperimposeService:Z

    if-eqz v7, :cond_2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mBackgroundWidth:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mBackgroundHeight:F

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mAgifFaceRect:Landroid/graphics/RectF;

    move-object/from16 v7, v19

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    invoke-static/range {v6 .. v13}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getTextureCoordinates([F[F[F[FFFLandroid/graphics/RectF;Landroid/graphics/RectF;)[F

    move-result-object v33

    :goto_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPerspTextureBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v7, 0x0

    aget v7, v6, v7

    const/4 v8, 0x1

    aget v8, v6, v8

    const/4 v9, 0x0

    aget v9, v17, v9

    const/4 v10, 0x1

    aget v10, v17, v10

    const/4 v11, 0x0

    aget v11, v18, v11

    const/4 v12, 0x1

    aget v12, v18, v12

    const/4 v13, 0x0

    aget v13, v19, v13

    const/4 v14, 0x1

    aget v14, v19, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v15}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v16

    invoke-static/range {v7 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getPerspectiveGridArray(FFFFFFFFII)[F

    move-result-object v43

    move-object/from16 v0, v43

    array-length v7, v0

    mul-int/lit8 v7, v7, 0x4

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    move-object/from16 v0, v43

    invoke-virtual {v7, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPerspectiveLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPerspectiveLineBuffer:Ljava/nio/FloatBuffer;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    :cond_1
    :try_start_2
    move-object/from16 v0, v44

    array-length v7, v0

    mul-int/lit8 v7, v7, 0x4

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    move-object/from16 v0, v44

    invoke-virtual {v7, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mLogoBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mLogoBuffer:Ljava/nio/FloatBuffer;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v6, v0, v1, v2, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getTextureCoordinates([F[F[F[FLandroid/graphics/RectF;)[F

    move-result-object v33

    goto/16 :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isSuperimposeService:Z

    if-eqz v7, :cond_4

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mBackgroundWidth:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mBackgroundHeight:F

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mAgifFaceRect:Landroid/graphics/RectF;

    move-object/from16 v7, v19

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    invoke-static/range {v6 .. v13}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getTextureCoordinatesForStrip([F[F[F[FFFLandroid/graphics/RectF;Landroid/graphics/RectF;)[F

    move-result-object v33

    goto/16 :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mScreenRect:Landroid/graphics/RectF;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v6, v0, v1, v2, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getTextureCoordinatesForStrip([F[F[F[FLandroid/graphics/RectF;)[F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v33

    goto/16 :goto_2
.end method
