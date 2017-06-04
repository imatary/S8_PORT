.class Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$NewAlbumORListClickListener;
.super Ljava/lang/Object;
.source "AlbumChoiceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NewAlbumORListClickListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$NewAlbumORListClickListener;->this$1:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$NewAlbumORListClickListener;-><init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    if-nez p2, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$NewAlbumORListClickListener;->this$1:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->mEvent:Lcom/sec/samsung/gallery/core/Event;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$300(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_MOVE_FILES:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$NewAlbumORListClickListener;->this$1:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->mEvent:Lcom/sec/samsung/gallery/core/Event;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$300(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_COPY_FILES:I

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$NewAlbumORListClickListener;->this$1:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->mEvent:Lcom/sec/samsung/gallery/core/Event;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$300(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_MOVE_FILES:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setIntData(I)Lcom/sec/samsung/gallery/core/Event;

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$NewAlbumORListClickListener;->this$1:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->mEvent:Lcom/sec/samsung/gallery/core/Event;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$300(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_NEW_ALBUM_NAME_EDIT_DIALOG:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$NewAlbumORListClickListener;->this$1:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$NewAlbumORListClickListener;->this$1:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->mEvent:Lcom/sec/samsung/gallery/core/Event;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$300(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->notifyObservers(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$NewAlbumORListClickListener;->this$1:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$700(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->dismiss()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$NewAlbumORListClickListener;->this$1:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->mEvent:Lcom/sec/samsung/gallery/core/Event;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$300(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$NewAlbumORListClickListener;->this$1:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->mEvent:Lcom/sec/samsung/gallery/core/Event;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$300(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setIntData(I)Lcom/sec/samsung/gallery/core/Event;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$NewAlbumORListClickListener;->this$1:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->checkedposition:I
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->access$600(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;)I

    move-result v0

    if-eq v0, p2, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$NewAlbumORListClickListener;->this$1:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;

    # setter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->checkedposition:I
    invoke-static {v0, p2}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->access$602(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;I)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$NewAlbumORListClickListener;->this$1:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->detailsListAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->access$900(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method
