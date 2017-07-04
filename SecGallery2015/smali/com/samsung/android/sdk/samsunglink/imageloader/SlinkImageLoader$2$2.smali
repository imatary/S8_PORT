.class Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2$2;
.super Ljava/lang/Object;
.source "SlinkImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$deviceId:J

.field private final synthetic val$imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2;Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;J)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2$2;->this$1:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2;

    iput-object p2, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2$2;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2$2;->val$imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    iput-wide p4, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2$2;->val$deviceId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkBitmapInfo;

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v6, v6}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkBitmapInfo;-><init>(Landroid/graphics/Bitmap;II)V

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2$2;->this$1:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2;

    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2;->access$0(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2;)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$11(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageCache;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2$2;->val$imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageCache;->putBitmapInfo(Ljava/lang/String;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkBitmapInfo;)V

    sget-boolean v1, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->ENABLE_LOGGING:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Loaded device icon bitmap for device "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2$2;->val$deviceId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2$2;->val$imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    iget-object v2, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->access$4(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2$2;->val$imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->access$3(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageListener;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2$2;->val$imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    invoke-interface {v1, v2, v6}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageListener;->onResponse(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;Z)V

    return-void
.end method
