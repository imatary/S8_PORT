.class Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;
.super Ljava/lang/Object;
.source "GLPreviewView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OriginalTextureItem"
.end annotation


# instance fields
.field private height:I

.field private id:I

.field public mLoaded:Z

.field private mSliceHeight:I

.field private mSliceWidth:I

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field public textureId:I

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;I)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->textureId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->mLoaded:Z

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->id:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->id:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;)Ljava/nio/FloatBuffer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->mVertexBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->textureId:I

    if-eq v0, v3, :cond_0

    new-array v0, v4, [I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->textureId:I

    aput v1, v0, v2

    invoke-static {v4, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->textureId:I

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->mLoaded:Z

    :cond_0
    return-void
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->width:I

    return v0
.end method

.method public initSizes()V
    .locals 12

    const/4 v5, 0x0

    const/4 v9, 0x0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalWidth()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isOverGLTextureSize(I)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalWidth()I

    move-result v4

    sget v10, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_ORI_HOR_SLICES:I

    div-int v10, v4, v10

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->id:I

    add-int/lit8 v4, v4, 0x1

    sget v11, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_ORI_HOR_SLICES:I

    rem-int/2addr v4, v11

    if-nez v4, :cond_3

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalWidth()I

    move-result v4

    sget v11, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_ORI_HOR_SLICES:I

    rem-int/2addr v4, v11

    :goto_0
    add-int/2addr v4, v10

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->mSliceWidth:I

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalHeight()I

    move-result v4

    sget v10, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_ORI_VER_SLICES:I

    div-int/2addr v4, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->id:I

    sget v11, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_ORI_HOR_SLICES:I

    div-int/2addr v10, v11

    sget v11, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_ORI_VER_SLICES:I

    add-int/lit8 v11, v11, -0x1

    if-ne v10, v11, :cond_0

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalHeight()I

    move-result v5

    sget v10, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_ORI_VER_SLICES:I

    rem-int/2addr v5, v10

    :cond_0
    add-int/2addr v4, v5

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->mSliceHeight:I

    new-instance v6, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getBoundRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-direct {v6, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->mSliceWidth:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v4, v5

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->id:I

    add-int/lit8 v4, v4, 0x1

    sget v10, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_ORI_HOR_SLICES:I

    rem-int/2addr v4, v10

    if-nez v4, :cond_4

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalWidth()I

    move-result v10

    sget v11, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_ORI_HOR_SLICES:I

    rem-int/2addr v10, v11

    int-to-float v10, v10

    mul-float/2addr v4, v10

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v4, v10

    :goto_1
    add-float v2, v5, v4

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->mSliceHeight:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->id:I

    sget v10, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_ORI_HOR_SLICES:I

    div-int/2addr v5, v10

    sget v10, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_ORI_VER_SLICES:I

    add-int/lit8 v10, v10, -0x1

    if-ne v5, v10, :cond_1

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalHeight()I

    move-result v9

    sget v10, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_ORI_VER_SLICES:I

    rem-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v5, v9

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v5, v9

    :cond_1
    add-float v3, v4, v9

    iget v4, v6, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->id:I

    sget v9, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_ORI_HOR_SLICES:I

    rem-int/2addr v5, v9

    int-to-float v5, v5

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v9

    mul-float/2addr v5, v9

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalWidth()I

    move-result v9

    sget v10, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_ORI_HOR_SLICES:I

    div-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v5, v9

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v5, v9

    add-float v0, v4, v5

    iget v4, v6, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->id:I

    sget v9, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_ORI_HOR_SLICES:I

    div-int/2addr v5, v9

    int-to-float v5, v5

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v9

    mul-float/2addr v5, v9

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalHeight()I

    move-result v9

    sget v10, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_ORI_VER_SLICES:I

    div-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v5, v9

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v5, v9

    add-float v1, v4, v5

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getOrthoNormalizedCoordinates(FFFFII)[F

    move-result-object v8

    array-length v4, v8

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->mVertexBuffer:Ljava/nio/FloatBuffer;

    :cond_2
    :goto_2
    return-void

    :cond_3
    move v4, v5

    goto/16 :goto_0

    :cond_4
    move v4, v9

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0xa

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->mSliceHeight:I

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalWidth()I

    move-result v4

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->mSliceWidth:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->id:I

    const/16 v5, 0x9

    if-ne v4, v5, :cond_6

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalHeight()I

    move-result v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->mSliceHeight:I

    mul-int/lit8 v5, v5, 0x9

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->mSliceHeight:I

    :cond_6
    new-instance v6, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getBoundRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-direct {v6, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->mSliceHeight:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    iget v0, v6, Landroid/graphics/RectF;->left:F

    iget v4, v6, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->id:I

    int-to-float v5, v5

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v9

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0xa

    int-to-float v10, v10

    mul-float/2addr v9, v10

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-float/2addr v5, v9

    add-float v1, v4, v5

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getOrthoNormalizedCoordinates(FFFFII)[F

    move-result-object v8

    array-length v4, v8

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->mVertexBuffer:Ljava/nio/FloatBuffer;

    goto/16 :goto_2
.end method

.method public onLoad()V
    .locals 18

    const-string v1, "PEDIT_GLPreviewView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OriginalItem, onLoad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->textureId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->textureId:I

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v14

    if-eqz v14, :cond_1

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalWidth()I

    move-result v1

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isPanoramaImage(II)Z

    move-result v15

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalBuffer()[I

    move-result-object v11

    if-eqz v11, :cond_5

    if-nez v15, :cond_5

    const/16 v1, 0xde1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->textureId:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->mSliceWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->mSliceHeight:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v10

    const-string v1, "PEDIT_GLPreviewView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offset is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->mSliceWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->id:I

    mul-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v9

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalWidth()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isOverGLTextureSize(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalWidth()I

    move-result v1

    sget v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_ORI_HOR_SLICES:I

    div-int v17, v1, v2

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalHeight()I

    move-result v1

    sget v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_ORI_VER_SLICES:I

    div-int v12, v1, v2

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalWidth()I

    move-result v1

    mul-int/2addr v1, v12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->id:I

    sget v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_ORI_HOR_SLICES:I

    div-int/2addr v2, v3

    mul-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->id:I

    sget v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_ORI_HOR_SLICES:I

    rem-int/2addr v2, v3

    mul-int v2, v2, v17

    add-int v16, v1, v2

    const/4 v13, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->mSliceHeight:I

    if-ge v13, v1, :cond_4

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalWidth()I

    move-result v1

    mul-int/2addr v1, v13

    add-int v1, v1, v16

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->mSliceWidth:I

    invoke-virtual {v9, v11, v1, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->mSliceWidth:I

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    mul-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->id:I

    mul-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->mSliceWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->mSliceHeight:I

    mul-int/2addr v3, v4

    invoke-virtual {v1, v11, v2, v3}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    move-result-object v9

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v1, 0xde1

    const/16 v2, 0x2801

    const v3, 0x461c0c00    # 9987.0f

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0xde1

    const/16 v2, 0x2800

    const v3, 0x46180400    # 9729.0f

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0xde1

    const/16 v2, 0x2802

    const v3, 0x47012f00    # 33071.0f

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0xde1

    const/16 v2, 0x2803

    const v3, 0x47012f00    # 33071.0f

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1908

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->mSliceWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->mSliceHeight:I

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v1, 0xde1

    invoke-static {v1}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    const/16 v1, 0xde1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v1, "PEDIT_GLPreviewView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Original Item loaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->mLoaded:Z

    goto/16 :goto_0

    :cond_5
    const-string v1, "PEDIT_GLPreviewView"

    const-string v2, "original buffer is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onOriginalUpdated()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->initSizes()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->mLoaded:Z

    return-void
.end method

.method public onSurfaceChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->destroy()V

    return-void
.end method
