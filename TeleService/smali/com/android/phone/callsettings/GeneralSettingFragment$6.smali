.class Lcom/android/phone/callsettings/GeneralSettingFragment$6;
.super Ljava/lang/Object;
.source "GeneralSettingFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/GeneralSettingFragment;->initJPNSetting()V
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

    iput-object p1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment$6;->this$0:Lcom/android/phone/callsettings/GeneralSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    const-string/jumbo v2, " "

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    const-string/jumbo v2, "GeneralSettingFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPreferenceChange - mAutoAreaCodeButton "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v2, "area_code_value"

    invoke-static {v2, v0}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/GeneralSettingFragment$6;->this$0:Lcom/android/phone/callsettings/GeneralSettingFragment;

    invoke-static {v2, v0}, Lcom/android/phone/callsettings/GeneralSettingFragment;->-wrap2(Lcom/android/phone/callsettings/GeneralSettingFragment;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/GeneralSettingFragment$6;->this$0:Lcom/android/phone/callsettings/GeneralSettingFragment;

    invoke-static {v2, v0}, Lcom/android/phone/callsettings/GeneralSettingFragment;->-wrap6(Lcom/android/phone/callsettings/GeneralSettingFragment;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/GeneralSettingFragment$6;->this$0:Lcom/android/phone/callsettings/GeneralSettingFragment;

    invoke-static {v2, v0}, Lcom/android/phone/callsettings/GeneralSettingFragment;->-wrap4(Lcom/android/phone/callsettings/GeneralSettingFragment;Ljava/lang/String;)V

    return v5
.end method
