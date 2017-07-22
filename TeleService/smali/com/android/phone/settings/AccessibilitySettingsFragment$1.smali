.class Lcom/android/phone/settings/AccessibilitySettingsFragment$1;
.super Landroid/telephony/PhoneStateListener;
.source "AccessibilitySettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/AccessibilitySettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/AccessibilitySettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/AccessibilitySettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment$1;->this$0:Lcom/android/phone/settings/AccessibilitySettingsFragment;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment$1;->this$0:Lcom/android/phone/settings/AccessibilitySettingsFragment;

    invoke-virtual {v4}, Lcom/android/phone/settings/AccessibilitySettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string/jumbo v5, "button_tty_mode_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment$1;->this$0:Lcom/android/phone/settings/AccessibilitySettingsFragment;

    invoke-static {v4}, Lcom/android/phone/settings/AccessibilitySettingsFragment;->-get0(Lcom/android/phone/settings/AccessibilitySettingsFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment$1;->this$0:Lcom/android/phone/settings/AccessibilitySettingsFragment;

    invoke-static {v4}, Lcom/android/phone/settings/AccessibilitySettingsFragment;->-wrap0(Lcom/android/phone/settings/AccessibilitySettingsFragment;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment$1;->this$0:Lcom/android/phone/settings/AccessibilitySettingsFragment;

    invoke-static {v4}, Lcom/android/phone/settings/AccessibilitySettingsFragment;->-wrap1(Lcom/android/phone/settings/AccessibilitySettingsFragment;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    if-nez p1, :cond_4

    :cond_1
    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_2
    return-void

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1
.end method
