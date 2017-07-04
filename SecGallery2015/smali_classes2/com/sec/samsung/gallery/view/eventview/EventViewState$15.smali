.class Lcom/sec/samsung/gallery/view/eventview/EventViewState$15;
.super Ljava/lang/Object;
.source "EventViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$15;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enterSelectionModeFromPenSelect()V
    .locals 0

    return-void
.end method

.method public isCheckAvailable()V
    .locals 0

    return-void
.end method

.method public onPenSelection(IIZ)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$15;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$000(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$15;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$2700(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$15;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$000(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$15;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$1700(Lcom/sec/samsung/gallery/view/eventview/EventViewState;I)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public prePenSelectionCheck(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
