.class Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$10;
.super Ljava/lang/Object;
.source "SpenSettingSelectionLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->onVisibilityChanged(Landroid/view/View;I)V
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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$10;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$10;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mCloseButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->access$2400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout$10;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->mCloseButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;->access$2400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingSelectionLayout;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    return-void
.end method
