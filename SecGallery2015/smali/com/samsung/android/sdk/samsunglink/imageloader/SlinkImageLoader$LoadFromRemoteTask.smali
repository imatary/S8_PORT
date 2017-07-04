.class Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask;
.super Ljava/lang/Object;
.source "SlinkImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadFromRemoteTask"
.end annotation


# instance fields
.field private final entryUri:Landroid/net/Uri;

.field private final imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

.field final synthetic this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask;->this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask;->imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    iput-object p3, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask;->entryUri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask;)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask;->imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v2, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask;->imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    invoke-static {v2}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->access$0(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v2, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->ENABLE_LOGGING:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "loadFromRemote start for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask;->imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->getRequest()Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask;->entryUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "skip_cache_put"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string/jumbo v2, "skip_cache_get"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string/jumbo v2, "width"

    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask;->imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    invoke-static {v3}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->access$2(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getMaxWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string/jumbo v2, "height"

    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask;->imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    invoke-static {v3}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->access$2(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getMaxHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string/jumbo v2, "group_id"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask;->this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;

    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask;->imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$3(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->ENABLE_LOGGING:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "FileNotFoundException for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask;->imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->getRequest()Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask;->this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;

    invoke-static {v2}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$10(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask$1;-><init>(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
