.class Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient$5;
.super Ljava/lang/Object;
.source "NearbyClient.java"

# interfaces
.implements Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->startAllShareFrameworkService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient$5;->this$0:Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreated(Lcom/samsung/android/allshare/ServiceProvider;Lcom/samsung/android/allshare/ServiceConnector$ServiceState;)V
    .locals 4

    sget-object v1, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->ENABLED:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient$5;->this$0:Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;

    const/4 v2, 0x1

    # setter for: Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->mUseAsf:Z
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->access$602(Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;Z)Z

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient$5;->this$0:Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/allshare/media/MediaServiceProvider;

    # setter for: Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->mServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;
    invoke-static {v2, v1}, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->access$702(Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;Lcom/samsung/android/allshare/media/MediaServiceProvider;)Lcom/samsung/android/allshare/media/MediaServiceProvider;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient$5;->this$0:Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;

    invoke-virtual {p1}, Lcom/samsung/android/allshare/ServiceProvider;->getDeviceFinder()Lcom/samsung/android/allshare/DeviceFinder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    # setter for: Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;
    invoke-static {v2, v1}, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->access$802(Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;Lcom/samsung/android/allshare/media/MediaDeviceFinder;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient$5;->this$0:Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;

    # getter for: Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->access$800(Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient$5;->this$0:Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;

    # getter for: Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->mDeviceListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->access$900(Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;)Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient$5;->this$0:Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;

    # getter for: Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->access$800(Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->refresh()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient$5;->this$0:Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;

    # invokes: Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->refreshDeviceList()V
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->access$1000(Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient$5;->this$0:Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;

    sget-object v2, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->getCheckedDeviceList(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient$5;->this$0:Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->refreshChangePlayerDialogRef()V

    return-void
.end method

.method public onDeleted(Lcom/samsung/android/allshare/ServiceProvider;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient$5;->this$0:Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;

    # getter for: Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->mUseAsf:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->access$600(Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient$5;->this$0:Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->mUseAsf:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->access$602(Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient$5;->this$0:Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;

    # getter for: Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->mServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->access$700(Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;)Lcom/samsung/android/allshare/media/MediaServiceProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/allshare/ServiceConnector;->deleteServiceProvider(Lcom/samsung/android/allshare/ServiceProvider;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient$5;->this$0:Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;

    # invokes: Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->startAllShareFrameworkService()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->access$1100(Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient$5;->this$0:Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;

    # setter for: Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->mServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->access$702(Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;Lcom/samsung/android/allshare/media/MediaServiceProvider;)Lcom/samsung/android/allshare/media/MediaServiceProvider;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient$5;->this$0:Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;

    # setter for: Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->access$802(Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;Lcom/samsung/android/allshare/media/MediaDeviceFinder;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    goto :goto_0
.end method
