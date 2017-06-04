.class Lcom/sec/android/gallery3d/data/MtpDeviceSet$DevicesLoader;
.super Ljava/lang/Object;
.source "MtpDeviceSet.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/MtpDeviceSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DevicesLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/sec/android/gallery3d/data/MediaSet;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/MtpDeviceSet;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/data/MtpDeviceSet;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/MtpDeviceSet$DevicesLoader;->this$0:Lcom/sec/android/gallery3d/data/MtpDeviceSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/data/MtpDeviceSet;Lcom/sec/android/gallery3d/data/MtpDeviceSet$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/MtpDeviceSet$DevicesLoader;-><init>(Lcom/sec/android/gallery3d/data/MtpDeviceSet;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/MtpDeviceSet$DevicesLoader;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/MtpDeviceSet$DevicesLoader;->this$0:Lcom/sec/android/gallery3d/data/MtpDeviceSet;

    # getter for: Lcom/sec/android/gallery3d/data/MtpDeviceSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;
    invoke-static {v7}, Lcom/sec/android/gallery3d/data/MtpDeviceSet;->access$000(Lcom/sec/android/gallery3d/data/MtpDeviceSet;)Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/MtpDeviceSet$DevicesLoader;->this$0:Lcom/sec/android/gallery3d/data/MtpDeviceSet;

    # getter for: Lcom/sec/android/gallery3d/data/MtpDeviceSet;->mMtpContext:Lcom/sec/android/gallery3d/data/MtpContext;
    invoke-static {v7}, Lcom/sec/android/gallery3d/data/MtpDeviceSet;->access$100(Lcom/sec/android/gallery3d/data/MtpDeviceSet;)Lcom/sec/android/gallery3d/data/MtpContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MtpContext;->getMtpClient()Lcom/sec/android/gallery3d/data/MtpClient;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MtpClient;->getDeviceList()Ljava/util/List;

    move-result-object v4

    const-string/jumbo v7, "MtpDeviceSet"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "DevicesLoader loadDevices["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "] size["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/mtp/MtpDevice;

    sget-object v8, Lcom/sec/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    invoke-virtual {v5}, Landroid/mtp/MtpDevice;->getDeviceId()I

    move-result v3

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/MtpDeviceSet$DevicesLoader;->this$0:Lcom/sec/android/gallery3d/data/MtpDeviceSet;

    iget-object v9, v9, Lcom/sec/android/gallery3d/data/MtpDeviceSet;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v9, v3}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MtpDevice;

    if-nez v2, :cond_0

    new-instance v2, Lcom/sec/android/gallery3d/data/MtpDevice;

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/MtpDeviceSet$DevicesLoader;->this$0:Lcom/sec/android/gallery3d/data/MtpDeviceSet;

    # getter for: Lcom/sec/android/gallery3d/data/MtpDeviceSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;
    invoke-static {v9}, Lcom/sec/android/gallery3d/data/MtpDeviceSet;->access$000(Lcom/sec/android/gallery3d/data/MtpDeviceSet;)Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/MtpDeviceSet$DevicesLoader;->this$0:Lcom/sec/android/gallery3d/data/MtpDeviceSet;

    # getter for: Lcom/sec/android/gallery3d/data/MtpDeviceSet;->mMtpContext:Lcom/sec/android/gallery3d/data/MtpContext;
    invoke-static {v10}, Lcom/sec/android/gallery3d/data/MtpDeviceSet;->access$100(Lcom/sec/android/gallery3d/data/MtpDeviceSet;)Lcom/sec/android/gallery3d/data/MtpContext;

    move-result-object v10

    invoke-direct {v2, v0, v9, v3, v10}, Lcom/sec/android/gallery3d/data/MtpDevice;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;ILcom/sec/android/gallery3d/data/MtpContext;)V

    const-string/jumbo v9, "MtpDeviceSet"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "create new MtpDevice["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "] deviceId["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v9, "MtpDeviceSet"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "add device["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v8

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    :cond_1
    sget-object v7, Lcom/sec/android/gallery3d/util/MediaSetUtils;->NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-string/jumbo v7, "MtpDeviceSet"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "result size : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    goto :goto_1

    :cond_2
    return-object v6
.end method
