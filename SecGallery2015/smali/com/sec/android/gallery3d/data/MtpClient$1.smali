.class Lcom/sec/android/gallery3d/data/MtpClient$1;
.super Landroid/content/BroadcastReceiver;
.source "MtpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/MtpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/MtpClient;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/MtpClient;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/MtpClient$1;->this$0:Lcom/sec/android/gallery3d/data/MtpClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "device"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/UsbDevice;

    if-nez v5, :cond_0

    new-instance v6, Ljava/lang/NullPointerException;

    const-string/jumbo v7, "usbDevice is null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "MtpClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onReceive, deviceName["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] Action ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/MtpClient$1;->this$0:Lcom/sec/android/gallery3d/data/MtpClient;

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/MtpClient;->access$000(Lcom/sec/android/gallery3d/data/MtpClient;)Ljava/util/HashMap;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/sec/android/gallery3d/data/MtpClient$1;->this$0:Lcom/sec/android/gallery3d/data/MtpClient;

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/MtpClient;->access$000(Lcom/sec/android/gallery3d/data/MtpClient;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/mtp/MtpDevice;

    const-string/jumbo v6, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-nez v3, :cond_1

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/MtpClient$1;->this$0:Lcom/sec/android/gallery3d/data/MtpClient;

    invoke-static {v6, v5, v0}, Lcom/sec/android/gallery3d/data/MtpClient;->access$100(Lcom/sec/android/gallery3d/data/MtpClient;Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_2

    const-string/jumbo v6, "MtpClient"

    const-string/jumbo v8, "ACTION_USB_DEVICE_ATTACHED : mtpDevice is not null"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/MtpClient$1;->this$0:Lcom/sec/android/gallery3d/data/MtpClient;

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/MtpClient;->access$200(Lcom/sec/android/gallery3d/data/MtpClient;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MtpClient$Listener;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/data/MtpClient$Listener;->deviceAdded()V

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_2
    :try_start_1
    const-string/jumbo v6, "MtpClient"

    const-string/jumbo v8, "ACTION_USB_DEVICE_ATTACHED : mtpDevice is null"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    monitor-exit v7

    return-void

    :cond_4
    const-string/jumbo v6, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string/jumbo v6, "MtpClient"

    const-string/jumbo v8, "ACTION_USB_DEVICE_DETACHED"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string/jumbo v6, "mtpMode"

    const/4 v8, 0x0

    invoke-static {p1, v6, v8}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string/jumbo v6, "mtpDeviceName"

    const/4 v8, 0x0

    invoke-static {p1, v6, v8}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->cancelImportTask()V

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/MtpClient$1;->this$0:Lcom/sec/android/gallery3d/data/MtpClient;

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/MtpClient;->access$000(Lcom/sec/android/gallery3d/data/MtpClient;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/MtpClient$1;->this$0:Lcom/sec/android/gallery3d/data/MtpClient;

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/MtpClient;->access$300(Lcom/sec/android/gallery3d/data/MtpClient;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/MtpClient$1;->this$0:Lcom/sec/android/gallery3d/data/MtpClient;

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/MtpClient;->access$400(Lcom/sec/android/gallery3d/data/MtpClient;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz v3, :cond_3

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/MtpClient$1;->this$0:Lcom/sec/android/gallery3d/data/MtpClient;

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/MtpClient;->access$200(Lcom/sec/android/gallery3d/data/MtpClient;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MtpClient$Listener;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/data/MtpClient$Listener;->deviceRemoved()V

    goto :goto_2

    :cond_6
    const-string/jumbo v6, "android.mtp.MtpClient.action.USB_PERMISSION"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/MtpClient$1;->this$0:Lcom/sec/android/gallery3d/data/MtpClient;

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/MtpClient;->access$300(Lcom/sec/android/gallery3d/data/MtpClient;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string/jumbo v6, "permission"

    const/4 v8, 0x0

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string/jumbo v6, "MtpClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ACTION_USB_PERMISSION: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_9

    if-nez v3, :cond_7

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/MtpClient$1;->this$0:Lcom/sec/android/gallery3d/data/MtpClient;

    invoke-static {v6, v5, v0}, Lcom/sec/android/gallery3d/data/MtpClient;->access$100(Lcom/sec/android/gallery3d/data/MtpClient;Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object v3

    :cond_7
    if-eqz v3, :cond_8

    const-string/jumbo v6, "MtpClient"

    const-string/jumbo v8, "ACTION_USB_PERMISSION : mtpDevice is not null"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/MtpClient$1;->this$0:Lcom/sec/android/gallery3d/data/MtpClient;

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/MtpClient;->access$200(Lcom/sec/android/gallery3d/data/MtpClient;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MtpClient$Listener;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/data/MtpClient$Listener;->deviceAdded()V

    goto :goto_3

    :cond_8
    const-string/jumbo v6, "MtpClient"

    const-string/jumbo v8, "ACTION_USB_PERMISSION : mtpDevice is null"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    if-eqz v3, :cond_3

    const-string/jumbo v6, "MtpClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mIgnoredDevices add : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/MtpClient$1;->this$0:Lcom/sec/android/gallery3d/data/MtpClient;

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/MtpClient;->access$400(Lcom/sec/android/gallery3d/data/MtpClient;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method
