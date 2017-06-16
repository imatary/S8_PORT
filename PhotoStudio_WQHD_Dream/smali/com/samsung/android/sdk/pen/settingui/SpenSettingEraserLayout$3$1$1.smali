.class Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$3$1$1;
.super Ljava/lang/Object;
.source "SpenSettingEraserLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$3$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$3$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$3$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$3$1$1;->this$2:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$3$1$1;->this$2:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$3$1;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$3$1;->this$1:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$3;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$EventListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->access$1000(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$EventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$3$1$1;->this$2:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$3$1;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$3$1;->this$1:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$3;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$EventListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->access$1000(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$EventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$EventListener;->onClearAll()V

    :cond_0
    return-void
.end method
