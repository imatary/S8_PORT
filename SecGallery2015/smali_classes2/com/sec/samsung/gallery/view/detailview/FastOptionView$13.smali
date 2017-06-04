.class Lcom/sec/samsung/gallery/view/detailview/FastOptionView$13;
.super Ljava/lang/Object;
.source "FastOptionView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->setShowAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$13;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$13;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mListener:Lcom/sec/samsung/gallery/view/detailview/FastOptionView$Listener;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$1300(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$13;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mListener:Lcom/sec/samsung/gallery/view/detailview/FastOptionView$Listener;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$1300(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$Listener;->onShowFilmStripViewWithAlpha()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$13;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    const/16 v1, 0xc8

    # setter for: Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mShowAlphaAnimationDuration:I
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$2202(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;I)I

    return-void
.end method
