.class public Lcom/sec/android/gallery3d/data/MtpDevice;
.super Lcom/sec/android/gallery3d/data/MediaSet;
.source "MtpDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/MtpDevice$MtpDeviceCoverItem;
    }
.end annotation


# static fields
.field private static final FORCE_RELOAD_TRY_COUNT:I = 0xa

.field private static final MSG_FORCE_RELOAD_ITEMS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MtpDevice"


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private final mDeviceId:I

.field private final mDeviceName:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private final mItemPath:Lcom/sec/android/gallery3d/data/Path;

.field private mJpegChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/mtp/MtpObjectInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMtpContext:Lcom/sec/android/gallery3d/data/MtpContext;

.field private mMtpDeviceCoverItem:Lcom/sec/android/gallery3d/data/MtpDevice$MtpDeviceCoverItem;

.field private final mName:Ljava/lang/String;

.field private final mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

.field private mReloadTryCount:I

.field private final mTempJpegChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/mtp/MtpObjectInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;ILcom/sec/android/gallery3d/data/MtpContext;)V
    .locals 6

    invoke-static {p4, p3}, Lcom/sec/android/gallery3d/data/MtpDeviceSet;->getDeviceName(Lcom/sec/android/gallery3d/data/MtpContext;I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/data/MtpDevice;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;ILjava/lang/String;Lcom/sec/android/gallery3d/data/MtpContext;)V

    return-void
.end method

