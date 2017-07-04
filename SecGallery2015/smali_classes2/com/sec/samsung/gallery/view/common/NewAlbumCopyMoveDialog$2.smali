.class Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog$2;
.super Ljava/lang/Object;
.source "NewAlbumCopyMoveDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->createDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog$2;->this$0:Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog$2;->this$0:Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_COPY_FILES:I

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->access$000(Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;I)V

    return-void
.end method
