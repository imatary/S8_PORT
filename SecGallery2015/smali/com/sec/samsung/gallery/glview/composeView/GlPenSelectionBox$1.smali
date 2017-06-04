.class Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox$1;
.super Lcom/sec/android/gallery3d/glcore/GlHandler;
.source "GlPenSelectionBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;Lcom/sec/android/gallery3d/glcore/GlRootView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/glcore/GlHandler;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    return-void
.end method


# virtual methods
.method public onMessage(ILjava/lang/Object;III)V
    .locals 3

    const-string/jumbo v0, "GlPenSelectionBox"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMessage msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->prepareItemAnimation()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->startShowAnimation()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->removePenSelectionView()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;)V

    goto :goto_0
.end method
