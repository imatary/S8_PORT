.class Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;
.super Landroid/app/DialogFragment;
.source "StorageChoiceDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageChoiceDialogFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment$ListClickListener;,
        Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment$AppListAdapter;
    }
.end annotation


# instance fields
.field private final detailsListAdapter:Landroid/widget/BaseAdapter;

.field private final mCtx:Landroid/content/Context;

.field private final mListClickListener:Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment$ListClickListener;

.field private mTitleId:I

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    new-instance v1, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment$ListClickListener;

    invoke-direct {v1, p0, v2}, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment$ListClickListener;-><init>(Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$1;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;->mListClickListener:Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment$ListClickListener;

    new-instance v1, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment$AppListAdapter;

    invoke-direct {v1, p0, v2}, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment$AppListAdapter;-><init>(Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$1;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;->detailsListAdapter:Landroid/widget/BaseAdapter;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;->mCtx:Landroid/content/Context;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;Landroid/content/Context;Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;-><init>(Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;->mCtx:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;->access$300(Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getSDCardRemovedIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    const/16 v4, 0x400

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a02bb

    iput v2, p0, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;->mTitleId:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;->detailsListAdapter:Landroid/widget/BaseAdapter;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;->mListClickListener:Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment$ListClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;->mTitleId:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x10100

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    return-object v1
.end method

.method public onDestroyView()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;->access$300(Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "StorageChoiceDialog"

    const-string/jumbo v2, "mSDCardRemovedReceiver was not registered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
