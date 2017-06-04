.class Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment$1;
.super Ljava/lang/Object;
.source "EventAlbumChoiceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment$1;->this$1:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment$1;->this$1:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->mEventAlbumMgr:Lcom/sec/android/gallery3d/data/EventAlbumManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->access$600(Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;)Lcom/sec/android/gallery3d/data/EventAlbumManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment$1;->this$1:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->access$400(Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment$1;->this$1:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->access$500(Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->prepareCreateEventDialog(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;)V

    return-void
.end method
