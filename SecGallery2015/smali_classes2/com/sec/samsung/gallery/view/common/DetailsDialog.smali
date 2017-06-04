.class public Lcom/sec/samsung/gallery/view/common/DetailsDialog;
.super Ljava/lang/Object;
.source "DetailsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/common/DetailsDialog$DetailsListAdapter;,
        Lcom/sec/samsung/gallery/view/common/DetailsDialog$MediaDetailDialogFragment;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DetailsDialog"


# instance fields
.field private mContentsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDetailItemLayout:I

.field private mDetailsListAdapter:Lcom/sec/samsung/gallery/view/common/DetailsDialog$DetailsListAdapter;

.field private final mDialogFragment:Lcom/sec/samsung/gallery/view/common/DetailsDialog$MediaDetailDialogFragment;

.field final mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

.field private mSDCardRemovedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/interfaces/LibraryContext;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/samsung/gallery/view/common/DetailsDialog$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/common/DetailsDialog$1;-><init>(Lcom/sec/samsung/gallery/view/common/DetailsDialog;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->mSDCardRemovedReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/samsung/gallery/view/common/DetailsDialog$MediaDetailDialogFragment;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/common/DetailsDialog$MediaDetailDialogFragment;-><init>(Lcom/sec/samsung/gallery/view/common/DetailsDialog;Lcom/sec/samsung/gallery/view/common/DetailsDialog$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/DetailsDialog$MediaDetailDialogFragment;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->mContentsList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/common/DetailsDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->unregisterSdCardReceiver()V

    return-void
.end method

.method static synthetic access$202(Lcom/sec/samsung/gallery/view/common/DetailsDialog;Lcom/sec/samsung/gallery/view/common/DetailsDialog$DetailsListAdapter;)Lcom/sec/samsung/gallery/view/common/DetailsDialog$DetailsListAdapter;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->mDetailsListAdapter:Lcom/sec/samsung/gallery/view/common/DetailsDialog$DetailsListAdapter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/common/DetailsDialog;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->mContentsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/common/DetailsDialog;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->mSDCardRemovedReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/common/DetailsDialog;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->mDetailItemLayout:I

    return v0
.end method

.method private unregisterSdCardReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->mSDCardRemovedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->mSDCardRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->mSDCardRemovedReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/DetailsDialog$MediaDetailDialogFragment;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/DetailsDialog$MediaDetailDialogFragment;->dismiss()V

    return-void
.end method

.method initDetailList(Landroid/widget/ListView;I)V
    .locals 1

    iput p2, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->mDetailItemLayout:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->mDetailsListAdapter:Lcom/sec/samsung/gallery/view/common/DetailsDialog$DetailsListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public isShowing()Z
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/DetailsDialog$MediaDetailDialogFragment;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/common/DetailsDialog$MediaDetailDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method onCreateDialog()Landroid/app/Dialog;
    .locals 8

    const/16 v7, 0x400

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v5, 0x7f040051

    const/4 v4, 0x0

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setFocusable(Z)V

    const v4, 0x7f04004f

    invoke-virtual {p0, v2, v4}, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->initDetailList(Landroid/widget/ListView;I)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0343

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f0a009c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/sec/samsung/gallery/view/common/DetailsDialog$2;

    invoke-direct {v6, p0}, Lcom/sec/samsung/gallery/view/common/DetailsDialog$2;-><init>(Lcom/sec/samsung/gallery/view/common/DetailsDialog;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x10100

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v7, v7}, Landroid/view/Window;->setFlags(II)V

    return-object v1
.end method

.method onDialogDismiss()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->unregisterSdCardReceiver()V

    const-string/jumbo v0, "DetailsDialog"

    const-string/jumbo v1, "dialog dismissed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method setContensList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->mContentsList:Ljava/util/ArrayList;

    return-void
.end method

.method public showDialog()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/DetailsDialog$MediaDetailDialogFragment;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "dialog"

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/view/common/DetailsDialog$MediaDetailDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DetailsDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can not display details dialog. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
