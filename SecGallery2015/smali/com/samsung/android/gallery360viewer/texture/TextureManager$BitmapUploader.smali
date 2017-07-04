.class Lcom/samsung/android/gallery360viewer/texture/TextureManager$BitmapUploader;
.super Ljava/lang/Object;
.source "TextureManager.java"

# interfaces
.implements Lcom/samsung/android/gallery360viewer/IOnGLIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gallery360viewer/texture/TextureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapUploader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gallery360viewer/texture/TextureManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/gallery360viewer/texture/TextureManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/gallery360viewer/texture/TextureManager$BitmapUploader;->this$0:Lcom/samsung/android/gallery360viewer/texture/TextureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/gallery360viewer/texture/TextureManager;Lcom/samsung/android/gallery360viewer/texture/TextureManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/gallery360viewer/texture/TextureManager$BitmapUploader;-><init>(Lcom/samsung/android/gallery360viewer/texture/TextureManager;)V

    return-void
.end method


# virtual methods
.method public onGLIdle()V
    .locals 7

    const/16 v6, 0x2600

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v3, 0xde1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/TextureManager$BitmapUploader;->this$0:Lcom/samsung/android/gallery360viewer/texture/TextureManager;

    invoke-static {v1}, Lcom/samsung/android/gallery360viewer/texture/TextureManager;->access$100(Lcom/samsung/android/gallery360viewer/texture/TextureManager;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/TextureManager$BitmapUploader;->this$0:Lcom/samsung/android/gallery360viewer/texture/TextureManager;

    invoke-static {v1}, Lcom/samsung/android/gallery360viewer/texture/TextureManager;->access$100(Lcom/samsung/android/gallery360viewer/texture/TextureManager;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v1, "TextureManager"

    const-string/jumbo v2, "onGLIdle: null bitmap."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/TextureManager$BitmapUploader;->this$0:Lcom/samsung/android/gallery360viewer/texture/TextureManager;

    invoke-static {v1}, Lcom/samsung/android/gallery360viewer/texture/TextureManager;->access$200(Lcom/samsung/android/gallery360viewer/texture/TextureManager;)Lcom/samsung/android/gallery360viewer/view/StatusHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/TextureManager$BitmapUploader;->this$0:Lcom/samsung/android/gallery360viewer/texture/TextureManager;

    invoke-static {v1}, Lcom/samsung/android/gallery360viewer/texture/TextureManager;->access$200(Lcom/samsung/android/gallery360viewer/texture/TextureManager;)Lcom/samsung/android/gallery360viewer/view/StatusHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/samsung/android/gallery360viewer/view/StatusHandler;->onError(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/TextureManager$BitmapUploader;->this$0:Lcom/samsung/android/gallery360viewer/texture/TextureManager;

    invoke-static {v1}, Lcom/samsung/android/gallery360viewer/texture/TextureManager;->access$300(Lcom/samsung/android/gallery360viewer/texture/TextureManager;)[I

    move-result-object v1

    aget v1, v1, v2

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/TextureManager$BitmapUploader;->this$0:Lcom/samsung/android/gallery360viewer/texture/TextureManager;

    invoke-static {v1}, Lcom/samsung/android/gallery360viewer/texture/TextureManager;->access$300(Lcom/samsung/android/gallery360viewer/texture/TextureManager;)[I

    move-result-object v1

    invoke-static {v4, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/TextureManager$BitmapUploader;->this$0:Lcom/samsung/android/gallery360viewer/texture/TextureManager;

    invoke-static {v1}, Lcom/samsung/android/gallery360viewer/texture/TextureManager;->access$300(Lcom/samsung/android/gallery360viewer/texture/TextureManager;)[I

    move-result-object v1

    aget v1, v1, v2

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/TextureManager$BitmapUploader;->this$0:Lcom/samsung/android/gallery360viewer/texture/TextureManager;

    invoke-static {v1}, Lcom/samsung/android/gallery360viewer/texture/TextureManager;->access$300(Lcom/samsung/android/gallery360viewer/texture/TextureManager;)[I

    move-result-object v1

    aget v1, v1, v2

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x2801

    invoke-static {v3, v1, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2800

    invoke-static {v3, v1, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0xde1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/gallery360viewer/texture/TextureManager$BitmapUploader;->this$0:Lcom/samsung/android/gallery360viewer/texture/TextureManager;

    invoke-static {v3}, Lcom/samsung/android/gallery360viewer/texture/TextureManager;->access$100(Lcom/samsung/android/gallery360viewer/texture/TextureManager;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    const-string/jumbo v1, "TextureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error loading Texture: texImage2D call failed with exception\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/TextureManager$BitmapUploader;->this$0:Lcom/samsung/android/gallery360viewer/texture/TextureManager;

    invoke-static {v1}, Lcom/samsung/android/gallery360viewer/texture/TextureManager;->access$200(Lcom/samsung/android/gallery360viewer/texture/TextureManager;)Lcom/samsung/android/gallery360viewer/view/StatusHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/TextureManager$BitmapUploader;->this$0:Lcom/samsung/android/gallery360viewer/texture/TextureManager;

    invoke-static {v1}, Lcom/samsung/android/gallery360viewer/texture/TextureManager;->access$200(Lcom/samsung/android/gallery360viewer/texture/TextureManager;)Lcom/samsung/android/gallery360viewer/view/StatusHandler;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/samsung/android/gallery360viewer/view/StatusHandler;->onError(I)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "TextureManager"

    const-string/jumbo v2, "Error loading Texture. glGenTextures call failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/TextureManager$BitmapUploader;->this$0:Lcom/samsung/android/gallery360viewer/texture/TextureManager;

    invoke-static {v1}, Lcom/samsung/android/gallery360viewer/texture/TextureManager;->access$200(Lcom/samsung/android/gallery360viewer/texture/TextureManager;)Lcom/samsung/android/gallery360viewer/view/StatusHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/TextureManager$BitmapUploader;->this$0:Lcom/samsung/android/gallery360viewer/texture/TextureManager;

    invoke-static {v1}, Lcom/samsung/android/gallery360viewer/texture/TextureManager;->access$200(Lcom/samsung/android/gallery360viewer/texture/TextureManager;)Lcom/samsung/android/gallery360viewer/view/StatusHandler;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/samsung/android/gallery360viewer/view/StatusHandler;->onError(I)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
