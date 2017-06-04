.class public Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "ShowDisclaimerDialogCmd.java"


# static fields
.field private static final ACTION_SET_DISCLAIMER:Ljava/lang/String; = "com.samsung.android.visioncloudagent.action.IC_SET_DISCLAIMER"

.field private static final ACTION_SET_DISCLAIMER_EXTRA:Ljava/lang/String; = "setting"

.field private static final DISCLAIMER_DISABLE:I = 0x0

.field private static final DISCLAIMER_ENABLE:I = 0x1

.field private static final IMAGECLASSIFICATION_SERVICE:Ljava/lang/String; = "com.samsung.android.visioncloudagent.ImageClassification.ImageClassificationService"

.field private static final VISIONCLOUDAGENT_PACKAGE:Ljava/lang/String; = "com.samsung.android.visioncloudagent"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;->sendIntent(I)V

    return-void
.end method

.method private createDialog()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0121

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0120

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;->initButtons(Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;->mDialog:Landroid/app/Dialog;

    new-instance v2, Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd$1;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd$1;-><init>(Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method private initButtons(Landroid/app/AlertDialog$Builder;)V
    .locals 2

    const v0, 0x7f0a0035

    new-instance v1, Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd$2;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd$2;-><init>(Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0a011e

    new-instance v1, Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd$3;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd$3;-><init>(Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method private sendIntent(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.visioncloudagent.action.IC_SET_DISCLAIMER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.visioncloudagent"

    const-string/jumbo v2, "com.samsung.android.visioncloudagent.ImageClassification.ImageClassificationService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "setting"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 6

    const/4 v5, 0x1

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    check-cast v3, Landroid/content/Context;

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;->mContext:Landroid/content/Context;

    aget-object v3, v1, v5

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isShowingGooglePermissionDialog()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "is_need_to_show_disclaimer_popup"

    invoke-static {v3, v4, v5}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Lcom/sec/android/gallery3d/settings/AccountSettingManager;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/sec/android/gallery3d/settings/AccountSettingManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/settings/AccountSettingManager;->getSamsungAccount()Landroid/accounts/Account;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;->createDialog()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;->showDialog()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;->dismissDialog()V

    goto :goto_0
.end method

.method public showDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
