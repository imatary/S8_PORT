.class Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$5;
.super Ljava/lang/Object;
.source "SpenSettingSelectionLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mTotalLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->access$1600(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$5$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$5$1;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$5;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
