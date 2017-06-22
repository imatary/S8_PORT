.class Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$16;
.super Ljava/lang/Object;
.source "SpenSettingPenLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$16;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$16;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    const/4 v1, 0x1

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNeedRotateWhenSetPosition:Z
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$4402(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;Z)Z

    return-void
.end method
