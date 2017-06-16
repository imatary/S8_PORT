.class Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$14;
.super Ljava/lang/Object;
.source "SpenSettingPenLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$14;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$14;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPresetListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$PresetListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$3800(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$PresetListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$14;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPresetListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$PresetListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$3800(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$PresetListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$14;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$PresetListener;->onAdded(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    :cond_0
    return-void
.end method
