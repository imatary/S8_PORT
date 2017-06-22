.class Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton$2;
.super Ljava/lang/Object;
.source "MyButton.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mMoveToPos:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCurrentPos:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mMoveToPos:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->setLeft(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mMoveToPos:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->setTop(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mMoveToPos:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->setRight(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mMoveToPos:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->setBottom(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCurrentPos:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mMoveToPos:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mRunningAnimation:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->access$402(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mRunningAnimation:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->access$402(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;Z)Z

    return-void
.end method
