.class Lcom/android/phone/VisualCallSettingActivity$4;
.super Ljava/lang/Object;
.source "VisualCallSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/VisualCallSettingActivity;->showUserAgreementDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VisualCallSettingActivity;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;

.field final synthetic val$wlancheckbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/phone/VisualCallSettingActivity;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/VisualCallSettingActivity$4;->this$0:Lcom/android/phone/VisualCallSettingActivity;

    iput-object p2, p0, Lcom/android/phone/VisualCallSettingActivity$4;->val$checkbox:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/phone/VisualCallSettingActivity$4;->val$wlancheckbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v2, p0, Lcom/android/phone/VisualCallSettingActivity$4;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/phone/VisualCallSettingActivity$4;->this$0:Lcom/android/phone/VisualCallSettingActivity;

    invoke-static {v2, v1}, Lcom/android/phone/VisualCallSettingActivity;->-wrap0(Lcom/android/phone/VisualCallSettingActivity;I)V

    iget-object v2, p0, Lcom/android/phone/VisualCallSettingActivity$4;->this$0:Lcom/android/phone/VisualCallSettingActivity;

    invoke-virtual {v2}, Lcom/android/phone/VisualCallSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "visual_call_status"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/phone/VisualCallSettingActivity$4;->val$wlancheckbox:Landroid/widget/CheckBox;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/VisualCallSettingActivity$4;->val$wlancheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/phone/VisualCallSettingActivity$4;->this$0:Lcom/android/phone/VisualCallSettingActivity;

    invoke-virtual {v2}, Lcom/android/phone/VisualCallSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "visual_call_update_type"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/phone/VisualCallSettingActivity$4;->this$0:Lcom/android/phone/VisualCallSettingActivity;

    invoke-static {v2}, Lcom/android/phone/VisualCallSettingActivity;->-wrap1(Lcom/android/phone/VisualCallSettingActivity;)V

    iget-object v2, p0, Lcom/android/phone/VisualCallSettingActivity$4;->this$0:Lcom/android/phone/VisualCallSettingActivity;

    invoke-virtual {v2}, Lcom/android/phone/VisualCallSettingActivity;->updateTurnOnStatus()V

    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
