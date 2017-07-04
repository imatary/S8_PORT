.class Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$8;
.super Ljava/lang/Object;
.source "ShowCopyMoveDialogCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->showDialog(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/io/File;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$402(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Z)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
