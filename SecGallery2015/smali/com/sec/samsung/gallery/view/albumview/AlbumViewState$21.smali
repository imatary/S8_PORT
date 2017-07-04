.class Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$21;
.super Ljava/lang/Object;
.source "AlbumViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DesktopModeAlbumClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->onViewInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$21;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSecondaryClick(III)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$21;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$21;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->getActionBarManager()Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setNeedToShowMenuOnEmptySpace(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$21;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$11500(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p1, v0, Landroid/os/Message;->arg1:I

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$21;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$11500(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
