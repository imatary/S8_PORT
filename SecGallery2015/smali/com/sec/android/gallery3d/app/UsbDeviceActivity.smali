.class public final Lcom/sec/android/gallery3d/app/UsbDeviceActivity;
.super Landroid/app/Activity;
.source "UsbDeviceActivity.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "dummyaction.MTP_CONNECTED"

.field private static final ACTION_USB_PERMISSION:Ljava/lang/String; = "android.mtp.MtpClient.action.USB_PERMISSION"

.field private static final TAG:Ljava/lang/String; = "UsbDeviceActivity"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsRegistered:Z

.field private final mUsbReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/UsbDeviceActivity;->mIsRegistered:Z

    new-instance v0, Lcom/sec/android/gallery3d/app/UsbDeviceActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/app/UsbDeviceActivity$1;-><init>(Lcom/sec/android/gallery3d/app/UsbDeviceActivity;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/UsbDeviceActivity;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/app/UsbDeviceActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/UsbDeviceActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v8, "UsbDeviceActivity"

    const-string/jumbo v9, "onCreate() - received usb device attached"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "UsbDeviceActivity"

    const-string/jumbo v9, "Knox mode, so finish."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/UsbDeviceActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/UsbDeviceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/gallery3d/app/UsbDeviceActivity;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/sec/android/gallery3d/data/MtpContext;

    iget-object v8, p0, Lcom/sec/android/gallery3d/app/UsbDeviceActivity;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/sec/android/gallery3d/data/MtpContext;-><init>(Landroid/content/Context;)V

    const-string/jumbo v8, "usb"

    invoke-virtual {p0, v8}, Lcom/sec/android/gallery3d/app/UsbDeviceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/usb/UsbManager;

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v9, "android.mtp.MtpClient.action.USB_PERMISSION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v10, v8, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v8, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v8, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v8, "android.mtp.MtpClient.action.USB_PERMISSION"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/sec/android/gallery3d/app/UsbDeviceActivity;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v2}, Lcom/sec/android/gallery3d/app/UsbDeviceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v11, p0, Lcom/sec/android/gallery3d/app/UsbDeviceActivity;->mIsRegistered:Z

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/UsbDeviceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v8, "device"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    const-string/jumbo v8, "UsbDeviceActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "intent : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    const-string/jumbo v8, "UsbDeviceActivity"

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MtpContext;->getMtpClient()Lcom/sec/android/gallery3d/data/MtpClient;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MtpClient;->getRequestPermissionDevices()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "UsbDeviceActivity"

    const-string/jumbo v9, "device have permission"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v9, "dummyaction.MTP_CONNECTED"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const v9, 0x14008000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/UsbDeviceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "mtpMode"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/UsbDeviceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "mtpDeviceName"

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/sec/android/gallery3d/app/UsbDeviceActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/UsbDeviceActivity;->finish()V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v8, "UsbDeviceActivity"

    const-string/jumbo v9, "unable to start Gallery activity"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v0, v5}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MtpContext;->getMtpClient()Lcom/sec/android/gallery3d/data/MtpClient;

    move-result-object v8

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/data/MtpClient;->addRequestPermissionDevices(Ljava/lang/String;)V

    const-string/jumbo v8, "UsbDeviceActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "requestPermission :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string/jumbo v8, "UsbDeviceActivity"

    const-string/jumbo v9, "device have null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/UsbDeviceActivity;->mIsRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/UsbDeviceActivity;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/app/UsbDeviceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/UsbDeviceActivity;->mIsRegistered:Z

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
