.class Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;
.super Landroid/os/AsyncTask;
.source "SCloudMultiDownloadCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SCloudDownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mCloudItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

.field private mType:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mCloudItemList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->hideDialog()V

    return-void
.end method

.method private downloadByServerId(Lcom/sec/android/gallery3d/data/MediaItem;ZZZ)Z
    .locals 8

    const-wide/16 v6, 0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;->access$000()Ljava/lang/String;

    move-result-object v0

    instance-of v3, p1, Lcom/sec/android/gallery3d/data/UnionSCloudItem;

    if-eqz v3, :cond_0

    invoke-static {p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->getOriginalFilePath(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "SCloudMultiDownloadCmd"

    const-string/jumbo v4, "SCloud server path is null so change it to download path"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getServerId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0, p3, p4}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->downloadByServerId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "SCloudMultiDownloadCmd"

    const-string/jumbo v4, "Request scloud original download start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_3

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    if-eqz v3, :cond_2

    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-virtual {v3, v6, v7, v1}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->increaseProgress(JZ)V

    :cond_2
    const-string/jumbo v1, "SCloudMultiDownloadCmd"

    const-string/jumbo v3, "Request scloud original download end"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :cond_3
    :goto_0
    return v1

    :cond_4
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_3

    :cond_5
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    if-eqz v3, :cond_6

    if-eqz p2, :cond_6

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-virtual {v3, v6, v7, v1}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->increaseProgress(JZ)V

    :cond_6
    const-string/jumbo v1, "SCloudMultiDownloadCmd"

    const-string/jumbo v3, "Request scloud original download end"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_3

    :cond_7
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    if-eqz v3, :cond_8

    if-eqz p2, :cond_8

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-virtual {v3, v6, v7, v1}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->increaseProgress(JZ)V

    :cond_8
    const-string/jumbo v1, "SCloudMultiDownloadCmd"

    const-string/jumbo v3, "Request scloud original download end"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0
.end method

.method private getDownloadType()Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->getItemCount(I)I

    move-result v0

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->getItemCount(I)I

    move-result v1

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    sget-object v2, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;->DOWNLOAD_ITEMS:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    :goto_0
    return-object v2

    :cond_0
    if-lez v0, :cond_2

    if-le v0, v3, :cond_1

    sget-object v2, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;->DOWNLOAD_IMAGES:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;->DOWNLOAD_IMAGE:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    goto :goto_0

    :cond_2
    if-lez v1, :cond_4

    if-le v1, v3, :cond_3

    sget-object v2, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;->DOWNLOAD_VIDEOS:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;->DOWNLOAD_VIDEO:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;->DOWNLOAD_UNKNOWN:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    goto :goto_0
.end method

.method private getItemCount(I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mCloudItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mCloudItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v3

    if-ne v3, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private hideDialog()V
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->cancel(Z)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/samsung/android/scloud/cloudagent/CloudStore$API;->cancelDownloadOriginalFile(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->dismiss()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mAlertDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "EXIT_SELECTION_MODE"

    invoke-virtual {v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "SCloudMultiDownloadCmd"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "EXIT_SELECTION_MODE"

    invoke-virtual {v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "EXIT_SELECTION_MODE"

    invoke-virtual {v2, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;)V

    throw v1
.end method

.method private showDialog(Z)V
    .locals 7

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mCloudItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setTotalCount(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isCloudOnlyContentsIncluded()Z

    move-result v4

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {}, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;->access$100()Ljava/util/LinkedHashMap;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mType:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v5, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask$1;

    invoke-direct {v5, p0}, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask$1;-><init>(Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;)V

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->showProgressDialog(Ljava/lang/String;Ljava/lang/String;ZZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->show()V

    :goto_0
    return-void

    :cond_0
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {}, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;->access$100()Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mType:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f0a0080

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask$2;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask$2;-><init>(Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showToast()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mType:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mType:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    sget-object v1, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;->DOWNLOAD_UNKNOWN:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {}, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;->access$300()Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mType:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mCloudItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-object v5

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mCloudItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mCloudItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_2

    move v2, v3

    :goto_1
    invoke-direct {p0, v1, v2, v4, v3}, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->downloadByServerId(Lcom/sec/android/gallery3d/data/MediaItem;ZZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->hideDialog()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->showToast()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->getDownloadType()Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mType:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mType:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    sget-object v1, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;->DOWNLOAD_UNKNOWN:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mType:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    sget-object v1, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;->DOWNLOAD_ITEMS:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mType:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    sget-object v1, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;->DOWNLOAD_IMAGES:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->mType:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    sget-object v1, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;->DOWNLOAD_VIDEOS:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->showDialog(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
