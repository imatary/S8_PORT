.class Lcom/android/phone/VisualCallSettingActivity$1;
.super Ljava/lang/Object;
.source "VisualCallSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/VisualCallSettingActivity;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VisualCallSettingActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/VisualCallSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/VisualCallSettingActivity$1;->this$0:Lcom/android/phone/VisualCallSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/phone/VisualCallSettingActivity$1;->this$0:Lcom/android/phone/VisualCallSettingActivity;

    invoke-static {v2}, Lcom/android/phone/VisualCallSettingActivity;->-get0(Lcom/android/phone/VisualCallSettingActivity;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v2, "VisualCallSettingActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onClick mSubAppBarView value :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v2, p0, Lcom/android/phone/VisualCallSettingActivity$1;->this$0:Lcom/android/phone/VisualCallSettingActivity;

    invoke-virtual {v2}, Lcom/android/phone/VisualCallSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "visual_call_status"

    if-eqz v0, :cond_1

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/phone/VisualCallSettingActivity$1;->this$0:Lcom/android/phone/VisualCallSettingActivity;

    invoke-virtual {v1}, Lcom/android/phone/VisualCallSettingActivity;->updateTurnOnStatus()V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
