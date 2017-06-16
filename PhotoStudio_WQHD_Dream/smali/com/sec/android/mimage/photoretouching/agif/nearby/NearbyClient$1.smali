.class Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$1;
.super Ljava/lang/Object;
.source "NearbyClient.java"

# interfaces
.implements Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceAdded(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/Device;Lcom/samsung/android/allshare/ERROR;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mDevices:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->access$000(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mDevices:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->access$000(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mDevices:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->access$000(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->refreshChangePlayerDialogRef()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onDeviceRemoved(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/Device;Lcom/samsung/android/allshare/ERROR;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mDevices:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->access$000(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mDevices:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->access$000(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;

    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->showDialogDisconnected(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->refreshChangePlayerDialogRef()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
