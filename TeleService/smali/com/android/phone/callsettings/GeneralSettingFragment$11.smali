.class Lcom/android/phone/callsettings/GeneralSettingFragment$11;
.super Ljava/lang/Object;
.source "GeneralSettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/GeneralSettingFragment;->showDataEnableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/GeneralSettingFragment;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/GeneralSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment$11;->this$0:Lcom/android/phone/callsettings/GeneralSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string/jumbo v0, "GeneralSettingFragment"

    const-string/jumbo v1, "enable data"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "feature_sbm"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment$11;->this$0:Lcom/android/phone/callsettings/GeneralSettingFragment;

    invoke-static {v0}, Lcom/android/phone/callsettings/GeneralSettingFragment;->-get5(Lcom/android/phone/callsettings/GeneralSettingFragment;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/utils/GeneralSettingUtils;->setMobileDataEnabled(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment$11;->this$0:Lcom/android/phone/callsettings/GeneralSettingFragment;

    invoke-static {v0}, Lcom/android/phone/callsettings/GeneralSettingFragment;->-wrap3(Lcom/android/phone/callsettings/GeneralSettingFragment;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment$11;->this$0:Lcom/android/phone/callsettings/GeneralSettingFragment;

    invoke-static {v0}, Lcom/android/phone/callsettings/GeneralSettingFragment;->-wrap1(Lcom/android/phone/callsettings/GeneralSettingFragment;)I

    goto :goto_0
.end method
