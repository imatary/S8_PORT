.class Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$21;
.super Ljava/lang/Object;
.source "SpenSettingPenLayout.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$21;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 8

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$21;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldMovableRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$3400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$21;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$2900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$21;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$2900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$21;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getMovableRect()Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$3300(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$21;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$21;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsRotated:Z
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$5200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$21;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    const/4 v5, 0x0

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsRotated:Z
    invoke-static {v4, v5}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$5202(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;Z)Z

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$21;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    const/4 v5, 0x1

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsRotated2:Z
    invoke-static {v4, v5}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$5302(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$21;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsRotated:Z
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$5200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$21;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsRotated2:Z
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$5300(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$21;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    const/4 v5, 0x0

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsRotated2:Z
    invoke-static {v4, v5}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$5302(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;Z)Z

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$21;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsRotated:Z
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$5200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$21;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNeedRotateWhenSetPosition:Z
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$4400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$21;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->rotatePosition()V
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$5400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$21;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    const/4 v5, 0x0

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsRotated:Z
    invoke-static {v4, v5}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$5202(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;Z)Z

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$21;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    const/4 v5, 0x1

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIsRotated2:Z
    invoke-static {v4, v5}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$5302(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;Z)Z

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$21;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldMovableRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$3400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$21;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getMovableRect()Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$3300(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_3
    :goto_2
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$21$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$21$1;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$21;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$21;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$21;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mLastSetPosition:[I
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$5500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)[I

    move-result-object v5

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$21;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mLastSetPosition:[I
    invoke-static {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$5500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)[I

    move-result-object v6

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->setPosition(II)V

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$21;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNeedRecalculateRotate:Z
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$5600(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$21;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->checkPosition()V
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$5700(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    :cond_6
    if-ne p2, p6, :cond_7

    move/from16 v0, p8

    if-ne p4, v0, :cond_7

    if-ne p3, p7, :cond_7

    move/from16 v0, p9

    if-eq p5, v0, :cond_3

    :cond_7
    if-nez v3, :cond_3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$21;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->checkPosition()V
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$5700(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
