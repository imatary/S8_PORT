.class public Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;
.super Ljava/lang/Object;
.source "GLPreviewView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextureItem"
.end annotation


# instance fields
.field private height:I

.field private imageData:[I

.field public mLoaded:Z

.field public textureId:I

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;I)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;->textureId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;->mLoaded:Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;->textureId:I

    if-eq v0, v2, :cond_0

    new-array v0, v4, [I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;->textureId:I

    aput v1, v0, v3

    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    :cond_0
    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;->textureId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;->imageData:[I

    return-void
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;->width:I

    return v0
.end method

.method public onLoad()V
    .locals 10

    const/16 v2, 0x1908

    const v6, 0x47012f00    # 33071.0f

    const v5, 0x46180400    # 9729.0f

    const/4 v1, 0x0

    const/16 v0, 0xde1

    const-string v3, "TextureItem::onLoad"

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;->textureId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v3

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;->textureId:I

    :cond_0
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;->imageData:[I

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;->textureId:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;->imageData:[I

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

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;->imageData:[I

    invoke-virtual {v3, v4}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

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

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;->width:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;->height:I

    const/16 v7, 0x1401

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;->mLoaded:Z

    return-void
.end method

.method public setImageData([III)V
    .locals 2

    const-string v0, "PEDIT_GLPreviewView"

    const-string v1, "setImageData"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;->imageData:[I

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;->width:I

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;->height:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;->mLoaded:Z

    return-void
.end method
