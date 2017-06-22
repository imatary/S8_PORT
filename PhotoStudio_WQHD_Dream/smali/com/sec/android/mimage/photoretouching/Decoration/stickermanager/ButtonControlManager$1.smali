.class Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager$1;
.super Ljava/lang/Object;
.source "ButtonControlManager.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonsListener$DefaultTouchInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->addButton(IILandroid/graphics/Bitmap;Ljava/lang/String;ZZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public GestureLongPress(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/high16 v5, -0x80000000

    const-string v2, "PEDIT_ButtonControlManager"

    const-string v3, " GestureLongPress in button control mananger "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    new-instance v3, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/NullButton;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->access$100(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/NullButton;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/NullButton;
    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->access$002(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/NullButton;)Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/NullButton;

    move-object v1, p1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButtonInterface;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->access$200(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/NullButton;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/NullButton;

    move-result-object v2

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3, v8, v8}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/NullButton;->initButton(ILandroid/graphics/Bitmap;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/NullButton;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/NullButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/NullButton;->copyButtonsNPosition(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButtonInterface;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/NullButton;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/NullButton;

    move-result-object v3

    # invokes: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->changeNearButtonInfo(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButtonInterface;Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButtonInterface;)V
    invoke-static {v2, v1, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->access$300(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButtonInterface;Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButtonInterface;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-direct {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v1, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButtonInterface;->setCurrentPosition(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->mBtnCtrlLayout:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->access$400(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->mBtnCtrlLayout:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->access$400(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/NullButton;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/NullButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/NullButton;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/NullButton;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/NullButton;->setCheckBoxVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/NullButton;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/NullButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/NullButton;->gettGifTextVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/NullButton;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/NullButton;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/NullButton;->setGifTextVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->access$200(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/NullButton;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/NullButton;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->mOverflowBtnCtrlLayout:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->access$500(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->access$100(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const v4, 0x7f0e024a

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;

    # setter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->mOverflowBtnCtrlLayout:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;
    invoke-static {v3, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->access$502(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;)Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->mOverflowBtnCtrlLayout:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->access$500(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->measure(II)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/NullButton;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/NullButton;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/NullButton;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/NullButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/NullButton;->getLeft()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/NullButton;->setLeftBarColor_Move(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->mOverflowBtnCtrlLayout:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->access$500(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->mOverflowBtnCtrlLayout:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->access$500(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;

    move-result-object v2

    check-cast p1, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    new-instance v3, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager$1$1;

    invoke-direct {v3, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager$1$1;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager$1;)V

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->setEnableIntercept(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout$ActivityLayoutTouchUpCallback;)V

    :cond_2
    return-void
.end method

.method public TouchFunction(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public TouchFunction(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1

    instance-of v0, p1, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->touchFunction(Landroid/view/View;Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method
