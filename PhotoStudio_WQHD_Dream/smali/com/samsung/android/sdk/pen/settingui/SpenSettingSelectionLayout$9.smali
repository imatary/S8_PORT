.class Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$9;
.super Ljava/lang/Object;
.source "SpenSettingSelectionLayout.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 6

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mMovableRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->access$500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->getMovableRect()Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->access$700(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mIsRotated:Z
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->access$1900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;

    const/4 v3, 0x0

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mIsRotated:Z
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->access$1902(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mIsRotated:Z
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->access$1900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mNeedRotateWhenSetPosition:Z
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->access$1800(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->rotatePosition()V
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->access$2000(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)V

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;

    const/4 v3, 0x0

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mIsRotated:Z
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->access$1902(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;Z)Z

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mOldMovableRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->access$800(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->getMovableRect()Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->access$700(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_2
    :goto_2
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$9$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$9$1;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$9;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLastSetPosition:[I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->access$2100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mLastSetPosition:[I
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->access$2100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)[I

    move-result-object v4

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->setPosition(II)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mNeedRecalculateRotate:Z
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->access$2200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->checkPosition()V
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->access$2300(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)V

    :cond_5
    if-ne p2, p6, :cond_6

    if-ne p4, p8, :cond_6

    if-ne p3, p7, :cond_6

    if-eq p5, p9, :cond_2

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->checkPosition()V
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->access$2300(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
