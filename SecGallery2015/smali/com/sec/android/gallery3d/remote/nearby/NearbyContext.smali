.class public Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;
.super Ljava/lang/Object;
.source "NearbyContext.java"


# static fields
.field public static final KEY_DMRUDN:Ljava/lang/String; = "DMRUDN"


# instance fields
.field private final mClient:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

.field private final mContext:Landroid/content/Context;

.field private mIsActive:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->mClient:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;)Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->mClient:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->mIsActive:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getNearbyClient()Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->mClient:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    return-object v0
.end method

.method public getProviderDeviceCount()I
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->mClient:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    sget-object v2, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_PROVIDER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->getCheckedDeviceList(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0
.end method

.method public notifyDirty()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "nearby://nearby"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public notifyDirty(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nearby://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->mIsActive:Z

    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->mIsActive:Z

    return-void
.end method

.method public showToastForScanningPlayerDevices()V
    .locals 6

    const-wide/16 v2, 0xbb8

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->mContext:Landroid/content/Context;

    const v1, 0x7f0a038c

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    new-instance v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext$1;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext$1;-><init>(Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;JJ)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext$1;->start()Landroid/os/CountDownTimer;

    return-void
.end method
