.class Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$6$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SpenSettingSelectionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$6;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$6;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$6$1;->this$1:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$6;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$6$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$6$1;->this$1:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$6;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$6;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$6$1;->val$v:Landroid/view/View;

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->selectionTypeSetting(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->access$1700(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;Landroid/view/View;)V

    return-void
.end method
