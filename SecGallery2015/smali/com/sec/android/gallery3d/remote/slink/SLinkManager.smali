.class public Lcom/sec/android/gallery3d/remote/slink/SLinkManager;
.super Ljava/lang/Object;
.source "SLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;
    }
.end annotation


# static fields
.field private static final SLINK_DOWNLOAD_FOLDER:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SLinkManager"

.field private static volatile mInstance:Lcom/sec/android/gallery3d/remote/slink/SLinkManager;


# instance fields
.field private final mFileTransferUtil:Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;

.field private mMenuAction:I

.field private mSelectedItemIds:[J

.field private final mSignInUtils:Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;

.field private final mWakeLock:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->SLINK_DOWNLOAD_FOLDER:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->mSelectedItemIds:[J

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->mFileTransferUtil:Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->mSignInUtils:Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager;->createWakeLock(Ljava/lang/String;)Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->mWakeLock:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/remote/slink/SLinkManager;)Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->getSignedInStatus()Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/remote/slink/SLinkManager;)Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->getSamsungAccountStatus()Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/remote/slink/SLinkManager;)Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->mWakeLock:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;

    return-object v0
.end method

.method public static createDeviceChooserActivityIntent(Landroid/content/Context;I[J)Landroid/content/Intent;
    .locals 7

    const/4 v5, 0x0

    invoke-static {p2}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->createFromSlinkMediaStoreIds([J)Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;

    move-result-object v4

    invoke-static {p0}, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;

    move-result-object v1

    int-to-long v2, p1

    move v6, v5

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->createDeviceChooserActivityIntent(JLcom/samsung/android/sdk/samsunglink/SlinkMediaSet;ZZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static downloadFiles(Landroid/content/Context;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const-string/jumbo v6, "SLinkManager"

    const-string/jumbo v7, "ignore slink download. list is empty"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-array v4, v3, [J

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->getSlinkObjectId()J

    move-result-wide v6

    aput-wide v6, v4, v0

    move v0, v1

    goto :goto_1

    :cond_2
    invoke-static {p0, v4}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->downloadFiles(Landroid/content/Context;[J)V

    goto :goto_0
.end method

.method public static downloadFiles(Landroid/content/Context;[J)V
    .locals 12

    const-string/jumbo v7, "SLinkManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "download slink files : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    array-length v8, p1

    const/4 v7, 0x0

    move v4, v1

    :goto_0
    if-ge v7, v8, :cond_0

    aget-wide v2, p1, v7

    const-string/jumbo v9, "SLinkManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "downloadFiles : index : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v7, v7, 0x1

    move v4, v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->createFromSlinkMediaStoreIds([J)Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;

    move-result-object v6

    new-instance v5, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;

    invoke-direct {v5}, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;-><init>()V

    new-instance v0, Ljava/io/File;

    sget-object v7, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->SLINK_DOWNLOAD_FOLDER:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "SLinkManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "downloadFiles : SLINK_DOWNLOAD_FOLDER = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->SLINK_DOWNLOAD_FOLDER:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, v5, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;->targetDirectory:Ljava/io/File;

    invoke-static {p0}, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;

    move-result-object v7

    invoke-virtual {v7, v6, v5}, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->downloadFiles(Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;)V

    return-void
.end method

.method public static getInstance(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Lcom/sec/android/gallery3d/remote/slink/SLinkManager;
    .locals 2

    sget-object v0, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->mInstance:Lcom/sec/android/gallery3d/remote/slink/SLinkManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->mInstance:Lcom/sec/android/gallery3d/remote/slink/SLinkManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    sput-object v0, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->mInstance:Lcom/sec/android/gallery3d/remote/slink/SLinkManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->mInstance:Lcom/sec/android/gallery3d/remote/slink/SLinkManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getModalDownloadIntent(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;)Landroid/content/Intent;
    .locals 6

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->mFileTransferUtil:Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;

    const v1, 0x7f0a0134

    invoke-virtual {p1, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f0a0138

    invoke-virtual {p1, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v1, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->createModalDownloadActivityIntent(Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private getSamsungAccountStatus()Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;
    .locals 4

    sget-object v1, Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;->DEACTIVATED:Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->mSignInUtils:Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->samsungAccountExists()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;->ACTIVATED:Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SLinkManager"

    const-string/jumbo v3, "getSamsungAccountStatus : exception has occured"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;->ERROR:Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;

    const-string/jumbo v2, "SLinkManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSignedInStatus()Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;
    .locals 4

    sget-object v1, Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;->DEACTIVATED:Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->mSignInUtils:Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->isSignedIn()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;->ACTIVATED:Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SLinkManager"

    const-string/jumbo v3, "getSignedInStatus : exception has occured"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;->ERROR:Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;

    const-string/jumbo v2, "SLinkManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isModalDownloadNeeded(I)Z
    .locals 1

    const v0, 0x7f120290

    if-eq p0, v0, :cond_0

    const v0, 0x7f120299

    if-eq p0, v0, :cond_0

    const v0, 0x7f1202ac

    if-eq p0, v0, :cond_0

    const v0, 0x7f120296

    if-eq p0, v0, :cond_0

    const v0, 0x7f1202b9

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isModalDownloadNeeded(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->isModalDownloadNeeded(I)Z

    move-result v0

    return v0
.end method

.method public static isModalDownloadNeeded(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/view/MenuItem;)Z
    .locals 1

    instance-of v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->isModalDownloadNeeded(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSLinkIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils;->isSlinkViewIntent(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static isSlinkPath(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "/slink"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static releaseInstance()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->mInstance:Lcom/sec/android/gallery3d/remote/slink/SLinkManager;

    return-void
.end method

.method public static startChooser(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v3

    const/4 v1, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "SHOW_SHARE_DIALOG"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static transferFiles(Landroid/content/Context;[JJ)V
    .locals 4

    invoke-static {p1}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->createFromSlinkMediaStoreIds([J)Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;

    move-result-object v0

    invoke-static {p0}, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p2, p3, v2}, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->transferFiles(Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;JLcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;)V

    return-void
.end method


# virtual methods
.method public acquireWakeLockIfNeeded(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/sec/android/gallery3d/remote/slink/SLinkManager$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager$1;-><init>(Lcom/sec/android/gallery3d/remote/slink/SLinkManager;Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->isSlinkPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/Thread;

    const-string/jumbo v2, "SLinkAcquireWL"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method public enqueueMenuItemAfterModalDownload(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->mMenuAction:I

    return-void
.end method

.method public getModalDownloadIntent(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 11

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    new-array v1, v4, [J

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v8, v2, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;

    if-eqz v8, :cond_0

    move-object v7, v2

    check-cast v7, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->getSlinkObjectId()J

    move-result-wide v8

    aput-wide v8, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v5, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;

    invoke-direct {v5}, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "SLinkManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getModalDownloadIntent : dstAlbumPath = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v8, v5, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;->targetDirectory:Ljava/io/File;

    :cond_2
    iput-boolean p3, v5, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;->deleteSourceFilesWhenTransferIsComplete:Z

    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->createFromSlinkMediaStoreIds([J)Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;

    move-result-object v6

    invoke-direct {p0, p1, v6, v5}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->getModalDownloadIntent(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;)Landroid/content/Intent;

    move-result-object v8

    return-object v8
.end method

.method public getModalDownloadIntent(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v1, v5, [J

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v6, v2, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;

    if-eqz v6, :cond_0

    move-object v4, v2

    check-cast v4, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->getSlinkObjectId()J

    move-result-wide v6

    aput-wide v6, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->createFromSlinkMediaStoreIds([J)Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {p0, p1, v3, v5}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->getModalDownloadIntent(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;)Landroid/content/Intent;

    move-result-object v5

    return-object v5
.end method

.method public getSelectedItemIds()[J
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->mSelectedItemIds:[J

    return-object v0
.end method

.method public pollItemAfterModalDownload()I
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->mMenuAction:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->mMenuAction:I

    return v0
.end method

.method public refresh(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 4

    instance-of v1, p2, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SLinkManager"

    const-string/jumbo v2, "refresh"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p2

    check-cast v0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;

    invoke-static {p1}, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->getStorageId()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager;->requestRefresh(J)V

    :cond_0
    return-void
.end method

.method public setSelectedItemIds(Lcom/sec/android/gallery3d/ui/SelectionManager;)V
    .locals 8

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaItemArrayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v1, v4, [J

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v6, v2, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;

    if-eqz v6, :cond_0

    move-object v5, v2

    check-cast v5, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->getSlinkObjectId()J

    move-result-wide v6

    aput-wide v6, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->mSelectedItemIds:[J

    return-void
.end method

.method public uploadFiles(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;Landroid/net/Uri;ZZ)Z
    .locals 10

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p3, :cond_0

    const-string/jumbo v6, "SLinkManager"

    const-string/jumbo v7, "no mediastore"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v5

    :cond_0
    new-array v0, v6, [J

    invoke-virtual {p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    aput-wide v8, v0, v5

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v7

    invoke-static {p2}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/data/DataManager;->peekMediaSet(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    instance-of v7, v1, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;

    if-nez v7, :cond_1

    const-string/jumbo v6, "SLinkManager"

    const-string/jumbo v7, "not slink storage"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;

    invoke-direct {v2}, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;-><init>()V

    iput-boolean p4, v2, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;->skipIfDuplicate:Z

    iput-boolean p5, v2, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;->deleteSourceFilesWhenTransferIsComplete:Z

    const-string/jumbo v5, "SLinkManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "uploadFiles, skip if duplicate : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", delete : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->createFromMediaStoreIds([J)Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;

    invoke-static {p1}, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->getStorageId()I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v5, v3, v8, v9, v2}, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->uploadMediaStoreFiles(Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;JLcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;)V

    move v5, v6

    goto :goto_0
.end method
