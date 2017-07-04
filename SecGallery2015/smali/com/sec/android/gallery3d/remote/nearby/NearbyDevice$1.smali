.class Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice$1;
.super Ljava/lang/Object;
.source "NearbyDevice.java"

# interfaces
.implements Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    const-string/jumbo v0, "NearbyDevice"

    const-string/jumbo v1, "FlatBrowse cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->access$102(Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;Z)Z

    return-void
.end method

.method public onError(Lcom/samsung/android/allshare/ERROR;)V
    .locals 3

    const-string/jumbo v0, "NearbyDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FlatBrowse error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->access$102(Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;Z)Z

    return-void
.end method

.method public onFinish()V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    invoke-static {v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->access$400(Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->SupportNearbyDeviceMenu:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v2, 0xc8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string/jumbo v1, "NearbyDevice"

    const-string/jumbo v2, "FlatBrowse onFinish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    invoke-static {v1, v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->access$002(Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;I)I

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    invoke-static {v1, v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->access$102(Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;Z)Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->access$202(Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;Z)Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    invoke-static {v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->access$600(Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;)Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice$flatBrowseStateListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    invoke-static {v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->access$600(Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;)Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice$flatBrowseStateListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice$flatBrowseStateListener;->browseDone()V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    invoke-static {v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->access$400(Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->notifyContentChanged()V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "NearbyDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "InterruptedException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onProgress(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/allshare/Item;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string/jumbo v4, "NearbyDevice"

    const-string/jumbo v5, "FlatBrowse onProgress - items is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v4, "NearbyDevice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "FlatBrowse onProgress : index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    invoke-static {v6}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->access$004(Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/allshare/Item;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_1
    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/allshare/Item;->getType()Lcom/samsung/android/allshare/Item$MediaType;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_VIDEO:Lcom/samsung/android/allshare/Item$MediaType;

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    invoke-static {v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->access$300(Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    invoke-static {v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->access$400(Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    invoke-static {}, Lcom/sec/android/gallery3d/data/MediaObject;->nextVersionNumber()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->access$502(Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;J)J

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->notifyContentChanged()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "NearbyDevice"

    const-string/jumbo v1, "FlatBrowse onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->access$002(Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;I)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->access$102(Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;Z)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->access$202(Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;Z)Z

    return-void
.end method
