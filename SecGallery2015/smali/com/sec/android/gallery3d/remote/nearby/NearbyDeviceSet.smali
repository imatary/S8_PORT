.class public Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;
.super Lcom/sec/android/gallery3d/remote/RemoteMediaSet;
.source "NearbyDeviceSet.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/ContentListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "NearbyDeviceSet"


# instance fields
.field private isScanItems:Z

.field private final mDeviceSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mNearbyContext:Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;

.field private final mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/remote/RemoteMediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;->mDeviceSet:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    const-string/jumbo v1, "nearby://nearby"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    iput-object p3, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;->mNearbyContext:Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;

    invoke-interface {p2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;->mName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;)Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;->mNearbyContext:Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;

    return-object v0
.end method

.method private loadDevices()V
    .locals 12

    const/4 v11, 0x0

    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNearbyDMR:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v8, "NearbyDeviceSet"

    const-string/jumbo v9, "loadDevices()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v8}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v1

    iget-object v8, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;->mDeviceSet:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    iget-object v8, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;->mNearbyContext:Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->getNearbyClient()Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_PROVIDER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->getCheckedDeviceList(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string/jumbo v8, "NearbyDeviceSet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "device size : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/allshare/Device;

    iget-object v8, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v2}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    if-nez v7, :cond_2

    new-instance v7, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    iget-object v8, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v7, v0, v8, v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/samsung/android/allshare/Device;)V

    invoke-virtual {v7, p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->addContentListener(Lcom/sec/android/gallery3d/data/ContentListener;)V

    :goto_2
    const-string/jumbo v8, "NearbyDeviceSet"

    const-string/jumbo v9, "add Device : "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;->mDeviceSet:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v7, v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->update(Lcom/samsung/android/allshare/Device;)V

    goto :goto_2

    :cond_3
    :try_start_0
    iget-object v8, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;->mDeviceSet:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v4, :cond_5

    iget-object v8, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;->mDeviceSet:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->reload()J

    iget-boolean v8, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;->isScanItems:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;->mDeviceSet:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->refreshItem()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    iput-boolean v11, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;->isScanItems:Z

    goto/16 :goto_0

    :catch_0
    move-exception v5

    :try_start_1
    const-string/jumbo v8, "NearbyDeviceSet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "IndexOutOfBoundsException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v11, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;->isScanItems:Z

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    iput-boolean v11, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;->isScanItems:Z

    throw v8
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;->mDeviceSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;->mDeviceSet:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;->mDeviceSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onContentDirty()V
    .locals 2

    invoke-static {}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;->mDataVersion:J

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;->notifyContentChanged()V

    return-void
.end method

.method public reload()J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;->mDataVersion:J

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;->loadDevices()V

    :cond_0
    iget-wide v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;->mDataVersion:J

    return-wide v0
.end method

.method public showToastForScanningProviderDevices(Landroid/app/Activity;)V
    .locals 7

    const-wide/16 v2, 0xbb8

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;->mDeviceSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->fakeChange()V

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a038c

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    new-instance v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet$1;

    move-object v1, p0

    move-wide v4, v2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet$1;-><init>(Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;JJLandroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet$1;->start()Landroid/os/CountDownTimer;

    return-void
.end method
