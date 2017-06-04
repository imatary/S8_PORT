.class Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$2;
.super Landroid/content/BroadcastReceiver;
.source "BroadcastReceiverCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "device"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    if-nez v2, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "usbDevice is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "BroadcastReceiverCmd"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive, deviceName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Action : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "BroadcastReceiverCmd"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ACTION_USB_DEVICE_DETACHED : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "mtpMode"

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string/jumbo v3, "mtpDeviceName"

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->access$000(Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->checkAllToUpdateDynamicTabs()V

    :cond_1
    return-void
.end method
