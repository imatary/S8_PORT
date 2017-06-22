.class Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$2;
.super Ljava/lang/Object;
.source "SpenSettingPenLayout.java"

# interfaces
.implements Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface$ChangeListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewPenInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewPenInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;->getPenSettingInfo()Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object p1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewPenInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;->setPenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    :cond_0
    return-void
.end method
