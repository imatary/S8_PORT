.class Lcom/android/phone/callsettings/IntCallSettingPreference$2;
.super Ljava/lang/Object;
.source "IntCallSettingPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IntCallSettingPreference;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/IntCallSettingPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IntCallSettingPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/IntCallSettingPreference$2;->this$0:Lcom/android/phone/callsettings/IntCallSettingPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, p1

    check-cast v1, Landroid/preference/TwoStatePreference;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/IntCallSettingPreference$2;->this$0:Lcom/android/phone/callsettings/IntCallSettingPreference;

    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallSettingPreference$2;->this$0:Lcom/android/phone/callsettings/IntCallSettingPreference;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/android/phone/callsettings/IntCallSettingPreference;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    const/4 v1, 0x0

    return v1
.end method
