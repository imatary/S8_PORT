.class public Lcom/sec/samsung/gallery/controller/ShowChangePlayerDialogCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "ShowChangePlayerDialogCmd.java"

# interfaces
.implements Ljava/util/Observer;
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDlg_MoreActions:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method private dismissDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowChangePlayerDialogCmd;->mDlg_MoreActions:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowChangePlayerDialogCmd;->mDlg_MoreActions:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private showDialog()V
    .locals 4

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseScreenSharing:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_0
    new-instance v2, Lcom/sec/samsung/gallery/controller/MoreActionsDialog;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowChangePlayerDialogCmd;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0, v1}, Lcom/sec/samsung/gallery/controller/MoreActionsDialog;-><init>(Landroid/content/Context;II)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowChangePlayerDialogCmd;->mDlg_MoreActions:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowChangePlayerDialogCmd;->mDlg_MoreActions:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->create()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowChangePlayerDialogCmd;->mDlg_MoreActions:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowChangePlayerDialogCmd;->mDlg_MoreActions:Landroid/app/Dialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 2

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowChangePlayerDialogCmd;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowChangePlayerDialogCmd;->showDialog()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowChangePlayerDialogCmd;->dismissDialog()V

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
