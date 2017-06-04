.class public Lcom/sec/samsung/gallery/controller/PackagesBroadcastReceiverCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "PackagesBroadcastReceiverCmd.java"


# static fields
.field private static final EDITOR_360_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.mimage.gear360editor"

.field private static final TAG:Ljava/lang/String; = "PackagesReceiverCmd"

.field private static mIsReceiverRegistered:Z

.field private static final mPackageMonitorReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/samsung/gallery/controller/PackagesBroadcastReceiverCmd;->mIsReceiverRegistered:Z

    new-instance v0, Lcom/sec/samsung/gallery/controller/PackagesBroadcastReceiverCmd$1;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/controller/PackagesBroadcastReceiverCmd$1;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/controller/PackagesBroadcastReceiverCmd;->mPackageMonitorReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method private registerPackagesMonitor(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    sget-object v1, Lcom/sec/samsung/gallery/controller/PackagesBroadcastReceiverCmd;->mPackageMonitorReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
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

    aget-object v0, v1, v2

    check-cast v0, Landroid/content/Context;

    sget-boolean v2, Lcom/sec/samsung/gallery/controller/PackagesBroadcastReceiverCmd;->mIsReceiverRegistered:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/samsung/gallery/controller/PackagesBroadcastReceiverCmd;->mIsReceiverRegistered:Z

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/controller/PackagesBroadcastReceiverCmd;->registerPackagesMonitor(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
