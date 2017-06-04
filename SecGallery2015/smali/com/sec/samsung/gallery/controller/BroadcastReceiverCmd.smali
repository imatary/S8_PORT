.class public Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "BroadcastReceiverCmd.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;
    }
.end annotation


# static fields
.field private static final FeatureLowStorageMode:Z

.field private static final INTENT_MOBILE_PRINT:Ljava/lang/String; = "android.intent.action.MOBILE_PRINT_VIA_EASY_SHARE"

.field private static final INTENT_TALKBACK_TOGGLE:Ljava/lang/String; = "com.samsung.settings.action.talkback_toggled"

.field private static final TAG:Ljava/lang/String; = "BroadcastReceiverCmd"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

.field private final mMoreOptionsReceiver:Landroid/content/BroadcastReceiver;

.field private final mTalkbackReceiver:Landroid/content/BroadcastReceiver;

.field private mUsbDeviceReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseLowStorageMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->FeatureLowStorageMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    new-instance v0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$1;-><init>(Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->mMoreOptionsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$2;-><init>(Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->mUsbDeviceReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$3;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$3;-><init>(Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->mTalkbackReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;)Lorg/puremvc/java/multicore/patterns/facade/Facade;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    return-object v0
.end method

.method private onCreate()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->registerMediaScannerReceiver()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSecretBox:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->registerSecretModeReceiver()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->registerPrintReceiver()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->registerUsbDeviceReceiver()V

    :cond_1
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->SupportMultiSelectionSmartView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->registerSmartViewSlideShowReceiver()V

    :cond_2
    sget-boolean v0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->FeatureLowStorageMode:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->registeLowStorageModeReceiver()V

    :cond_3
    return-void
.end method

.method private onDestroy()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->unregisterMediaScannerReceiver()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSecretBox:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->unregisterSecretModeReceiver()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->unregisterPrintReceiver()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->unregisterUsbDeviceReceiver()V

    :cond_1
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->SupportMultiSelectionSmartView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->unregisterSmartViewSlideShowReceiver()V

    :cond_2
    sget-boolean v0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->FeatureLowStorageMode:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->unregisterLowStorageModeReceiver()V

    :cond_3
    return-void
.end method

.method private onPause()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->unregisterTalkBackReceiver()V

    return-void
.end method

.method private onResume()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->registerTalkbackReceiver()V

    return-void
.end method

.method private registeLowStorageModeReceiver()V
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->mContext:Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd$CmdType;->REGISTER_RECEIVER:Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd$CmdType;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "LOWSTORAGE_MODE_RECEIVER"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private registerMediaScannerReceiver()V
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->mContext:Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd$MediaScanner;->REGISTER:Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd$MediaScanner;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "MEDIASCANNER_RECEIVER"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private registerPrintReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.MOBILE_PRINT_VIA_EASY_SHARE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->mMoreOptionsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerSecretModeReceiver()V
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->mContext:Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/samsung/gallery/controller/SecretModeReceiverCmd$CmdType;->REGISTER_RECEIVER:Lcom/sec/samsung/gallery/controller/SecretModeReceiverCmd$CmdType;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "SECRET_MODE_RECEIVER"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private registerSmartViewSlideShowReceiver()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->mContext:Landroid/content/Context;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "SMART_VIEW_RECEIVER"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private registerTalkbackReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.settings.action.talkback_toggled"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->mTalkbackReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerUsbDeviceReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->mUsbDeviceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterLowStorageModeReceiver()V
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->mContext:Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd$CmdType;->UNREGISTER_RECEIVER:Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd$CmdType;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "LOWSTORAGE_MODE_RECEIVER"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private unregisterMediaScannerReceiver()V
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->mContext:Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd$MediaScanner;->UNREGISTER:Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd$MediaScanner;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "MEDIASCANNER_RECEIVER"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private unregisterPrintReceiver()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->mMoreOptionsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BroadcastReceiverCmd"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterSecretModeReceiver()V
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->mContext:Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/samsung/gallery/controller/SecretModeReceiverCmd$CmdType;->UNREGISTER_RECEIVER:Lcom/sec/samsung/gallery/controller/SecretModeReceiverCmd$CmdType;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "SECRET_MODE_RECEIVER"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private unregisterSmartViewSlideShowReceiver()V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->mContext:Landroid/content/Context;

    aput-object v2, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "SMART_VIEW_RECEIVER"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private unregisterTalkBackReceiver()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->mTalkbackReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BroadcastReceiverCmd"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterUsbDeviceReceiver()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->mUsbDeviceReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->mUsbDeviceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->mUsbDeviceReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BroadcastReceiverCmd"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 4

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Landroid/content/Context;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    aget-object v0, v1, v2

    check-cast v0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    sget-object v2, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$4;->$SwitchMap$com$sec$samsung$gallery$controller$BroadcastReceiverCmd$BroadcastReceiverCmdType:[I

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->onCreate()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->onResume()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->onPause()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->onDestroy()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
