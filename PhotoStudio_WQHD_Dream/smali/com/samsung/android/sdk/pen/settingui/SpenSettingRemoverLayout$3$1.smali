.class Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$3$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SpenSettingRemoverLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$3;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$3$1;->this$1:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$3;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/16 v2, 0x8

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$3$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$3$1$1;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$3$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$3$1;->this$1:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$3;

    iget-object v1, v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mClearAllButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$1100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$3$1;->this$1:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$3;

    iget-object v1, v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->setVisibility(I)V

    return-void
.end method
