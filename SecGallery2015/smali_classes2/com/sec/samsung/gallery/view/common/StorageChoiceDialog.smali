.class public Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;
.super Lcom/sec/samsung/gallery/view/ViewObservable;
.source "StorageChoiceDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StorageChoiceDialog"


# instance fields
.field private final list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCtx:Landroid/content/Context;

.field private final mDialogFragment:Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;

.field private final mSDCardRemovedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/ViewObservable;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;->list:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$1;-><init>(Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;->mSDCardRemovedReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;->mCtx:Landroid/content/Context;

    new-instance v0, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;->mCtx:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;-><init>(Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;Landroid/content/Context;Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;->mSDCardRemovedReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;)Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;

    return-object v0
.end method


# virtual methods
.method public dismissDialog()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public showDialog()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;->mCtx:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v3, "dialog"

    invoke-virtual {v2, v1, v3}, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "StorageChoiceDialog"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
