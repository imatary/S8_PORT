.class Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$5$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SpenSettingSelectionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$5;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$5;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$5$1;->this$1:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$5;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$5$1;->this$1:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$5;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->setVisibility(I)V

    return-void
.end method
