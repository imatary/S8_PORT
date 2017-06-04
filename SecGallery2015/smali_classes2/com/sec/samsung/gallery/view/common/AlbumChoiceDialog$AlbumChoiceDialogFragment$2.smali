.class Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$2;
.super Ljava/lang/Object;
.source "AlbumChoiceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_MOVE_FILES:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    # setter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->mEvent:Lcom/sec/samsung/gallery/core/Event;
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$302(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;Lcom/sec/samsung/gallery/core/Event;)Lcom/sec/samsung/gallery/core/Event;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->mEvent:Lcom/sec/samsung/gallery/core/Event;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$300(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->mAlbumList:[Lcom/sec/android/gallery3d/data/MediaSet;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$200(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->checkedposition:I
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->access$600(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->mEvent:Lcom/sec/samsung/gallery/core/Event;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$300(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->notifyObservers(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$700(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->dismiss()V

    return-void
.end method
