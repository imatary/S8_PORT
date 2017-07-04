.class Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;
.super Landroid/app/DialogFragment;
.source "AlbumChoiceDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumChoiceDialogFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$NewAlbumORListClickListener;,
        Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper;
    }
.end annotation


# instance fields
.field private checkedposition:I

.field private detailsListAdapter:Landroid/widget/BaseAdapter;

.field private final mCtx:Landroid/content/Context;

.field private final mNewAlbumORListClickListener:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$NewAlbumORListClickListener;

.field private mTitleId:I

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    new-instance v1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$NewAlbumORListClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$NewAlbumORListClickListener;-><init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$1;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->mNewAlbumORListClickListener:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$NewAlbumORListClickListener;

    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->checkedposition:I

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->mCtx:Landroid/content/Context;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;Landroid/content/Context;Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;-><init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->checkedposition:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->checkedposition:I

    return p1
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->mCtx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;)Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->detailsListAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v6, 0x7f0a00cf

    const v5, 0x7f0a0080

    const/4 v4, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$200(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$200(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$300(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_COPY_FILES:I

    if-eq v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$200(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    array-length v2, v2

    if-le v2, v8, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$300(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_MOVE_FILES:I

    if-ne v2, v3, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$400(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->mCtx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-instance v2, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper;

    invoke-direct {v2, p0, v4}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper;-><init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$1;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->detailsListAdapter:Landroid/widget/BaseAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->detailsListAdapter:Landroid/widget/BaseAdapter;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->mNewAlbumORListClickListener:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$NewAlbumORListClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->mTitleId:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a00bc

    new-instance v3, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$1;-><init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a026e

    new-instance v3, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$2;-><init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x10100

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    const/16 v4, 0x400

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setFlags(II)V

    return-object v1

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$200(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$200(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    array-length v2, v2

    if-le v2, v8, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$300(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_COLLECT_EVENT_ALBUM:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$400(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->mCtx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-instance v2, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper;

    invoke-direct {v2, p0, v4}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper;-><init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$1;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->detailsListAdapter:Landroid/widget/BaseAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->detailsListAdapter:Landroid/widget/BaseAdapter;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->mNewAlbumORListClickListener:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$NewAlbumORListClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->mTitleId:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a00bc

    new-instance v3, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$3;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$3;-><init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$200(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$200(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    array-length v2, v2

    if-lt v2, v8, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$300(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_SECRETBOX:I

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$300(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_KNOX:I

    if-ne v2, v3, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$400(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->mCtx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-instance v2, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper;

    invoke-direct {v2, p0, v4}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper;-><init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$1;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->detailsListAdapter:Landroid/widget/BaseAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->detailsListAdapter:Landroid/widget/BaseAdapter;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->mNewAlbumORListClickListener:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$NewAlbumORListClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->mTitleId:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a026e

    new-instance v3, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$4;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$4;-><init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    :cond_5
    const v2, 0x7f0a044a

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->mTitleId:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$5;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$5;-><init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;)V

    invoke-virtual {v0, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 17

    invoke-super/range {p0 .. p0}, Landroid/app/DialogFragment;->onResume()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->mCtx:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v12}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v3

    const/4 v12, 0x7

    invoke-virtual {v3, v12}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v9

    if-nez v9, :cond_1

    const-string/jumbo v12, "AlbumChoiceDialog"

    const-string/jumbo v13, "onResume() : mediaSet is null"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v7

    new-array v10, v7, [Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_2

    invoke-virtual {v9, v5}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v12

    aput-object v12, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    invoke-static {v12, v10}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$202(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;[Lcom/sec/android/gallery3d/data/MediaSet;)[Lcom/sec/android/gallery3d/data/MediaSet;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$300(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v12

    sget v13, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_SECRETBOX:I

    if-ne v12, v13, :cond_7

    const/4 v8, 0x0

    array-length v13, v10

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v13, :cond_4

    aget-object v2, v10, v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->mCtx:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    new-array v11, v8, [Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v6, 0x0

    array-length v13, v10

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v13, :cond_6

    aget-object v2, v10, v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->mCtx:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_5
    aput-object v2, v11, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    invoke-static {v12, v11}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$202(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;[Lcom/sec/android/gallery3d/data/MediaSet;)[Lcom/sec/android/gallery3d/data/MediaSet;

    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$400(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$200(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v12

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$200(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v12

    array-length v12, v12

    if-lez v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$300(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v12

    sget v13, Lcom/sec/samsung/gallery/core/Event;->EVENT_MOVE_FILES:I

    if-eq v12, v13, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$300(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v12

    sget v13, Lcom/sec/samsung/gallery/core/Event;->EVENT_COPY_FILES:I

    if-eq v12, v13, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$300(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v12

    sget v13, Lcom/sec/samsung/gallery/core/Event;->EVENT_COLLECT_EVENT_ALBUM:I

    if-eq v12, v13, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$300(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v12

    sget v13, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_SECRETBOX:I

    if-eq v12, v13, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$300(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v12

    sget v13, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_KNOX:I

    if-ne v12, v13, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$400(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->mCtx:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a00cf

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$200(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v13

    array-length v14, v13

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v14, :cond_a

    aget-object v1, v13, v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    invoke-static {v15}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$400(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :catch_0
    move-exception v4

    const-string/jumbo v12, "AlbumChoiceDialog"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->detailsListAdapter:Landroid/widget/BaseAdapter;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->detailsListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v12}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method public setTitle(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->mTitleId:I

    return-void
.end method
