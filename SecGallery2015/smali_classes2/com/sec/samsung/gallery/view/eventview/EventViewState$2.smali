.class Lcom/sec/samsung/gallery/view/eventview/EventViewState$2;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$SimpleModelListener;
.source "EventViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/eventview/EventViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$2;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$SimpleModelListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$2;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$000(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$2;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$000(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$2;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$800(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$2;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$800(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->update(Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$2;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$900(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$2;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$1000(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V

    return-void
.end method
