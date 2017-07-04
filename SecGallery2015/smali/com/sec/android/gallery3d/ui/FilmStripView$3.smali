.class Lcom/sec/android/gallery3d/ui/FilmStripView$3;
.super Lcom/sec/android/gallery3d/ui/SlotView$SimpleListener;
.source "FilmStripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/ui/FilmStripView;->initSlotView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/ui/FilmStripView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$3;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/SlotView$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$3;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$400(Lcom/sec/android/gallery3d/ui/FilmStripView;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$3;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$500(Lcom/sec/android/gallery3d/ui/FilmStripView;)V

    goto :goto_0
.end method

.method public onLongTap(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$3;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$800(Lcom/sec/android/gallery3d/ui/FilmStripView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$3;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$900(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/ui/FilmStripView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$3;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$900(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/ui/FilmStripView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView$Listener;->getIsFromCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$3;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$400(Lcom/sec/android/gallery3d/ui/FilmStripView;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$3;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/FilmStripView;->onLongTap(I)V

    goto :goto_0
.end method

.method public onScrollOverDistance(IF)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$3;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$700(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/ui/EdgeView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$3;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$1000(Lcom/sec/android/gallery3d/ui/FilmStripView;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$3;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$1100(Lcom/sec/android/gallery3d/ui/FilmStripView;)I

    move-result v1

    if-lt v0, v1, :cond_0

    if-gez p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$3;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$700(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/ui/EdgeView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/ui/EdgeView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$3;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$700(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/ui/EdgeView;

    move-result-object v0

    neg-int v1, p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p2}, Lcom/sec/android/gallery3d/ui/EdgeView;->onPull(IIF)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$3;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$700(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/ui/EdgeView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/ui/EdgeView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$3;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$700(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/ui/EdgeView;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1, p2}, Lcom/sec/android/gallery3d/ui/EdgeView;->onPull(IIF)V

    goto :goto_0
.end method

.method public onScrollPositionChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$3;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$400(Lcom/sec/android/gallery3d/ui/FilmStripView;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$3;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v0, p1, p2}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$1200(Lcom/sec/android/gallery3d/ui/FilmStripView;II)V

    goto :goto_0
.end method

.method public onSingleTapUp(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$3;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$800(Lcom/sec/android/gallery3d/ui/FilmStripView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$3;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$900(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/ui/FilmStripView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$3;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$900(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/ui/FilmStripView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView$Listener;->getIsFromCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$3;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/FilmStripView;->onSingleTapUp(I)V

    return-void
.end method

.method public onUp()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$3;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$600(Lcom/sec/android/gallery3d/ui/FilmStripView;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$3;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$700(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/ui/EdgeView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$3;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$700(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/ui/EdgeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/EdgeView;->onRelease()V

    :cond_0
    return-void
.end method
