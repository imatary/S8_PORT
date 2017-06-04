.class Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$1;
.super Ljava/lang/Object;
.source "NearbyClient.java"

# interfaces
.implements Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;
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

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceAdded(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/Device;Lcom/samsung/android/allshare/ERROR;)V
    .locals 5

    const-string/jumbo v2, "NearbyClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Device Added : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "NearbyClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  Model Name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device;->getModelName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "NearbyClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  Name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "NearbyClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  Device Domain : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device;->getDeviceDomain()Lcom/samsung/android/allshare/Device$DeviceDomain;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "NearbyClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  Device Type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device;->getDeviceType()Lcom/samsung/android/allshare/Device$DeviceType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDevices:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$000(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDevices:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$000(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDevices:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$000(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v2, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    # invokes: Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->refreshChangePlayerDialogRef()V
    invoke-static {v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$200(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_2
    sget-object v2, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_PROVIDER:Lcom/samsung/android/allshare/Device$DeviceType;

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mWeakActivity:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$300(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/nearby/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->update(Lcom/samsung/android/allshare/Device;)V

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->initFlatBrowseFlag()V

    :cond_3
    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mNearbyContext:Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;
    invoke-static {v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$400(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->notifyDirty()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mNearbyContext:Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;
    invoke-static {v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$400(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;

    move-result-object v2

    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->notifyDirty(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDeviceRemoved(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/Device;Lcom/samsung/android/allshare/ERROR;)V
    .locals 8

    const/4 v7, 0x0

    const-string/jumbo v4, "NearbyClient"

    const-string/jumbo v5, "Device Removed!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "NearbyClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Device Type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "NearbyClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  Name : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDevices:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$000(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDevices:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$000(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v4, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    if-ne p1, v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->showDialogDisconnected(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$100(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    # invokes: Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->refreshChangePlayerDialogRef()V
    invoke-static {v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$200(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)V

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_1
    sget-object v4, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_PROVIDER:Lcom/samsung/android/allshare/Device$DeviceType;

    if-ne p1, v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mWeakActivity:Ljava/lang/ref/WeakReference;
    invoke-static {v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$300(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/nearby/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v7

    const/4 v4, 0x1

    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    if-eqz v3, :cond_2

    const-string/jumbo v4, "NearbyClient"

    const-string/jumbo v5, "clear nearby device"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v7}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$1;->showChangePlayerDialog(Z)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->update(Lcom/samsung/android/allshare/Device;)V

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->clearItems()V

    :cond_2
    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mNearbyContext:Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;
    invoke-static {v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$400(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->notifyDirty()V

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mNearbyContext:Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;
    invoke-static {v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$400(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;

    move-result-object v4

    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->notifyDirty(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mWeakActivity:Ljava/lang/ref/WeakReference;
    invoke-static {v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$300(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v4, "EXIT_SELECTION_MODE"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v4, "DEVICE_DISCONNECTED"

    invoke-virtual {v2, v4, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public showChangePlayerDialog(Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$500(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Landroid/content/Context;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mWeakActivity:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$300(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v2, "SHOW_CHANGE_PLAYER_DIALOG"

    invoke-virtual {v0, v2, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
