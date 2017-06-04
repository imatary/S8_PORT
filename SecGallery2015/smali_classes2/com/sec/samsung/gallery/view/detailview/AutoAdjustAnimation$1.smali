.class Lcom/sec/samsung/gallery/view/detailview/AutoAdjustAnimation$1;
.super Ljava/lang/Object;
.source "AutoAdjustAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/AutoAdjustAnimation;->startAutoAdjustAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/AutoAdjustAnimation;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/AutoAdjustAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjustAnimation$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/AutoAdjustAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjustAnimation$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/AutoAdjustAnimation;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/AutoAdjustAnimation;->mAutoAdjustEffectCircle:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/AutoAdjustAnimation;->access$000(Lcom/sec/samsung/gallery/view/detailview/AutoAdjustAnimation;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjustAnimation$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/AutoAdjustAnimation;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/AutoAdjustAnimation;->mAutoAdjustEffectCircle:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/AutoAdjustAnimation;->access$000(Lcom/sec/samsung/gallery/view/detailview/AutoAdjustAnimation;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
