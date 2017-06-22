.class Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton$3;
.super Ljava/lang/Object;
.source "AgifMyButton.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton$3;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton$3;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mMoveToPos:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->access$500(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton$3;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mCurrentPos:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->access$600(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton$3;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton$3;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mMoveToPos:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->access$500(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setLeft(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton$3;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton$3;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mMoveToPos:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->access$500(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setTop(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton$3;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton$3;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mMoveToPos:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->access$500(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setRight(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton$3;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton$3;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mMoveToPos:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->access$500(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setBottom(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton$3;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mCurrentPos:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->access$600(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton$3;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mMoveToPos:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->access$500(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton$3;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0e033c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton$3;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->index:I
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->access$300(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton$3;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mRunningAnimation:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->access$402(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton$3;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mRunningAnimation:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->access$402(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;Z)Z

    return-void
.end method
