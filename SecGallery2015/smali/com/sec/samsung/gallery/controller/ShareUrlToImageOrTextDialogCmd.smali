.class public Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "ShareUrlToImageOrTextDialogCmd.java"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->showShareImageDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->dismissDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->showShareWebLinkDialog()V

    return-void
.end method

.method private dismissDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private sendFailResponseForShareChooserPopup()V
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/ActivityState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "ShareChooserPopUp"

    const-string/jumbo v2, "Support"

    const-string/jumbo v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "CrossShare"

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    return-void
.end method

.method private showDialog()V
    .locals 6

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a03c7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0080

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a01fc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a04e0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd$4;

    invoke-direct {v5, p0}, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd$4;-><init>(Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;)V

    invoke-virtual {v4, v0, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd$3;

    invoke-direct {v5, p0}, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd$3;-><init>(Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd$2;

    invoke-direct {v5, p0}, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd$2;-><init>(Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;)V

    invoke-virtual {v4, v1, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd$1;

    invoke-direct {v5, p0}, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd$1;-><init>(Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->mAlertDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private showShareImageDialog()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->mContext:Landroid/content/Context;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "SHOW_SHARE_DIALOG"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private showShareWebLinkDialog()V
    .locals 7

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "android.intent.action.SEND"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "text/plain"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.extra.TEXT"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->mContext:Landroid/content/Context;

    const v6, 0x7f0a03c6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDCShareParam()Lcom/samsung/android/devicecog/gallery/DCShareParameter;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/DCShareParameter;->getDefaultPackageForShare()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isValidParam(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "extra_chooser_bixby_applist"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->resetDCShareParam()V

    :cond_1
    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, [Ljava/lang/Object;

    aget-object v4, v2, v5

    check-cast v4, Landroid/content/Context;

    iput-object v4, p0, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->mContext:Landroid/content/Context;

    aget-object v4, v2, v6

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object v4, p0, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const/4 v4, 0x2

    aget-object v4, v2, v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->dismissDialog()V

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDCShareParam()Lcom/samsung/android/devicecog/gallery/DCShareParameter;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/DCShareParameter;->getChoiceTypeForShare()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isValidParam(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/DCShareParameter;->getChoiceTypeForShare()Ljava/lang/String;

    move-result-object v0

    const/4 v4, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v4, :pswitch_data_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->sendFailResponseForShareChooserPopup()V

    :cond_1
    :goto_1
    return-void

    :sswitch_0
    const-string/jumbo v6, "weblink"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "image"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v6

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->showShareWebLinkDialog()V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->showShareImageDialog()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->showDialog()V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x5faa95b -> :sswitch_1
        0x48f6b14e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
