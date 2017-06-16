.class Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$20;
.super Ljava/lang/Object;
.source "SpenSettingPenLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->onSizeChanged(IIII)V
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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$20;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$20;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->requestLayout()V

    return-void
.end method
