.class public Lcom/sec/android/gallery3d/data/MtpClient;
.super Ljava/lang/Object;
.source "MtpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/MtpClient$Listener;
    }
.end annotation


# static fields
.field private static final ACTION_USB_PERMISSION:Ljava/lang/String; = "android.mtp.MtpClient.action.USB_PERMISSION"

.field private static final TAG:Ljava/lang/String; = "MtpClient"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/mtp/MtpDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mIgnoredDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MtpClient$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPermissionIntent:Landroid/app/PendingIntent;

.field private final mRequestPermissionDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsbManager:Landroid/hardware/usb/UsbManager;

.field private final mUsbReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mDevices:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mRequestPermissionDevices:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mIgnoredDevices:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/gallery3d/data/MtpClient$1;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/data/MtpClient$1;-><init>(Lcom/sec/android/gallery3d/data/MtpClient;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "usb"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.mtp.MtpClient.action.USB_PERMISSION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mPermissionIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/data/MtpClient;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mDevices:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/data/MtpClient;Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)Landroid/mtp/MtpDevice;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/data/MtpClient;->openDeviceLocked(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/data/MtpClient;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/data/MtpClient;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mRequestPermissionDevices:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/data/MtpClient;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mIgnoredDevices:Ljava/util/ArrayList;

    return-object v0
.end method

.method private close()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MtpClient"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDevice(Ljava/lang/String;)Landroid/mtp/MtpDevice;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mDevices:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpDevice;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isCamera(Landroid/hardware/usb/UsbDevice;)Z
    .locals 6

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v4

    if-ne v4, v3, :cond_0

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v4

    if-ne v4, v3, :cond_0

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private openDeviceLocked(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)Landroid/mtp/MtpDevice;
    .locals 6

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "MtpClient"

    const-string/jumbo v4, "openDeviceLocked start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/MtpClient;->isCamera(Landroid/hardware/usb/UsbDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mIgnoredDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mRequestPermissionDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "MtpClient"

    const-string/jumbo v4, "Check UsbManager Permission"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v3, p1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "MtpClient"

    const-string/jumbo v4, "mUsbManager.hasPermission() is false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "android.mtp.MtpClient.action.USB_PERMISSION"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mPermissionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1, v4}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mRequestPermissionDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    const-string/jumbo v3, "MtpClient"

    const-string/jumbo v4, "openDeviceLocked End"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_1
    return-object v2

    :cond_1
    const-string/jumbo v3, "MtpClient"

    const-string/jumbo v4, "mUsbManager.hasPermission() is true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v3, p1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v2, Landroid/mtp/MtpDevice;

    invoke-direct {v2, p1}, Landroid/mtp/MtpDevice;-><init>(Landroid/hardware/usb/UsbDevice;)V

    invoke-virtual {v2, v0}, Landroid/mtp/MtpDevice;->open(Landroid/hardware/usb/UsbDeviceConnection;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mDevices:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string/jumbo v3, "MtpClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MtpDevice.open is not working for : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "MtpClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ignore device name2 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mIgnoredDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/sec/android/gallery3d/data/MtpClient$Listener;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mDevices:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addRequestPermissionDevices(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mRequestPermissionDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getDevice(I)Landroid/mtp/MtpDevice;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mDevices:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mDevices:Ljava/util/HashMap;

    invoke-static {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpDevice;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDeviceList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/mtp/MtpDevice;",
            ">;"
        }
    .end annotation

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mDevices:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/sec/android/gallery3d/data/MtpClient;->openDeviceLocked(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)Landroid/mtp/MtpDevice;

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public getObject(Ljava/lang/String;II)[B
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/MtpClient;->getDevice(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p2, p3}, Landroid/mtp/MtpDevice;->getObject(II)[B

    move-result-object v1

    goto :goto_0
.end method

.method public getObjectInfo(Ljava/lang/String;I)Landroid/mtp/MtpObjectInfo;
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/MtpClient;->getDevice(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p2}, Landroid/mtp/MtpDevice;->getObjectInfo(I)Landroid/mtp/MtpObjectInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public getObjectList(Ljava/lang/String;II)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/mtp/MtpObjectInfo;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/MtpClient;->getDevice(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-object v5

    :cond_1
    if-nez p3, :cond_2

    const/4 p3, -0x1

    :cond_2
    invoke-virtual {v0, p2, v6, p3}, Landroid/mtp/MtpDevice;->getObjectHandles(III)[I

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v4, v2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    array-length v7, v2

    :goto_0
    if-ge v6, v7, :cond_0

    aget v1, v2, v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v0, v1}, Landroid/mtp/MtpDevice;->getObjectInfo(I)Landroid/mtp/MtpObjectInfo;

    move-result-object v3

    if-nez v3, :cond_3

    const-string/jumbo v8, "MtpClient"

    const-string/jumbo v9, "getObjectInfo failed"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getRequestPermissionDevices()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mRequestPermissionDevices:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStorageList(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/mtp/MtpStorageInfo;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/MtpClient;->getDevice(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v6, "MtpClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "device is null. so return null name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    invoke-virtual {v0}, Landroid/mtp/MtpDevice;->getStorageIds()[I

    move-result-object v4

    if-nez v4, :cond_2

    const-string/jumbo v6, "MtpClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "storageIds is null. so return null device : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    array-length v2, v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v7, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_0

    aget v3, v4, v6

    invoke-virtual {v0, v3}, Landroid/mtp/MtpDevice;->getStorageInfo(I)Landroid/mtp/MtpStorageInfo;

    move-result-object v1

    if-nez v1, :cond_3

    const-string/jumbo v8, "MtpClient"

    const-string/jumbo v9, "getStorageInfo failed"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public getThumbnail(Ljava/lang/String;I)[B
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/MtpClient;->getDevice(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p2}, Landroid/mtp/MtpDevice;->getThumbnail(I)[B

    move-result-object v1

    goto :goto_0
.end method

.method public importFile(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/MtpClient;->getDevice(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/mtp/MtpDevice;->getObjectInfo(I)Landroid/mtp/MtpObjectInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p2, p3}, Landroid/mtp/MtpDevice;->importFile(ILjava/lang/String;)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public open()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.mtp.MtpClient.action.USB_PERMISSION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public removeListener(Lcom/sec/android/gallery3d/data/MtpClient$Listener;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mDevices:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpClient;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
