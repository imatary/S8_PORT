.class Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$1;
.super Ljava/lang/Object;
.source "GLSuperImpose.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->clearTextures()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/16 v6, 0xa

    const/4 v5, 0x0

    const/4 v4, -0x1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPreviewTextureId:I

    if-eq v1, v4, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifTextures:[I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;)[I

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifTextures:[I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;)[I

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifTextures:[I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;)[I

    move-result-object v1

    array-length v1, v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifTextures:[I
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;)[I

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifTextures:[I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;)[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mGifTextures:[I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;)[I

    move-result-object v1

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v1, v6, [I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureResizeNormal:I

    aput v2, v1, v5

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    iget v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureResizePressed:I

    aput v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    iget v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureRotateNormal:I

    aput v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    iget v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureRotatePressed:I

    aput v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    iget v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureCloseNormal:I

    aput v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    iget v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureClosePressed:I

    aput v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    iget v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPreviewTextureId:I

    aput v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    iget v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTexturePerspNormal:I

    aput v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    iget v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTexturePerspPressed:I

    aput v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mCircleTextureId:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;)I

    move-result v3

    aput v3, v1, v2

    invoke-static {v6, v1, v5}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    iput v4, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureResizeNormal:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    iput v4, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureResizePressed:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    iput v4, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureRotateNormal:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    iput v4, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureRotatePressed:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    iput v4, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureCloseNormal:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    iput v4, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTextureClosePressed:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    iput v4, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mPreviewTextureId:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    iput v4, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTexturePerspNormal:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    iput v4, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mTexturePerspPressed:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mCircleTextureId:I
    invoke-static {v1, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->access$302(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;I)I

    :cond_1
    return-void
.end method
