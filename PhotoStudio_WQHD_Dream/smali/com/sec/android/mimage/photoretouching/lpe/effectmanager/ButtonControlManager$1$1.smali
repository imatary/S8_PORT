.class Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;
.super Ljava/lang/Object;
.source "ButtonControlManager.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout$ActivityLayoutTouchUpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->GestureLongPress(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public touchDown(Landroid/graphics/Rect;)V
    .locals 2

    const-string v0, "PEDIT_ButtonControlManager"

    const-string v1, " touchDown in button control mananger "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;->setScrollable(Z)V

    :cond_0
    return-void
.end method

.method public touchMove(Landroid/graphics/Rect;)V
    .locals 21

    const-string v17, "PEDIT_ButtonControlManager"

    const-string v18, " touchMove in button control mananger "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;

    move-result-object v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;->setScrollable(Z)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v18, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;->getScrollY()I

    move-result v18

    sub-int v17, v17, v18

    if-gez v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;->getScrollY()I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual/range {v17 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;->scrollBy(II)V

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mBtnCtrlLayout:Landroid/widget/FrameLayout;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Landroid/widget/FrameLayout;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v18, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mBtnCtrlLayout:Landroid/widget/FrameLayout;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Landroid/widget/FrameLayout;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/FrameLayout;->getTop()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    const/4 v10, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v18, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->getLeft()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->setLeftBarColor_Move(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_1
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    invoke-interface {v3}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->runningAnimation()Z

    move-result v18

    if-eqz v18, :cond_4

    :cond_2
    :goto_2
    return-void

    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v18, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;->getScrollY()I

    move-result v18

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v18, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;->getHeight()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;->getScrollY()I

    move-result v20

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;->getHeight()I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual/range {v17 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;->scrollBy(II)V

    goto/16 :goto_0

    :cond_4
    invoke-interface {v3}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->getCurrentPosition()Landroid/graphics/Rect;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v18

    if-eqz v18, :cond_1

    const/16 v16, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v18

    if-eqz v18, :cond_6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v16, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v6, v18, v19

    :cond_5
    :goto_3
    mul-int v18, v16, v6

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v10, v18

    if-gez v18, :cond_1

    move-object v14, v3

    mul-int v18, v16, v6

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v0, v18

    int-to-float v10, v0

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v18

    if-eqz v18, :cond_7

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    sub-int v16, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v6, v18, v19

    goto :goto_3

    :cond_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v18

    if-eqz v18, :cond_8

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    sub-int v16, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v6, v18, v19

    goto :goto_3

    :cond_8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v18

    if-eqz v18, :cond_5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v16, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v6, v18, v19

    goto/16 :goto_3

    :cond_9
    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v18, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    if-eq v15, v11, :cond_2

    const/16 v17, -0x1

    move/from16 v0, v17

    if-le v15, v0, :cond_2

    const/16 v17, -0x1

    move/from16 v0, v17

    if-le v11, v0, :cond_2

    if-le v15, v11, :cond_16

    move v7, v15

    :goto_4
    if-lt v7, v11, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    instance-of v0, v3, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move/from16 v17, v0

    if-eqz v17, :cond_a

    invoke-interface {v14}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->getCurrentPosition()Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->setMovePosition(Landroid/graphics/Rect;)V

    :goto_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-interface {v3}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->moveToRight()V

    goto :goto_5

    :cond_b
    invoke-interface {v3}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->moveToLeft()V

    goto :goto_5

    :cond_c
    const/4 v5, 0x0

    move v7, v15

    :goto_6
    if-lt v7, v11, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    invoke-interface {v3}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->startAnimation()V

    const/4 v5, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_6

    :cond_d
    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mIsButtonChanged:Z
    invoke-static {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$702(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mDoneBtn:Landroid/view/View;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$800(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setEnabled(Z)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->getRightButton()Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->getLeftButton()Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    move-result-object v8

    if-eqz v12, :cond_f

    invoke-interface {v12, v8}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->setLeftButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    :cond_f
    if-eqz v8, :cond_10

    invoke-interface {v8, v12}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->setRightButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->setRightButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v17

    invoke-interface {v14}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->getLeftButton()Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->setLeftButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    invoke-interface {v14}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->getLeftButton()Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    move-result-object v9

    if-eqz v9, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->setRightButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->setLeftButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v18, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v18, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v15, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->getLeftButton()Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->getRightButton()Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    move-result-object v12

    if-eqz v8, :cond_13

    invoke-interface {v8, v12}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->setRightButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    :cond_13
    if-eqz v12, :cond_14

    invoke-interface {v12, v8}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->setLeftButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->setLeftButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v17

    invoke-interface {v14}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->getRightButton()Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->setRightButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    invoke-interface {v14}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->getRightButton()Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    move-result-object v13

    if-eqz v13, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->setLeftButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->setRightButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    goto/16 :goto_7

    :cond_16
    move v7, v15

    :goto_8
    if-gt v7, v11, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    instance-of v0, v3, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move/from16 v17, v0

    if-eqz v17, :cond_17

    invoke-interface {v14}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->getCurrentPosition()Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->setMovePosition(Landroid/graphics/Rect;)V

    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_18

    invoke-interface {v3}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->moveToLeft()V

    goto :goto_9

    :cond_18
    invoke-interface {v3}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->moveToRight()V

    goto :goto_9

    :cond_19
    const/4 v5, 0x0

    move v7, v15

    :goto_a
    if-gt v7, v11, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    invoke-interface {v3}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->startAnimation()V

    const/4 v5, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_1a
    if-eqz v5, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mIsButtonChanged:Z
    invoke-static {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$702(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mDoneBtn:Landroid/view/View;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$800(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setEnabled(Z)V

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->getRightButton()Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->getLeftButton()Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    move-result-object v8

    if-eqz v12, :cond_1c

    invoke-interface {v12, v8}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->setLeftButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    :cond_1c
    if-eqz v8, :cond_1d

    invoke-interface {v8, v12}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->setRightButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->setLeftButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v17

    invoke-interface {v14}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->getRightButton()Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->setRightButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    invoke-interface {v14}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->getRightButton()Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    move-result-object v13

    if-eqz v13, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->setLeftButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->setRightButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    goto/16 :goto_7

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->getLeftButton()Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->getRightButton()Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    move-result-object v12

    if-eqz v8, :cond_20

    invoke-interface {v8, v12}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->setRightButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    :cond_20
    if-eqz v12, :cond_21

    invoke-interface {v12, v8}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->setLeftButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->setRightButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v17

    invoke-interface {v14}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->getLeftButton()Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->setLeftButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    invoke-interface {v14}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->getLeftButton()Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    move-result-object v9

    if-eqz v9, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->setRightButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->setLeftButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    goto/16 :goto_7
.end method

.method public touchUp(Landroid/graphics/Rect;Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;)V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "PEDIT_ButtonControlManager"

    const-string v2, " touchUp in button control mananger "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mBtnCtrlLayout:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mBtnCtrlLayout:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->copyButtonsNPosition(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v2

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->changeNearButtonInfo(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V
    invoke-static {v1, v2, p2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    invoke-virtual {p2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->setTranslationX(F)V

    invoke-virtual {p2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->setTranslationY(F)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->getCurrentPosition()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2, v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->setLeft(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->getCurrentPosition()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->setTop(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->getCurrentPosition()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2, v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->setRight(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->getCurrentPosition()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->setBottom(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->setCheckBoxVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->setLeftBarColor_Up()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mBtnCtrlLayout:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mBtnCtrlLayout:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->destroy()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$002(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;->setScrollable(Z)V

    :cond_0
    return-void
.end method
