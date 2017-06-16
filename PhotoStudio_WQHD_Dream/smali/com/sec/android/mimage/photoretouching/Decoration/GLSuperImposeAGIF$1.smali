.class Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF$1;
.super Ljava/lang/Object;
.source "GLSuperImposeAGIF.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->clear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mTextureImage:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;)I

    move-result v1

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mGifTextures:[I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->access$100(Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;)[I

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mGifTextures:[I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->access$100(Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;)[I

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mGifTextures:[I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->access$100(Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;)[I

    move-result-object v1

    array-length v1, v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mGifTextures:[I
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->access$100(Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;)[I

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mGifTextures:[I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->access$100(Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;)[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mGifTextures:[I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->access$100(Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;)[I

    move-result-object v1

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v1, v5, [I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mTextureImage:I
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;)I

    move-result v2

    aput v2, v1, v4

    invoke-static {v5, v1, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    # setter for: Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->mTextureImage:I
    invoke-static {v1, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->access$002(Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;I)I

    :cond_1
    return-void
.end method
