.class Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$19;
.super Ljava/lang/Object;
.source "SpenSettingPenLayout.java"

# interfaces
.implements Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface$SpenBackgroundColorChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->setCanvasView(Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;)V
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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$19;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Z)V
    .locals 4

    if-nez p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$19;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    const-string v3, "com.samsung.android.sdk.pen.pen.preload.MagicPen"

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getPenNameIndex(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$5000(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$19;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->removePen(I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$19;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    const/4 v3, 0x1

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mBgTransparent:Z
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$5102(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;Z)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
