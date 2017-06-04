.class public Lcom/sec/samsung/gallery/controller/HideAlbums;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "HideAlbums.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mHide:Z

.field private mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    const-string/jumbo v0, "HideAlbums"

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/HideAlbums;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/controller/HideAlbums;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/HideAlbums;->dismissDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/controller/HideAlbums;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/HideAlbums;->getCurrentSelectedItemList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/controller/HideAlbums;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/HideAlbums;->updateAlbumDB(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/controller/HideAlbums;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/HideAlbums;->mHide:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/controller/HideAlbums;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/HideAlbums;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createNlgRequestInfo()Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;
    .locals 4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/HideAlbums;->getNumberOfItemsToHide()I

    move-result v0

    new-instance v1, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuHideShowAlbum;

    invoke-direct {v1, v0}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuHideShowAlbum;-><init>(I)V

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/controller/HideAlbums;->mHide:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "AlbumHidePopUp"

    :goto_0
    invoke-interface {v1, v3}, Lcom/samsung/android/devicecog/gallery/nlgparam/NlgRequestInfoParamAppendable;->addRequestInfoParam(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    return-object v2

    :cond_0
    const-string/jumbo v3, "AlbumShowPopUp"

    goto :goto_0
.end method

.method private dismissDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/HideAlbums;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/HideAlbums;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private getCurrentSelectedItemList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/HideAlbums;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v1

    return-object v1
.end method

.method private getNumberOfItemsToHide()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/HideAlbums;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v0

    return v0
.end method

.method private getPopupText(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/HideAlbums;->getNumberOfItemsToHide()I

    move-result v0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/controller/HideAlbums;->mHide:Z

    if-eqz v1, :cond_1

    if-ne v0, v2, :cond_0

    const v1, 0x7f0a02f6

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x7f0a0287

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    const v1, 0x7f0a02f7

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const v1, 0x7f0a0288

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private sendResponseDCState()V
    .locals 4

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/HideAlbums;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/HideAlbums;->mHide:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "AlbumHidePopUp"

    :goto_0
    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/HideAlbums;->createNlgRequestInfo()Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "AlbumShowPopUp"

    goto :goto_0
.end method

.method private showDialog(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/HideAlbums;->dismissDialog()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/HideAlbums;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/sec/samsung/gallery/controller/HideAlbums$2;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/controller/HideAlbums$2;-><init>(Lcom/sec/samsung/gallery/controller/HideAlbums;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/sec/samsung/gallery/controller/HideAlbums$1;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/controller/HideAlbums$1;-><init>(Lcom/sec/samsung/gallery/controller/HideAlbums;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/HideAlbums;->mDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/HideAlbums;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/HideAlbums;->sendResponseDCState()V

    return-void
.end method

.method private updateAlbumDB(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;)V"
        }
    .end annotation

    const/4 v13, 0x1

    const/4 v12, -0x1

    const/4 v11, 0x0

    const-string/jumbo v8, "external"

    invoke-static {v8}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/HideAlbums;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/controller/HideAlbums;->mHide:Z

    if-eqz v8, :cond_1

    sget-object v8, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    const-string/jumbo v9, "hideAlbum"

    const-string/jumbo v10, "true"

    invoke-virtual {v8, v9, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v8, "is_hide"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v8, "is_hide"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    const/4 v5, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_2

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v8, v6, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "bucket_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v1, v0, v7, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v2, v8, v3, v7, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    sget-object v8, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    const-string/jumbo v9, "showAlbum"

    const-string/jumbo v10, "true"

    invoke-virtual {v8, v9, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v8, "is_hide"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v8, "is_hide"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/HideAlbums;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "content://force_reload"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v11, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 4

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    check-cast v3, Landroid/content/Context;

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/HideAlbums;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/controller/HideAlbums;->mHide:Z

    const/4 v3, 0x3

    aget-object v3, v0, v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/HideAlbums;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/HideAlbums;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/HideAlbums;->dismissDialog()V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/HideAlbums;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/controller/HideAlbums;->getPopupText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/controller/HideAlbums;->showDialog(Ljava/lang/String;)V

    goto :goto_0
.end method
