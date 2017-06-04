.class Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$2;
.super Ljava/lang/Object;
.source "ShowCopyMoveDialogCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->handleSingleFileOperation(Lcom/sec/android/gallery3d/ui/SelectionManager;Ljava/lang/String;I)V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_0

    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "EXIT_SELECTION_MODE"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
