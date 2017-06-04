.class Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment$ListClickListener;
.super Ljava/lang/Object;
.source "EventAlbumChoiceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListClickListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment$ListClickListener;->this$1:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment$ListClickListener;-><init>(Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment$ListClickListener;->this$1:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->mAlbumMap:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->access$300(Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;

    iget v4, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;->bucketId:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment$ListClickListener;->this$1:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->mAlbumMap:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->access$300(Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment$ListClickListener;->this$1:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->mAlbumMap:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->access$300(Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;

    iget-wide v6, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;->albumCreateTime:J

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment$ListClickListener;->this$1:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->mEventAlbumMgr:Lcom/sec/android/gallery3d/data/EventAlbumManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->access$600(Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;)Lcom/sec/android/gallery3d/data/EventAlbumManager;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment$ListClickListener;->this$1:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->access$400(Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;)Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment$ListClickListener;->this$1:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->access$500(Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v3

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->addExistAlbum(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;ILjava/lang/String;J)V

    return-void
.end method
