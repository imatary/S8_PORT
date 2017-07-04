.class Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$6;
.super Ljava/lang/Object;
.source "NearbyClient.java"

# interfaces
.implements Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->changePlayer(ILjava/lang/String;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/data/MediaSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$6;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStateResponseReceived(Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;Lcom/samsung/android/allshare/ERROR;)V
    .locals 2

    const-string/jumbo v0, "NearbyClient"

    const-string/jumbo v1, "onGetStateResponseReceived"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onShowResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$6;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-static {v0, v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$1402(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;Z)Z

    const-string/jumbo v0, "NearbyClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onShowResponseReceived : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$7;->$SwitchMap$com$samsung$android$allshare$ERROR:[I

    invoke-virtual {p3}, Lcom/samsung/android/allshare/ERROR;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$6;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-static {v0, v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$1202(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;Z)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$6;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$500(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0046

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseScreenSharing:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$6;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-static {v0, v6, v3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$1300(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;ILcom/samsung/android/allshare/Device;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$6;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-static {v0, v5}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$1202(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;Z)Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseScreenSharing:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$6;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-static {v0, v5, v3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$1300(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;ILcom/samsung/android/allshare/Device;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$6;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$1500(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayerThread;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$6;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$1500(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayerThread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$6;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$1600(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$6;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$1700(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$6;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$1800(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$6;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$2000(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Lcom/samsung/android/allshare/media/ImageViewer;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$6;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$6;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-static {v3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$1800(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$1900(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/samsung/android/allshare/Item;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/allshare/media/ImageViewer;->prepare(Lcom/samsung/android/allshare/Item;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$6;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$1702(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;Lcom/sec/android/gallery3d/data/MediaSet;)Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$6;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$1802(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/sec/android/gallery3d/data/MediaItem;

    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$6;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-static {v0, v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$1202(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;Z)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$6;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$500(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a049e

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseScreenSharing:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$6;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-static {v0, v6, v3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$1300(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;ILcom/samsung/android/allshare/Device;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onStopResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "NearbyClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStopResponseReceived : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$6;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-static {v0, v3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$1202(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;Z)Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseScreenSharing:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$6;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    const/4 v1, 0x0

    invoke-static {v0, v3, v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$1300(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;ILcom/samsung/android/allshare/Device;)V

    :cond_0
    return-void
.end method
