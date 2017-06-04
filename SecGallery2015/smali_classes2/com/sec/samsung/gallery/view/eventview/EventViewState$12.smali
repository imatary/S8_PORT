.class Lcom/sec/samsung/gallery/view/eventview/EventViewState$12;
.super Ljava/lang/Object;
.source "EventViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/eventview/EventViewState;->onViewInitialize()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$12;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyEvent(II)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x43

    if-eq p1, v1, :cond_0

    const/16 v1, 0x70

    if-ne p1, v1, :cond_1

    :cond_0
    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$12;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # invokes: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->showDeleteDialog()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$3800(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V

    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x42

    if-eq p1, v1, :cond_2

    const/16 v1, 0x17

    if-ne p1, v1, :cond_3

    :cond_2
    const/16 v1, 0x80

    if-ne p2, v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$12;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$000(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$12;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # invokes: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->enterSelectionMode()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$2700(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$12;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # invokes: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->updateCountOnActionBar()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$900(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
