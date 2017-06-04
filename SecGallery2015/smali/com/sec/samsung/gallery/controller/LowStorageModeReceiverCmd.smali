.class public Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "LowStorageModeReceiverCmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd$LowStorageCheckAsyncTask;,
        Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd$CmdType;
    }
.end annotation


# static fields
.field private static final ACTION_DEVICE_STORAGE_LOW:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_LOW"

.field private static final ACTION_DEVICE_STORAGE_OK:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_OK"

.field private static final TAG:Ljava/lang/String; = "LowStorageCmd"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLowStorageModeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    new-instance v0, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd$1;-><init>(Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;->mLowStorageModeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private registerReceiver(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;->mLowStorageModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterReceiver(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;->mLowStorageModeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;->mLowStorageModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;->mLowStorageModeReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "LowStorageCmd"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;->mLowStorageModeReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;->mLowStorageModeReceiver:Landroid/content/BroadcastReceiver;

    throw v1
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 5

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v3, v2, v3

    check-cast v3, Landroid/content/Context;

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    aget-object v0, v2, v3

    check-cast v0, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd$CmdType;

    sget-object v3, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd$CmdType;->REGISTER_RECEIVER:Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd$CmdType;

    if-ne v0, v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;->registerReceiver(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v3, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd$CmdType;->UNREGISTER_RECEIVER:Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd$CmdType;

    if-ne v0, v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;->unregisterReceiver(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd$CmdType;->CHECK_STORAGE:Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd$CmdType;

    if-ne v0, v3, :cond_0

    const/4 v1, 0x0

    new-instance v3, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd$LowStorageCheckAsyncTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd$LowStorageCheckAsyncTask;-><init>(Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd$1;)V

    invoke-virtual {v3, v1}, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd$LowStorageCheckAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
