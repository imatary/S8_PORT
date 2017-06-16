.class Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$9$1;
.super Ljava/lang/Object;
.source "SpenSettingEraserLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$9;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$9;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$9;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$9$1;->this$1:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$9$1;->this$1:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$9;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->requestLayout()V

    return-void
.end method
