.class abstract Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "ShowAppChoiceDialogCmdTemplate.java"

# interfaces
.implements Ljava/util/Observer;
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# static fields
.field private static final MSG_DIALOG_CANCEL_SELECTED:I = 0x1

.field private static final MSG_DIALOG_SHOW_REFRESH:I = 0x2

.field private static final MSG_DIALOG_SHOW_SELECTED:I


# instance fields
.field private mAppChoiceDialog:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

.field mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIsAirButton:Z

.field mMimeType:Ljava/lang/String;

.field mTitleOfDialog:I

.field mUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    iput v1, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->mTitleOfDialog:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->mAppChoiceDialog:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->mIsAirButton:Z

    new-instance v0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$1;-><init>(Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->handleMessageOnUiThread(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;)Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->mAppChoiceDialog:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->mAppChoiceDialog:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->showAppChoiceDialog(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->mIsAirButton:Z

    return v0
.end method

.method private handleMessageOnUiThread(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$2;-><init>(Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showAppChoiceDialog(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x1

    iget v2, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->mTitleOfDialog:I

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->mAppChoiceDialog:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->mAppChoiceDialog:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "true"

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string/jumbo v4, "isShareListAllowed"

    invoke-static {v2, v3, v4, v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_START_SELECTED_APP:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    new-instance v2, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1, v0, v5}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/sec/samsung/gallery/core/Event;Z)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->mAppChoiceDialog:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->mAppChoiceDialog:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    iget v3, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->mTitleOfDialog:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->setTitle(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->mAppChoiceDialog:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-virtual {v2, p0}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->addObserver(Ljava/util/Observer;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->mAppChoiceDialog:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    new-instance v3, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$3;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$3;-><init>(Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;)V

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->setOnDialogOrientationListener(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$OnOrientationChangedListener;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->mAppChoiceDialog:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    new-instance v3, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$4;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$4;-><init>(Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;)V

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->setPrivateModeChangeListener(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$PrivateModeChangeListener;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->mAppChoiceDialog:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    new-instance v3, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$5;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$5;-><init>(Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;)V

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->setOnDialogDismissListener(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$OnDialogDismissListener;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->mAppChoiceDialog:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    new-instance v3, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$6;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$6;-><init>(Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;)V

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->setOnResumeListener(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$OnResumeListener;)V

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->mAppChoiceDialog:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->startSingleShareApp()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->mAppChoiceDialog:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->mAppChoiceDialog:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->showDialog()V

    goto :goto_0
.end method


# virtual methods
.method protected abstract createAppList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 7

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    aget-object v3, v0, v6

    check-cast v3, Landroid/content/Context;

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->mContext:Landroid/content/Context;

    aget-object v3, v0, v5

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->mIsAirButton:Z

    new-instance v1, Lcom/sec/samsung/gallery/controller/ShareAppUtil;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/sec/samsung/gallery/controller/ShareAppUtil;-><init>(Landroid/content/Context;)V

    array-length v3, v0

    if-le v3, v4, :cond_0

    aget-object v3, v0, v4

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->mUriList:Ljava/util/ArrayList;

    :goto_0
    if-nez v2, :cond_1

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->handleMessageOnUiThread(I)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->mUriList:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->getMimeType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->mMimeType:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->mUriList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    invoke-virtual {v1}, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->existImageNotCached()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->mContext:Landroid/content/Context;

    const v4, 0x7f0a043c

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->mContext:Landroid/content/Context;

    const v4, 0x7f0a02e2

    invoke-static {v3, v4, v5}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;II)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->existImageNotCached()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->mContext:Landroid/content/Context;

    const v4, 0x7f0a046d

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :cond_5
    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->handleMessageOnUiThread(I)V

    goto :goto_1
.end method

.method public abstract update(Ljava/util/Observable;Ljava/lang/Object;)V
.end method