.method private constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;ILjava/lang/String;Lcom/sec/android/gallery3d/data/MtpContext;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/gallery3d/data/MtpDevice;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mReloadTryCount:I

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iput p3, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mDeviceId:I

    invoke-static {p3}, Landroid/hardware/usb/UsbDevice;->getDeviceName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mDeviceName:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mMtpContext:Lcom/sec/android/gallery3d/data/MtpContext;

    iput-object p4, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mName:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    const-string/jumbo v1, "mtp://mtp"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/mtp/item/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mJpegChildren:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mTempJpegChildren:Ljava/util/List;

    new-instance v0, Lcom/sec/android/gallery3d/data/MtpDevice$1;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/data/MtpDevice$1;-><init>(Lcom/sec/android/gallery3d/data/MtpDevice;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, "MtpDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MtpDevice start mDeviceName["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] mName["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/data/MtpDevice;)Lcom/sec/android/gallery3d/data/MtpContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mMtpContext:Lcom/sec/android/gallery3d/data/MtpContext;

    return-object v0
.end method

.method static synthetic access$108(Lcom/sec/android/gallery3d/data/MtpDevice;)I
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mReloadTryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mReloadTryCount:I

    return v0
.end method

.method private collectJpegChildren(IILjava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/mtp/MtpObjectInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/gallery3d/data/MtpDevice;->queryChildren(IILjava/util/ArrayList;Ljava/util/ArrayList;)V

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->notifyDirty()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/mtp/MtpObjectInfo;

    invoke-virtual {v2}, Landroid/mtp/MtpObjectInfo;->getObjectHandle()I

    move-result v4

    invoke-direct {p0, p1, v4, p3}, Lcom/sec/android/gallery3d/data/MtpDevice;->collectJpegChildren(IILjava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getObjectInfo(Lcom/sec/android/gallery3d/data/MtpContext;II)Landroid/mtp/MtpObjectInfo;
    .locals 2

    invoke-static {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MtpContext;->getMtpClient()Lcom/sec/android/gallery3d/data/MtpClient;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/sec/android/gallery3d/data/MtpClient;->getObjectInfo(Ljava/lang/String;I)Landroid/mtp/MtpObjectInfo;

    move-result-object v1

    return-object v1
.end method

.method private loadItems()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/mtp/MtpObjectInfo;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v3, "MtpDevice"

    const-string/jumbo v4, "loadItems start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mMtpContext:Lcom/sec/android/gallery3d/data/MtpContext;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MtpContext;->getMtpClient()Lcom/sec/android/gallery3d/data/MtpClient;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/data/MtpClient;->getStorageList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget v3, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mReloadTryCount:I

    const/16 v4, 0xa

    if-le v3, v4, :cond_1

    const-string/jumbo v3, "MtpDevice"

    const-string/jumbo v4, "loadItems end. Storage list is null (max exceeded)"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string/jumbo v3, "MtpDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loadItems end. Storage list is null (retry : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mReloadTryCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iput v5, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mReloadTryCount:I

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpStorageInfo;

    invoke-virtual {v0}, Landroid/mtp/MtpStorageInfo;->getStorageId()I

    move-result v4

    invoke-direct {p0, v4, v5, v1}, Lcom/sec/android/gallery3d/data/MtpDevice;->collectJpegChildren(IILjava/util/ArrayList;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "MtpDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loadItems end.  result size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private queryChildren(IILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/mtp/MtpObjectInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/mtp/MtpObjectInfo;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v3, "MtpDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "queryChildren start storageId["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mMtpContext:Lcom/sec/android/gallery3d/data/MtpContext;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MtpContext;->getMtpClient()Lcom/sec/android/gallery3d/data/MtpClient;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v3, v4, p1, p2}, Lcom/sec/android/gallery3d/data/MtpClient;->getObjectList(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v3, "MtpDevice"

    const-string/jumbo v4, "queryChildren end. Children is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/mtp/MtpObjectInfo;

    invoke-virtual {v2}, Landroid/mtp/MtpObjectInfo;->getFormat()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const-string/jumbo v4, "MtpDevice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "other type: name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/mtp/MtpObjectInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", format = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_0
    const-string/jumbo v4, "MtpDevice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "add image: name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/mtp/MtpObjectInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", format = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", parent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/mtp/MtpObjectInfo;->getParent()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "MtpDevice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "add child dir: name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/mtp/MtpObjectInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", parent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/mtp/MtpObjectInfo;->getParent()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1
    const-string/jumbo v3, "MtpDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "queryChildren end storageId["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3001 -> :sswitch_1
        0x3801 -> :sswitch_0
        0x3804 -> :sswitch_0
        0x3807 -> :sswitch_0
        0x3808 -> :sswitch_0
        0x380b -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getCoverMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 8

    const-wide/16 v6, 0x1

    const-string/jumbo v1, "MtpDevice"

    const-string/jumbo v2, "getCoverMediaItem :: MTP device"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/sec/android/gallery3d/data/MediaSet;->getCoverMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "MtpDevice"

    const-string/jumbo v2, "getCoverMediaItem is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mMtpDeviceCoverItem:Lcom/sec/android/gallery3d/data/MtpDevice$MtpDeviceCoverItem;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/gallery3d/data/MtpDevice$MtpDeviceCoverItem;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MtpDevice;->getDataVersion()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-direct {v1, v2, v4, v5}, Lcom/sec/android/gallery3d/data/MtpDevice$MtpDeviceCoverItem;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mMtpDeviceCoverItem:Lcom/sec/android/gallery3d/data/MtpDevice$MtpDeviceCoverItem;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mMtpDeviceCoverItem:Lcom/sec/android/gallery3d/data/MtpDevice$MtpDeviceCoverItem;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MtpDevice;->getDataVersion()J

    move-result-wide v2

    sub-long/2addr v2, v6

    iput-wide v2, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mCoverVersion:J

    const-string/jumbo v1, "MtpDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCoverMediaItem :: MTP device getDataVersion"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MtpDevice;->getDataVersion()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "MtpDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCoverMediaItem :: MTP device mCoverVersion"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mCoverVersion:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mMtpDeviceCoverItem:Lcom/sec/android/gallery3d/data/MtpDevice$MtpDeviceCoverItem;

    goto :goto_0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    const-string/jumbo v2, "MtpDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getMediaItem start["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "] count["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v6

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getSortByType()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mJpegChildren:Ljava/util/List;

    :goto_0
    add-int v2, p1, p2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v8, p1

    :goto_1
    if-ge v8, v7, :cond_3

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/mtp/MtpObjectInfo;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v4}, Landroid/mtp/MtpObjectInfo;->getObjectHandle()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    const-string/jumbo v2, "MtpDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "childPath : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v1}, Lcom/sec/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MtpImage;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MtpImage;->isBroken()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "MtpDevice"

    const-string/jumbo v3, "Create new MtpImage"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/gallery3d/data/MtpImage;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget v3, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mDeviceId:I

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mMtpContext:Lcom/sec/android/gallery3d/data/MtpContext;

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/data/MtpImage;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;ILandroid/mtp/MtpObjectInfo;Lcom/sec/android/gallery3d/data/MtpContext;)V

    :cond_1
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    iget-object v9, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mTempJpegChildren:Ljava/util/List;

    goto :goto_0

    :cond_3
    return-object v10
.end method

.method public getMediaItemCount()I
    .locals 3

    const-string/jumbo v0, "MtpDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "item count["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mJpegChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mJpegChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMtpContext()Lcom/sec/android/gallery3d/data/MtpContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mMtpContext:Lcom/sec/android/gallery3d/data/MtpContext;

    return-object v0
.end method

.method public getMtpDeviceId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mDeviceId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOperations()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public reload()J
    .locals 4

    const-string/jumbo v2, "MtpDevice"

    const-string/jumbo v3, "reload start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "MtpDevice"

    const-string/jumbo v3, "dirty"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/gallery3d/data/MtpDevice;->nextVersionNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mDataVersion:J

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/MtpDevice;->loadItems()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mJpegChildren:Ljava/util/List;

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mJpegChildren:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mTempJpegChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mTempJpegChildren:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/MtpDevice;->mDataVersion:J

    return-wide v2
.end method
