.class Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;
.super Ljava/lang/Object;
.source "AgifButtonControlManager.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/agif/SelectedButtonLayout$ActivityLayoutTouchUpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->GestureLongPress(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

.field final synthetic val$current_arrow:Landroid/widget/ImageView;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->val$textView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->val$current_arrow:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public touchDown(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->swapAnimation:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1102(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1000(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1000(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->setScrollable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->triggerPauseEvent()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1200(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)V

    return-void
.end method

.method public touchMove(Landroid/graphics/Rect;)V
    .locals 25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1000(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    move-result-object v20

    if-nez v20, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->swapAnimation:Z
    invoke-static/range {v20 .. v21}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1102(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1000(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->setScrollable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;->setLeftBarVisibility(I)V

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v12, v0, [I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v21, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->gridLayout:Landroid/view/View;
    invoke-static/range {v21 .. v21}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$2300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLeft()I

    move-result v21

    sub-int v20, v20, v21

    add-int/lit8 v20, v20, -0x64

    if-gez v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1000(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v22, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->gridLayout:Landroid/view/View;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$2300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLeft()I

    move-result v22

    sub-int v21, v21, v22

    div-int/lit8 v21, v21, 0x2

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->scrollBy(II)V

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mOverflowBtnCtrlLayout:Lcom/sec/android/mimage/photoretouching/agif/SelectedButtonLayout;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1900(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/SelectedButtonLayout;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/SelectedButtonLayout;->getLeft()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v21, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mOverflowBtnCtrlLayout:Lcom/sec/android/mimage/photoretouching/agif/SelectedButtonLayout;
    invoke-static/range {v21 .. v21}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1900(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/SelectedButtonLayout;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/mimage/photoretouching/agif/SelectedButtonLayout;->getTop()I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    const/4 v13, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v21, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static/range {v21 .. v21}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;->getLeft()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;->setLeftBarColor_Move(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$700(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v21, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->addButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;
    invoke-static/range {v21 .. v21}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$2100(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$700(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v7, v20, -0x1

    :goto_2
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v7, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$700(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    invoke-interface {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->runningAnimation()Z

    move-result v20

    if-nez v20, :cond_0

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v12, v0, [I

    move-object/from16 v20, v4

    check-cast v20, Landroid/view/View;

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v20, 0x0

    aget v20, v12, v20

    const/16 v21, 0x1

    aget v21, v12, v21

    const/16 v22, 0x0

    aget v22, v12, v22

    invoke-interface {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->getWidth()I

    move-result v23

    add-int v22, v22, v23

    const/16 v23, 0x1

    aget v23, v12, v23

    invoke-interface {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->getHeight()I

    move-result v24

    add-int v23, v23, v24

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v20

    if-eqz v20, :cond_4

    const/16 v19, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    iget v0, v5, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    sub-int v19, v20, v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v8, v20, v21

    :cond_3
    :goto_4
    mul-int v20, v19, v8

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpg-float v20, v13, v20

    if-gez v20, :cond_4

    move-object/from16 v17, v4

    mul-int v20, v19, v8

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v13, v0

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    :cond_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v21, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->gridLayout:Landroid/view/View;
    invoke-static/range {v21 .. v21}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$2300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getRight()I

    move-result v21

    add-int/lit8 v21, v21, -0x64

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1000(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v22, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->gridLayout:Landroid/view/View;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$2300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getRight()I

    move-result v22

    sub-int v21, v21, v22

    div-int/lit8 v21, v21, 0x2

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->scrollBy(II)V

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$700(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v7

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v20

    if-eqz v20, :cond_8

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    iget v0, v5, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v19, v20, v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v8, v20, v21

    goto/16 :goto_4

    :cond_8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v20

    if-eqz v20, :cond_9

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    iget v0, v5, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v19, v20, v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v8, v20, v21

    goto/16 :goto_4

    :cond_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v20

    if-eqz v20, :cond_3

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    iget v0, v5, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    sub-int v19, v20, v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v8, v20, v21

    goto/16 :goto_4

    :cond_a
    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$700(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$700(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v21, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static/range {v21 .. v21}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    move/from16 v0, v18

    if-eq v0, v14, :cond_0

    const/16 v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    const/16 v20, -0x1

    move/from16 v0, v20

    if-le v14, v0, :cond_0

    move/from16 v0, v18

    if-le v0, v14, :cond_16

    move/from16 v9, v18

    :goto_5
    if-lt v9, v14, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$700(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    instance-of v0, v4, Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move/from16 v20, v0

    if-eqz v20, :cond_b

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->getCurrentPosition()Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setMovePosition(Landroid/graphics/Rect;)V

    :goto_6
    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$900(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_c

    invoke-interface {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->moveToRight()V

    goto :goto_6

    :cond_c
    invoke-interface {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->moveToLeft()V

    goto :goto_6

    :cond_d
    const/4 v6, 0x0

    move/from16 v9, v18

    :goto_7
    if-lt v9, v14, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$700(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    invoke-interface {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->startAnimation()V

    const/4 v6, 0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_7

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$900(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;->getRightButton()Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;->getLeftButton()Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    move-result-object v10

    if-eqz v15, :cond_f

    invoke-interface {v15, v10}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setLeftButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    :cond_f
    if-eqz v10, :cond_10

    invoke-interface {v10, v15}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setRightButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;->setRightButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v20

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->getLeftButton()Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;->setLeftButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->getLeftButton()Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    move-result-object v11

    if-eqz v11, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v11, v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setRightButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setLeftButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$700(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v21, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static/range {v21 .. v21}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$700(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v21, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static/range {v21 .. v21}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v21

    move-object/from16 v0, v20

    move/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;->getLeftButton()Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;->getRightButton()Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    move-result-object v15

    if-eqz v10, :cond_13

    invoke-interface {v10, v15}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setRightButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    :cond_13
    if-eqz v15, :cond_14

    invoke-interface {v15, v10}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setLeftButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;->setLeftButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v20

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->getRightButton()Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;->setRightButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->getRightButton()Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    move-result-object v16

    if-eqz v16, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setLeftButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setRightButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    goto/16 :goto_8

    :cond_16
    move/from16 v9, v18

    :goto_9
    if-gt v9, v14, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$700(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    instance-of v0, v4, Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move/from16 v20, v0

    if-eqz v20, :cond_17

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->getCurrentPosition()Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setMovePosition(Landroid/graphics/Rect;)V

    :goto_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$900(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_18

    invoke-interface {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->moveToLeft()V

    goto :goto_a

    :cond_18
    invoke-interface {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->moveToRight()V

    goto :goto_a

    :cond_19
    const/4 v6, 0x0

    move/from16 v9, v18

    :goto_b
    if-gt v9, v14, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$700(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    invoke-interface {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->startAnimation()V

    const/4 v6, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$900(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;->getRightButton()Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;->getLeftButton()Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    move-result-object v10

    if-eqz v15, :cond_1b

    invoke-interface {v15, v10}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setLeftButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    :cond_1b
    if-eqz v10, :cond_1c

    invoke-interface {v10, v15}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setRightButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;->setLeftButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v20

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->getRightButton()Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;->setRightButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->getRightButton()Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    move-result-object v16

    if-eqz v16, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setLeftButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setRightButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    goto/16 :goto_8

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;->getLeftButton()Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;->getRightButton()Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    move-result-object v15

    if-eqz v10, :cond_1f

    invoke-interface {v10, v15}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setRightButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    :cond_1f
    if-eqz v15, :cond_20

    invoke-interface {v15, v10}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setLeftButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;->setRightButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v20

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->getLeftButton()Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;->setLeftButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->getLeftButton()Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    move-result-object v11

    if-eqz v11, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v11, v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setRightButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setLeftButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    goto/16 :goto_8
.end method

.method public touchUp(Landroid/graphics/Rect;Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;->setLeftBarVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mBtnCtrlLayout:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1800(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Landroid/widget/FrameLayout;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v4, "846"

    const-string v5, "8572"

    const-string v6, "Reorder"

    invoke-static {v4, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mBtnCtrlLayout:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1800(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mBtnCtrlLayout:Landroid/widget/FrameLayout;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1800(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$700(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->copyButtonsNPosition(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v5

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->changeNearButtonInfo(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V
    invoke-static {v4, v5, p2}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1700(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    invoke-virtual {p2, v7}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setTranslationX(F)V

    invoke-virtual {p2, v7}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setTranslationY(F)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;->getCurrentPosition()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2, v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setLeft(I)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;->getCurrentPosition()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setTop(I)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;->getCurrentPosition()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2, v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setRight(I)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;->getCurrentPosition()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setBottom(I)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p2, v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setAlpha(F)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->val$textView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$900(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c000a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->val$current_arrow:Landroid/widget/ImageView;

    const v5, 0x7f02007b

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;->setCheckBoxVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;->setLeftBarColor_Up()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mBtnCtrlLayout:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1800(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Landroid/widget/FrameLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mBtnCtrlLayout:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1800(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->droppedIndex:I
    invoke-static {v4, v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$2002(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;I)I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->thumbnailIndex:I
    invoke-static {v4, v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1402(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;I)I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$700(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$700(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;->destroy()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    const/4 v5, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    invoke-static {v4, v5}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1302(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$700(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->addButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$2100(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$700(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$700(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    check-cast v3, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v3, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->storeIndex(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$700(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->updateThumb()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->triggerSwapNotification()V
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$2200(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->setFrameCenter()V
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$500(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1000(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1000(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->setScrollable(Z)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1000(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    move-result-object v4

    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->getLeft()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->scrollToLineWithoutDelay(I)V

    :cond_3
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->swapAnimation:Z
    invoke-static {v4, v8}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1102(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;Z)Z

    goto/16 :goto_0
.end method
