.class Lcom/android/phone/callsettings/AccessorySettings$2;
.super Ljava/lang/Object;
.source "AccessorySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/AccessorySettings;->confirmSelectionDialog(Landroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/AccessorySettings;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/AccessorySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/AccessorySettings$2;->this$0:Lcom/android/phone/callsettings/AccessorySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/phone/callsettings/AccessorySettings$2;->this$0:Lcom/android/phone/callsettings/AccessorySettings;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/AccessorySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v5, "automatic_answering_enable_sharedpref"

    iget-object v2, p0, Lcom/android/phone/callsettings/AccessorySettings$2;->this$0:Lcom/android/phone/callsettings/AccessorySettings;

    invoke-static {v2}, Lcom/android/phone/callsettings/AccessorySettings;->-get0(Lcom/android/phone/callsettings/AccessorySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v5, p0, Lcom/android/phone/callsettings/AccessorySettings$2;->this$0:Lcom/android/phone/callsettings/AccessorySettings;

    iget-object v2, p0, Lcom/android/phone/callsettings/AccessorySettings$2;->this$0:Lcom/android/phone/callsettings/AccessorySettings;

    invoke-static {v2}, Lcom/android/phone/callsettings/AccessorySettings;->-get0(Lcom/android/phone/callsettings/AccessorySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    invoke-static {v5, v2}, Lcom/android/phone/callsettings/AccessorySettings;->-wrap0(Lcom/android/phone/callsettings/AccessorySettings;Z)V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v2, p0, Lcom/android/phone/callsettings/AccessorySettings$2;->this$0:Lcom/android/phone/callsettings/AccessorySettings;

    invoke-static {v2}, Lcom/android/phone/callsettings/AccessorySettings;->-get0(Lcom/android/phone/callsettings/AccessorySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    iget-object v5, p0, Lcom/android/phone/callsettings/AccessorySettings$2;->this$0:Lcom/android/phone/callsettings/AccessorySettings;

    invoke-static {v5}, Lcom/android/phone/callsettings/AccessorySettings;->-get0(Lcom/android/phone/callsettings/AccessorySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_2
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2
.end method
