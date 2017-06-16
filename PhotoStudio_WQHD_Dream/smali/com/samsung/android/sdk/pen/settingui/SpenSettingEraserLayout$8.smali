.class Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$8;
.super Ljava/lang/Object;
.source "SpenSettingEraserLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$8;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$8;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;

    const/4 v1, 0x1

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mNeedRotateWhenSetPosition:Z
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->access$2302(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;Z)Z

    return-void
.end method
