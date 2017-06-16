.class Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$1;
.super Ljava/lang/Object;
.source "GLPreviewView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->loadReference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/16 v2, 0x1908

    const v6, 0x47012f00    # 33071.0f

    const v5, 0x46180400    # 9729.0f

    const/4 v1, 0x0

    const/16 v0, 0xde1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mEffectsReferenceTexture:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v4

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mEffectsReferenceTexture:I
    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->access$202(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;I)I

    :cond_0
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mEffectsReferenceTexture:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;)I

    move-result v3

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v10

    const/4 v11, 0x0

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v11

    :cond_1
    if-eqz v11, :cond_2

    array-length v3, v11

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v3, 0x2801

    invoke-static {v0, v3, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v3, 0x2800

    invoke-static {v0, v3, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v3, 0x2802

    invoke-static {v0, v3, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v3, 0x2803

    invoke-static {v0, v3, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v4

    const/16 v7, 0x1401

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    :cond_2
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method
