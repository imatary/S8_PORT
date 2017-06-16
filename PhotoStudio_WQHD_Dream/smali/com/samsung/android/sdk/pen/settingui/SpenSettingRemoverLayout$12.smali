.class Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$12;
.super Ljava/lang/Object;
.source "SpenSettingRemoverLayout.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$12;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 6

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$12;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mMovableRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$12;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->getMovableRect()Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$700(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$12;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$12;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mIsRotated:Z
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$3200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$12;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    const/4 v3, 0x0

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mIsRotated:Z
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$3202(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$12;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mIsRotated:Z
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$3200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$12;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mNeedRotateWhenSetPosition:Z
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$2200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$12;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->rotatePosition()V
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$3300(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)V

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$12;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    const/4 v3, 0x0

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mIsRotated:Z
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$3202(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;Z)Z

    :cond_2
    :goto_2
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$12$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$12$1;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$12;)V

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
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$12;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$12;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mLastSetPosition:[I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$3400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$12;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mLastSetPosition:[I
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$3400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)[I

    move-result-object v4

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->setPosition(II)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$12;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mNeedRecalculateRotate:Z
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$3500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$12;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->checkPosition()V
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$2400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
