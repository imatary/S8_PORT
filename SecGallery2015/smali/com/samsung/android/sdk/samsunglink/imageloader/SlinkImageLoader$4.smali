.class Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$4;
.super Ljava/lang/Object;
.source "SlinkImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->dispatchBitmapResult(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$4;->this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;

    iput-object p2, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$4;->val$imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    iput-object p3, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$4;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$4;->val$imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    invoke-static {v3}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->access$0(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$4;->val$bitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->ENABLE_LOGGING:Z

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Failed to decode bitmap for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$4;->val$imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->getRequest()Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$4;->val$imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    invoke-static {v3}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->access$3(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageListener;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$4;->val$imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    invoke-interface {v3, v4}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageListener;->onErrorResponse(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkBitmapInfo;

    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$4;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$4;->val$imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    invoke-static {v4}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->access$2(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getMaxWidth()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$4;->val$imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    invoke-static {v5}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->access$2(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getMaxHeight()I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkBitmapInfo;-><init>(Landroid/graphics/Bitmap;II)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$4;->this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;

    invoke-static {v3}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$11(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageCache;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$4;->val$imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->getCacheKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageCache;->getBitmapInfo(Ljava/lang/String;)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkBitmapInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkBitmapInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkBitmapInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-lt v3, v4, :cond_3

    const/4 v2, 0x1

    :cond_3
    if-nez v2, :cond_4

    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$4;->this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;

    invoke-static {v3}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$11(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageCache;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$4;->val$imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->getCacheKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageCache;->putBitmapInfo(Ljava/lang/String;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkBitmapInfo;)V

    :cond_4
    sget-boolean v3, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->ENABLE_LOGGING:Z

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Loaded bitmap for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$4;->val$imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->getRequest()Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$4;->val$imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    iget-object v4, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$4;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->access$4(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$4;->val$imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    invoke-static {v3}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->access$3(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageListener;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$4;->val$imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageListener;->onResponse(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;Z)V

    goto/16 :goto_0
.end method
