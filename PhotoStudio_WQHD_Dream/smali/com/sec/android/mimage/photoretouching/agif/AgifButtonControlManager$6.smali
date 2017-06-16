.class Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;
.super Ljava/lang/Object;
.source "AgifButtonControlManager.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/agif/DefaultButtonsListener$DefaultTouchInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->addButton(IILandroid/graphics/Bitmap;Ljava/lang/String;ZILcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AgifImageAdder;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Command;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;)Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

.field final synthetic val$button:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;ILcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->val$index:I

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->val$button:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public GestureLongPress(Landroid/view/View;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/high16 v9, -0x80000000

    const/4 v8, 0x4

    const/4 v7, 0x0

    move-object v2, p1

    check-cast v2, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    move-object v4, v2

    check-cast v4, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->isAddButton()Z

    move-result v4

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->mIsLoading:Z

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->swapAnimation:Z
    invoke-static {v4, v10}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1102(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;Z)Z

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->triggerPauseEvent()V
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1200(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    new-instance v5, Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$900(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static {v4, v5}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1302(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$700(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$700(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->thumbnailIndex:I
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1400(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v4, v10}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->callSelected(Z)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$700(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->thumbnailIndex:I
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1400(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->setRemoveButtonFocusFalse(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)V
    invoke-static {v5, v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1500(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->startedIndex:I
    invoke-static {v4, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1602(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;I)I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v4

    const/high16 v5, -0x10000

    invoke-virtual {v4, v5, v11, v11, v7}, Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;->initButton(ILandroid/graphics/Bitmap;Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;->copyButtonsNPosition(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v5

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->changeNearButtonInfo(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V
    invoke-static {v4, v2, v5}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1700(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v2, v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setCurrentPosition(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;->setRemoveButtonVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mBtnCtrlLayout:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1800(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mBtnCtrlLayout:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1800(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Landroid/widget/FrameLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;->setCheckBoxVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$700(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mOverflowBtnCtrlLayout:Lcom/sec/android/mimage/photoretouching/agif/SelectedButtonLayout;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1900(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/SelectedButtonLayout;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$900(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    const v6, 0x7f0e024a

    invoke-virtual {v4, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/agif/SelectedButtonLayout;

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mOverflowBtnCtrlLayout:Lcom/sec/android/mimage/photoretouching/agif/SelectedButtonLayout;
    invoke-static {v5, v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1902(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;Lcom/sec/android/mimage/photoretouching/agif/SelectedButtonLayout;)Lcom/sec/android/mimage/photoretouching/agif/SelectedButtonLayout;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mOverflowBtnCtrlLayout:Lcom/sec/android/mimage/photoretouching/agif/SelectedButtonLayout;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1900(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/SelectedButtonLayout;

    move-result-object v4

    invoke-virtual {v4, v9, v9}, Lcom/sec/android/mimage/photoretouching/agif/SelectedButtonLayout;->measure(II)V

    :cond_2
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mOverflowBtnCtrlLayout:Lcom/sec/android/mimage/photoretouching/agif/SelectedButtonLayout;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1900(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/SelectedButtonLayout;

    move-result-object v4

    if-eqz v4, :cond_3

    const v4, 0x3f4ccccd    # 0.8f

    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$900(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    const v5, 0x7f0e033c

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$900(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c0023

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$900(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    const v5, 0x7f0e033a

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v4, 0x7f02007a

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mOverflowBtnCtrlLayout:Lcom/sec/android/mimage/photoretouching/agif/SelectedButtonLayout;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1900(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/SelectedButtonLayout;

    move-result-object v4

    check-cast p1, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    new-instance v5, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;

    invoke-direct {v5, p0, v3, v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;-><init>(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-virtual {v4, p1, v5}, Lcom/sec/android/mimage/photoretouching/agif/SelectedButtonLayout;->setEnableIntercept(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;Lcom/sec/android/mimage/photoretouching/agif/SelectedButtonLayout$ActivityLayoutTouchUpCallback;)V

    :cond_3
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->gridItemSubMenuLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$100(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public TouchFunction(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public TouchFunction(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->val$index:I

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->deSelectAllThumbnails(I)V

    move-object v2, p1

    check-cast v2, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->touchFunction(Landroid/view/View;Landroid/view/MotionEvent;)V

    instance-of v2, p1, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_0

    const-string v2, "846"

    const-string v3, "8571"

    const-string v4, "Select frame"

    invoke-static {v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$900(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    const/4 v2, 0x2

    new-array v1, v2, [I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->val$button:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v2, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->getLocationInWindow([I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->gridItemSubMenuLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$100(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->gridItemSubMenuLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$100(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mCurrentIndex:I
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$600(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->val$button:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->getIndex()I

    move-result v3

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->val$button:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->getIndex()I

    move-result v3

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mCurrentIndex:I
    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$602(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;I)I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isClick:Z
    invoke-static {v2, v5}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$202(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;Z)Z

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1000(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->val$button:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->getLeft()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->scrollToLineWithoutDelay(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->val$button:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->getIndex()I

    move-result v3

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mCurrentIndex:I
    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$602(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;I)I

    aget v2, v1, v6

    if-gt v2, v0, :cond_2

    aget v2, v1, v6

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->val$button:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v2, v0, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isClick:Z
    invoke-static {v2, v5}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$202(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;Z)Z

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1000(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->val$button:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->getLeft()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->scrollToLineWithoutDelay(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->val$button:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->showGridItemSubMenu(Landroid/view/View;)V
    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$800(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;Landroid/view/View;)V

    goto :goto_0
.end method
