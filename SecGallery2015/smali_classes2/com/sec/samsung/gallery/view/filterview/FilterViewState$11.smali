.class Lcom/sec/samsung/gallery/view/filterview/FilterViewState$11;
.super Ljava/lang/Object;
.source "FilterViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->onViewInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$11;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

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

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$11;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    # getter for: Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$000(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$11;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    # invokes: Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->enterSelectionMode()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$2800(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$11;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    # getter for: Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$000(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$11;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    # invokes: Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->selectAlbum(I)V
    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$1600(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;I)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public prePenSelectionCheck(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
