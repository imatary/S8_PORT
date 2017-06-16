.class Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$8;
.super Ljava/lang/Object;
.source "SpenSettingSelectionLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$8;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$8;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;

    const/4 v1, 0x1

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mNeedRotateWhenSetPosition:Z
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->access$1802(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;Z)Z

    return-void
.end method
