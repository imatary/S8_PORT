.class public Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "ExecuteOptionMenuCmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd$MenuGettable;
    }
.end annotation


# static fields
.field private static final MENU_NLG_PARAM_MAP:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;

.field private static final POST_SEND_RESPONSE_STATE_ID_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDcCmdExecutable:Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;

    invoke-direct {v0}, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;-><init>()V

    sput-object v0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;->MENU_NLG_PARAM_MAP:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;->POST_SEND_RESPONSE_STATE_ID_SET:Ljava/util/Set;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;->POST_SEND_RESPONSE_STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "DeletePopUp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;->POST_SEND_RESPONSE_STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "CopyToAlbum"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;->POST_SEND_RESPONSE_STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "MoveToAlbum"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;->POST_SEND_RESPONSE_STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "Remove"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;->POST_SEND_RESPONSE_STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "MoveToKNOX"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;->POST_SEND_RESPONSE_STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "AddToStory"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;->POST_SEND_RESPONSE_STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "Restore"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;->POST_SEND_RESPONSE_STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "RecycleBinPopUp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    new-instance v0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd$1;-><init>(Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;->handleOptionMenu(Ljava/lang/String;I)V

    return-void
.end method

.method private checkPostSendResponse(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;->POST_SEND_RESPONSE_STATE_ID_SET:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private convertStateId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v1, "CrossContactSinglePickFromSetAsContact"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "CrossContactsSinglePick"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "CrossContactSinglePickFromInvite"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "CrossContactsMultiPick"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "CrossContactSinglePickFromAddMember"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "CrossContactsMultiPick"

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "RemoveFromStoryForDetailView"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v0, "RemoveFromStory"

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "DOWNLOAD_CLOUD_CONTENT_IN_CLOUD_VIEW"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "DOWNLOAD_CLOUD_CONTENT_IN_PICTURES"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "DOWNLOAD_CLOUD_CONTENT_IN_ALBUM_THUMBNAILS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "DOWNLOAD_CLOUD_CONTENT_IN_DETAIL_VIEW"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "DOWNLOAD_SHARED_STORY_CONTENTS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const-string/jumbo v0, "Download"

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "DeletePopupForBurstViewer"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v0, "DeletePopUp"

    goto :goto_0

    :cond_6
    move-object v0, p1

    goto :goto_0
.end method

.method private getMenuId(Ljava/lang/String;)I
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->get(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "CrossShare"

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    iget v1, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    const v0, 0x7f1202c2

    :cond_0
    return v0
.end method

.method private handleOptionMenu(Ljava/lang/String;I)V
    .locals 10

    const/4 v7, 0x1

    iget-object v6, p0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd$MenuGettable;

    invoke-interface {v6}, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd$MenuGettable;->getMenu()Landroid/view/Menu;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;->getMenuId(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_2

    move v1, v7

    :goto_1
    if-eqz v1, :cond_3

    iget-object v6, p0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v2}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    invoke-direct {p0, p1}, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;->checkPostSendResponse(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;->mDcCmdExecutable:Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;

    invoke-interface {v6}, Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6, v1}, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;->makeRequestInfo(Ljava/lang/String;Ljava/lang/String;Z)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    const-string/jumbo v6, "ExecuteOptionMenuCmd"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleOptionMenu(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " Success"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;->convertStateId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v6, v7, v8, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const-string/jumbo v6, "ExecuteOptionMenuCmd"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handleOptionMenu(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " Fail, retry = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p2, :cond_4

    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    iput v7, v5, Landroid/os/Message;->what:I

    iput-object p1, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    add-int/lit8 p2, p2, -0x1

    iput p2, v5, Landroid/os/Message;->arg1:I

    iget-object v6, p0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;->mDcCmdExecutable:Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;

    invoke-interface {v6}, Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6, v1}, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;->makeRequestInfo(Ljava/lang/String;Ljava/lang/String;Z)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iget-object v6, p0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;->convertStateId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v6, v7, v8, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto/16 :goto_0
.end method

.method private makeRequestInfo(Ljava/lang/String;Ljava/lang/String;Z)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;
    .locals 4

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;->MENU_NLG_PARAM_MAP:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;

    invoke-static {p1, p2, p3}, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->getNlgId(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    :cond_0
    return-object v1
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 4

    const/4 v3, 0x1

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    check-cast v2, Landroid/app/Activity;

    iput-object v2, p0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;->mActivity:Landroid/app/Activity;

    aget-object v2, v0, v3

    check-cast v2, Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;

    iput-object v2, p0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;->mDcCmdExecutable:Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;

    const/4 v2, 0x2

    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const/16 v2, 0x14

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;->handleOptionMenu(Ljava/lang/String;I)V

    return-void
.end method
