.class Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;
.super Landroid/app/DialogFragment;
.source "EventAlbumChoiceDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumChoiceDialogFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment$ListClickListener;,
        Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment$AppListAdapter;
    }
.end annotation


# instance fields
.field private final detailsListAdapter:Landroid/widget/BaseAdapter;

.field private final mCtx:Landroid/content/Context;

.field private final mListClickListener:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment$ListClickListener;

.field private mTitleId:I

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    new-instance v1, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment$ListClickListener;

    invoke-direct {v1, p0, v2}, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment$ListClickListener;-><init>(Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$1;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;->mListClickListener:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment$ListClickListener;

    new-instance v1, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment$AppListAdapter;

    invoke-direct {v1, p0, v2}, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment$AppListAdapter;-><init>(Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$1;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;->detailsListAdapter:Landroid/widget/BaseAdapter;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;->mCtx:Landroid/content/Context;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;Landroid/content/Context;Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;-><init>(Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;->mCtx:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    const/16 v4, 0x400

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->mAlbumMap:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->access$300(Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->mAlbumMap:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->access$300(Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;->detailsListAdapter:Landroid/widget/BaseAdapter;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;->mListClickListener:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment$ListClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;->mTitleId:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :goto_0
    const v2, 0x7f0a0080

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a02c2

    new-instance v3, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment$1;-><init>(Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

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

    :cond_0
    const v2, 0x7f0a0449

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;->mTitleId:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;

    # invokes: Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->loadAlbumData()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->access$700(Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;->detailsListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;->mTitleId:I

    return-void
.end method
