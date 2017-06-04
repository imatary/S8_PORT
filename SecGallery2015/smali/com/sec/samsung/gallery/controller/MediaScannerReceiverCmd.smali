.class public Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "MediaScannerReceiverCmd.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd$MediaScanner;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaScannerReceiverCmd"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMediaScannerReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    new-instance v0, Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd$1;-><init>(Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private registerMediaScannerReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterMediaScannerReceiver()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "MediaScannerReceiverCmd"

    const-string/jumbo v2, "catch IllegalArgumentException and ignore it"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    throw v1
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 3

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Landroid/content/Context;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    aget-object v0, v1, v2

    check-cast v0, Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd$MediaScanner;

    sget-object v2, Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd$MediaScanner;->REGISTER:Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd$MediaScanner;

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd;->registerMediaScannerReceiver()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd;->unregisterMediaScannerReceiver()V

    goto :goto_0
.end method
