.class Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$2;
.super Ljava/lang/Object;
.source "NearbyClient.java"

# interfaces
.implements Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->startAllShareFrameworkService()V
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

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$2;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreated(Lcom/samsung/android/allshare/ServiceProvider;Lcom/samsung/android/allshare/ServiceConnector$ServiceState;)V
    .locals 3

    const-string/jumbo v0, "NearbyClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ServiceProvider Created : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->ENABLED:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$2;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$602(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;Z)Z

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$2;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/allshare/media/MediaServiceProvider;

    invoke-static {v1, v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$702(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;Lcom/samsung/android/allshare/media/MediaServiceProvider;)Lcom/samsung/android/allshare/media/MediaServiceProvider;

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$2;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-virtual {p1}, Lcom/samsung/android/allshare/ServiceProvider;->getDeviceFinder()Lcom/samsung/android/allshare/DeviceFinder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    invoke-static {v1, v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$802(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;Lcom/samsung/android/allshare/media/MediaDeviceFinder;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    const-string/jumbo v0, "NearbyClient"

    const-string/jumbo v1, "setDeviceFinderEventListener. provider and imageviewer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$2;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$800(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_PROVIDER:Lcom/samsung/android/allshare/Device$DeviceType;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$2;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-static {v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$900(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$2;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$800(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$2;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-static {v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$900(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$2;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$1000(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$2;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$1100(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$2;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$400(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->notifyDirty()V

    return-void
.end method

.method public onDeleted(Lcom/samsung/android/allshare/ServiceProvider;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "NearbyClient"

    const-string/jumbo v1, "ServiceProvider Deleted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$2;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$600(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$2;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$602(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;Z)Z

    const-string/jumbo v0, "NearbyClient"

    const-string/jumbo v1, "ServiceProvider is stopped by system. try restart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$2;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$700(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Lcom/samsung/android/allshare/media/MediaServiceProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/allshare/ServiceConnector;->deleteServiceProvider(Lcom/samsung/android/allshare/ServiceProvider;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$2;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->startAllShareFrameworkService()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$2;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$702(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;Lcom/samsung/android/allshare/media/MediaServiceProvider;)Lcom/samsung/android/allshare/media/MediaServiceProvider;

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$2;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$802(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;Lcom/samsung/android/allshare/media/MediaDeviceFinder;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    goto :goto_0
.end method
