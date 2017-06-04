.class Lcom/sec/samsung/gallery/view/detailview/FastOptionView$14;
.super Ljava/lang/Object;
.source "FastOptionView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->setHideAnimation(Z)V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    const-string/jumbo v0, "FastOptionView"

    const-string/jumbo v1, "hideFastOptionView() onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$2300(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$2300(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
