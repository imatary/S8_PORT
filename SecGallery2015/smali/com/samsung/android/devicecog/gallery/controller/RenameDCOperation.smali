.class public Lcom/samsung/android/devicecog/gallery/controller/RenameDCOperation;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "RenameDCOperation.java"


# instance fields
.field private mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method private handleRenamePopUp(Ljava/lang/String;Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/controller/RenameDCOperation;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v4}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;-><init>(Landroid/content/Context;)V

    const-string/jumbo v4, "StoryDetailView"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "StoryListView"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->setEvent(Z)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    invoke-virtual {v0, p2, v5, p1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showRenameDialogForDCHandler(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCRenamePopupNlgIdMap$NlgType;->FAIL_NAME_IS_EMPTY:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCRenamePopupNlgIdMap$NlgType;

    invoke-static {p3, v4}, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCRenamePopupNlgIdMap;->getNlgId(Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/nlgidmap/DCRenamePopupNlgIdMap$NlgType;)I

    move-result v2

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/controller/RenameDCOperation;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v2, v5}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    if-eqz v1, :cond_3

    const-string/jumbo v4, "AlbumName"

    invoke-virtual {v3, v4, p1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/controller/RenameDCOperation;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "RenamePopUp"

    sget-object v6, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v4, v5, v6, v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    return-void

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/controller/RenameDCOperation;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4, p2, p1}, Lcom/sec/samsung/gallery/util/FileUtil;->isExist(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0, p2, v5, p1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showRenameDialogForDCHandler(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCRenamePopupNlgIdMap$NlgType;->FAIL_NAME_IS_DUPLICATE:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCRenamePopupNlgIdMap$NlgType;

    invoke-static {p3, v4}, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCRenamePopupNlgIdMap;->getNlgId(Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/nlgidmap/DCRenamePopupNlgIdMap$NlgType;)I

    move-result v2

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const-string/jumbo v4, "AlbumsListView"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0, p2, v5, p1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->renameAlbumNameWithoutDialogForDCHandler(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-object v4, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCRenamePopupNlgIdMap$NlgType;->SUCCEED:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCRenamePopupNlgIdMap$NlgType;

    invoke-static {p3, v4}, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCRenamePopupNlgIdMap;->getNlgId(Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/nlgidmap/DCRenamePopupNlgIdMap$NlgType;)I

    move-result v2

    goto :goto_0

    :cond_6
    invoke-virtual {v0, p2, p1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->renameChannelNameWithoutDialogForDCHandler(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 5

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v0, v2, v4

    check-cast v0, Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v1, v2, v4

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaObject;

    const/4 v4, 0x2

    aget-object v4, v2, v4

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput-object v4, p0, Lcom/samsung/android/devicecog/gallery/controller/RenameDCOperation;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v4, 0x3

    aget-object v3, v2, v4

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3}, Lcom/samsung/android/devicecog/gallery/controller/RenameDCOperation;->handleRenamePopUp(Ljava/lang/String;Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;)V

    return-void
.end method
