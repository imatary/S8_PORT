.class Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache$MyComponentCallbacks;
.super Ljava/lang/Object;
.source "SlinkLruImageCache.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyComponentCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache$MyComponentCallbacks;->this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache$MyComponentCallbacks;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache$MyComponentCallbacks;-><init>(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache$MyComponentCallbacks;->this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;

    # getter for: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;->mMinTrimMemoryLevel:I
    invoke-static {v0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;->access$1(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;)I

    move-result v0

    if-lt p1, v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->ENABLE_LOGGING:Z

    if-eqz v0, :cond_0

    # getter for: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;->access$2()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Clearing cache in onTrimMemory level="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache$MyComponentCallbacks;->this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;->clearCache()V

    :cond_1
    return-void
.end method
