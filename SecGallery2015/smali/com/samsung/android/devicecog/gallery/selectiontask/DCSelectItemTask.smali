.class public Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;
.super Landroid/os/AsyncTask;
.source "DCSelectItemTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;,
        Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field protected mJobType:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

.field protected mOnCancelRequested:Z

.field private mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

.field protected mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

.field mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    sget-object v0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->TYPE_NONE:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    iput-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mJobType:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    iput-object p1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-void
.end method

.method private checkExistItemFromContentType(Lcom/sec/android/gallery3d/data/MediaSet;Ljava/lang/String;)Z
    .locals 7

    if-nez p1, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    invoke-static {p2}, Lcom/samsung/android/devicecog/gallery/DCMediaItemContentTypeMap;->getMediaType(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    const/4 v3, 0x1

    goto :goto_0

    :pswitch_1
    invoke-static {p2}, Lcom/samsung/android/devicecog/gallery/DCMediaItemContentTypeMap;->getImageProperty(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getImageCount()I

    move-result v6

    invoke-direct {p0, v0, v1, v6}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->isCheckAvailableMediaProperty(JI)Z

    move-result v3

    goto :goto_0

    :pswitch_2
    invoke-static {p2}, Lcom/samsung/android/devicecog/gallery/DCMediaItemContentTypeMap;->getVideoProperty(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getVideoCount()I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->isCheckAvailableMediaProperty(JI)Z

    move-result v3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private enterDetailView()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->isUseOrdinal()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->startDetailViewWithOrdinal()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->startDetailView()V

    goto :goto_0
.end method

.method private hideProgressDialog()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->closeProgressDialogInstantly()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DCSelectItemTask"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isCheckAvailableMediaProperty(JI)Z
    .locals 5

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    if-lez p3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private selectItem()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->isUseOrdinal()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->selectItemWithOrdinal()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->selectItemNormal()V

    goto :goto_0
.end method

.method private showProgressDialog()V
    .locals 6

    new-instance v0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0a03ab

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$2;

    invoke-direct {v5, p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$2;-><init>(Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;)V

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;)Ljava/lang/Boolean;
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string/jumbo v2, "DCSelectItemTask"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    aget-object v1, p1, v4

    iput-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mJobType:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->handleSelectItem()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v1, "DCSelectItemTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selectItem Exception occured:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->doInBackground([Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected getDCHandler()Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/ActivityState;->getDCHandler()Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getGlComposeView()Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/ActivityState;->getGlComposeView()Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getMediaSetForCheckExistItem()Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    check-cast v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    goto :goto_0
.end method

.method protected handleSelectItem()V
    .locals 2

    sget-object v0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$3;->$SwitchMap$com$samsung$android$devicecog$gallery$selectiontask$DCSelectItemTask$JobType:[I

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mJobType:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->selectItem()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->selectAllWithParameter()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->enterDetailView()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected isAvailableSelectItem()Z
    .locals 7

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    if-nez v4, :cond_0

    :goto_0
    return v3

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v4}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v5, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v5}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->getMediaSetForCheckExistItem()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v4}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->checkExistItemFromContentType(Lcom/sec/android/gallery3d/data/MediaSet;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mJobType:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    sget-object v5, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->TYPE_ENTER_DETAIL_VIEW:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    if-ne v4, v5, :cond_4

    invoke-virtual {p0, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->sendDCResponseForEnterDetailViewIfContentTypeNotMatched(Ljava/lang/String;)V

    :cond_3
    :goto_1
    const-string/jumbo v4, "DCSelectItemTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "BixbyGallery : isAvailableSelectItem() : there are no contentType > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mJobType:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    sget-object v5, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->TYPE_SELECT_ITEM:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mJobType:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    sget-object v5, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->TYPE_SELECT_ALL_WITH_PARAMETER:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    if-ne v4, v5, :cond_3

    :cond_5
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->sendDCResponseForSelectContentTypeWithUpdateCheckState(ZLjava/lang/String;)V

    goto :goto_1

    :cond_6
    const/4 v3, 0x1

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 4

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mOnCancelRequested:Z

    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->hideProgressDialog()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$1;-><init>(Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->hideProgressDialog()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->showProgressDialog()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mOnCancelRequested:Z

    return-void
.end method

.method protected refreshCheckState()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->getGlComposeView()Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->getGlComposeView()Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshCheckState()V

    :cond_0
    return-void
.end method

.method public requestOnCancel()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->onCancelled()V

    return-void
.end method

.method protected selectAllWithParameter()V
    .locals 0

    return-void
.end method

.method protected selectItemNormal()V
    .locals 0

    return-void
.end method

.method protected selectItemWithOrdinal()V
    .locals 0

    return-void
.end method

.method protected sendDCResponseForEnterDetailViewIfContentTypeNotMatched(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "DCSelectItemTask"

    const-string/jumbo v1, "BixbyGallery mOnCancelRequested is true"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->getDCHandler()Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DCSelectItemTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no matched media type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->getDCHandler()Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->sendDCResponseForEnterDetailViewIfContentTypeNotMatched()V

    goto :goto_0
.end method

.method protected sendDCResponseForSelectContentTypeWithUpdateCheckState(ZLjava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "DCSelectItemTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BixbyGallery mOnCancelRequested is true, selected count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->refreshCheckState()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->getDCHandler()Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->getDCHandler()Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->sendDCResponseForSelectContentType(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public setSelectionListener(Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    return-void
.end method

.method public setSelectionParam(Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    return-void
.end method

.method protected startDetailView()V
    .locals 0

    return-void
.end method

.method protected startDetailViewWithOrdinal()V
    .locals 0

    return-void
.end method
