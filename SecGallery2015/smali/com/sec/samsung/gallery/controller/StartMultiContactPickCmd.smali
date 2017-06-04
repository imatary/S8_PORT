.class public Lcom/sec/samsung/gallery/controller/StartMultiContactPickCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "StartMultiContactPickCmd.java"


# static fields
.field private static final REQUEST_MULTI_CONTACT_PICK:I = 0xe00

.field private static final REQUEST_SELECT_CONTACT:I = 0xe01

.field private static final TAG:Ljava/lang/String; = "StartMultiContactPckCmd"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/controller/StartMultiContactPickCmd;Landroid/content/Context;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/controller/StartMultiContactPickCmd;->startMultipleContactPickActivity(Landroid/content/Context;IZ)V

    return-void
.end method

.method private showNetworkErrorDialog(Landroid/content/Context;)V
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a02f4

    new-instance v4, Lcom/sec/samsung/gallery/controller/StartMultiContactPickCmd$2;

    invoke-direct {v4, p0}, Lcom/sec/samsung/gallery/controller/StartMultiContactPickCmd$2;-><init>(Lcom/sec/samsung/gallery/controller/StartMultiContactPickCmd;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private startContactPickActivity(Landroid/content/Context;)V
    .locals 5

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.PICK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "vnd.android.cursor.dir/contact"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setNestingCallerAppName(Landroid/content/Intent;)V

    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v3, v0

    const/16 v4, 0xe01

    invoke-virtual {v3, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const v3, 0x7f0a0029

    invoke-static {p1, v3}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    const-string/jumbo v3, "StartMultiContactPckCmd"

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startMultipleContactPickActivity(Landroid/content/Context;IZ)V
    .locals 7

    const/4 v6, 0x1

    const-string/jumbo v4, "is_available_web"

    invoke-static {p1, v4, v6}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "intent.action.INTERACTION_TOPMENU"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_1

    const-string/jumbo v4, "additional"

    const-string/jumbo v5, "remote-share-phone-multi"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string/jumbo v4, "has_result"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v4, "maxRecipientCount"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p3, :cond_0

    const-string/jumbo v4, "excludeProfile"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    invoke-static {v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setNestingCallerAppName(Landroid/content/Intent;)V

    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v4, v0

    const/16 v5, 0xe00

    invoke-virtual {v4, v2, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    const-string/jumbo v4, "additional"

    const-string/jumbo v5, "event-sharing-phone-multi"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception v1

    const v4, 0x7f0a0029

    invoke-static {p1, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    const-string/jumbo v4, "StartMultiContactPckCmd"

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 15

    invoke-interface/range {p1 .. p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v13, v1

    check-cast v13, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v3, v13, v1

    check-cast v3, Landroid/content/Context;

    const/4 v1, 0x1

    aget-object v1, v13, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v1, 0x2

    aget-object v1, v13, v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v1, 0x3

    aget-object v12, v13, v1

    check-cast v12, Landroid/content/DialogInterface$OnCancelListener;

    new-instance v2, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-direct {v2}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;-><init>()V

    invoke-interface/range {p1 .. p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "START_MULTI_CONTACT_PICK"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v3

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v14

    instance-of v1, v14, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    if-nez v1, :cond_0

    instance-of v1, v14, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    if-eqz v1, :cond_3

    :cond_0
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/controller/StartMultiContactPickCmd;->showNetworkErrorDialog(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/sec/samsung/gallery/controller/StartMultiContactPickCmd$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/controller/StartMultiContactPickCmd$1;-><init>(Lcom/sec/samsung/gallery/controller/StartMultiContactPickCmd;Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;Landroid/content/Context;IZ)V

    invoke-static {v3, v0}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->syncProfileContacts(Landroid/content/Context;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ContactSyncListener;)V

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v8, 0x0

    const v1, 0x7f0a0340

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v2

    move-object v7, v3

    invoke-virtual/range {v6 .. v12}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLandroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v3, v4, v5}, Lcom/sec/samsung/gallery/controller/StartMultiContactPickCmd;->startMultipleContactPickActivity(Landroid/content/Context;IZ)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/controller/StartMultiContactPickCmd;->startContactPickActivity(Landroid/content/Context;)V

    goto :goto_0
.end method
