.class Lcom/android/phone/callsettings/VideoSettingFragment$17;
.super Ljava/lang/Object;
.source "VideoSettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/VideoSettingFragment;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/VideoSettingFragment;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/VideoSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/VideoSettingFragment$17;->this$0:Lcom/android/phone/callsettings/VideoSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment$17;->this$0:Lcom/android/phone/callsettings/VideoSettingFragment;

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoSettingFragment;->-get2(Lcom/android/phone/callsettings/VideoSettingFragment;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/phone/utils/VideoSettingUtils;->setMobileDataEnabled(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment$17;->this$0:Lcom/android/phone/callsettings/VideoSettingFragment;

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoSettingFragment;->-get2(Lcom/android/phone/callsettings/VideoSettingFragment;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/utils/VideoSettingUtils;->isAdvanceCallingOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment$17;->this$0:Lcom/android/phone/callsettings/VideoSettingFragment;

    const/16 v1, 0x322

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/VideoSettingFragment;->showDialog(I)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment$17;->this$0:Lcom/android/phone/callsettings/VideoSettingFragment;

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoSettingFragment;->-get2(Lcom/android/phone/callsettings/VideoSettingFragment;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/utils/VideoSettingUtils;->isLvcBlock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment$17;->this$0:Lcom/android/phone/callsettings/VideoSettingFragment;

    const/16 v1, 0x323

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/VideoSettingFragment;->showDialog(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment$17;->this$0:Lcom/android/phone/callsettings/VideoSettingFragment;

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoSettingFragment;->-get3(Lcom/android/phone/callsettings/VideoSettingFragment;)Landroid/preference/SwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment$17;->this$0:Lcom/android/phone/callsettings/VideoSettingFragment;

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoSettingFragment;->-get3(Lcom/android/phone/callsettings/VideoSettingFragment;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment$17;->this$0:Lcom/android/phone/callsettings/VideoSettingFragment;

    invoke-static {v0, v1}, Lcom/android/phone/callsettings/VideoSettingFragment;->-wrap0(Lcom/android/phone/callsettings/VideoSettingFragment;Z)V

    goto :goto_0
.end method
