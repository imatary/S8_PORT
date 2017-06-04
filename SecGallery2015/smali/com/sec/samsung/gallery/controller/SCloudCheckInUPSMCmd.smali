.class public Lcom/sec/samsung/gallery/controller/SCloudCheckInUPSMCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "SCloudCheckInUPSMCmd.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/SCloudCheckInUPSMCmd$SCloudMediaQueryTask;
    }
.end annotation


# static fields
.field private static final CMH_BASE_URI:Landroid/net/Uri;

.field private static final COUNT_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SCloudCheckInUPSMCmd"

.field private static final WHERE:Ljava/lang/String; = "is_cloud = 2 AND ( file_status = 0 OR file_status = 4)"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "count(*)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/controller/SCloudCheckInUPSMCmd;->COUNT_PROJECTION:[Ljava/lang/String;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/samsung/gallery/controller/SCloudCheckInUPSMCmd;->CMH_BASE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/controller/SCloudCheckInUPSMCmd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudCheckInUPSMCmd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/controller/SCloudCheckInUPSMCmd;->CMH_BASE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/controller/SCloudCheckInUPSMCmd;->COUNT_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 4

    const/4 v3, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    aget-object v2, v0, v3

    check-cast v2, Landroid/content/Context;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/SCloudCheckInUPSMCmd;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/sec/samsung/gallery/controller/SCloudCheckInUPSMCmd$SCloudMediaQueryTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/samsung/gallery/controller/SCloudCheckInUPSMCmd$SCloudMediaQueryTask;-><init>(Lcom/sec/samsung/gallery/controller/SCloudCheckInUPSMCmd;Lcom/sec/samsung/gallery/controller/SCloudCheckInUPSMCmd$1;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/controller/SCloudCheckInUPSMCmd$SCloudMediaQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
