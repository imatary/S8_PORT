.class Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;
.super Ljava/lang/Object;
.source "SipEditor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/sip/SipEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdvancedSettings"
.end annotation


# instance fields
.field private mAdvancedSettingsTrigger:Landroid/preference/Preference;

.field private mPreferences:[Landroid/preference/Preference;

.field private mShowing:Z

.field final synthetic this$0:Lcom/android/services/telephony/sip/SipEditor;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/sip/SipEditor;)V
    .locals 2

    iput-object p1, p0, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->this$0:Lcom/android/services/telephony/sip/SipEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->mShowing:Z

    invoke-virtual {p1}, Lcom/android/services/telephony/sip/SipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const v1, 0x7f0d019a

    invoke-virtual {p1, v1}, Lcom/android/services/telephony/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->mAdvancedSettingsTrigger:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->mAdvancedSettingsTrigger:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->loadAdvancedPreferences()V

    return-void
.end method

.method private hide()V
    .locals 5

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->mShowing:Z

    iget-object v3, p0, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->mAdvancedSettingsTrigger:Landroid/preference/Preference;

    const v4, 0x7f0d01a2

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v3, p0, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->this$0:Lcom/android/services/telephony/sip/SipEditor;

    invoke-virtual {v3}, Lcom/android/services/telephony/sip/SipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v3, p0, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->mPreferences:[Landroid/preference/Preference;

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private loadAdvancedPreferences()V
    .locals 9

    iget-object v7, p0, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->this$0:Lcom/android/services/telephony/sip/SipEditor;

    invoke-virtual {v7}, Lcom/android/services/telephony/sip/SipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->this$0:Lcom/android/services/telephony/sip/SipEditor;

    const v8, 0x7f07005b

    invoke-virtual {v7, v8}, Lcom/android/services/telephony/sip/SipEditor;->addPreferencesFromResource(I)V

    iget-object v7, p0, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->this$0:Lcom/android/services/telephony/sip/SipEditor;

    const v8, 0x7f0d01b6

    invoke-virtual {v7, v8}, Lcom/android/services/telephony/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v7

    new-array v7, v7, [Landroid/preference/Preference;

    iput-object v7, p0, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->mPreferences:[Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    const/4 v1, 0x0

    iget-object v7, p0, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->mPreferences:[Landroid/preference/Preference;

    array-length v2, v7

    move v4, v3

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setOrder(I)V

    iget-object v7, p0, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->this$0:Lcom/android/services/telephony/sip/SipEditor;

    invoke-static {v7, v5}, Lcom/android/services/telephony/sip/SipEditor;->-wrap6(Lcom/android/services/telephony/sip/SipEditor;Landroid/preference/Preference;)V

    iget-object v7, p0, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->mPreferences:[Landroid/preference/Preference;

    aput-object v5, v7, v1

    add-int/lit8 v1, v1, 0x1

    move v4, v3

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->mShowing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->show()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->hide()V

    goto :goto_0
.end method

.method show()V
    .locals 5

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->mShowing:Z

    iget-object v2, p0, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->mAdvancedSettingsTrigger:Landroid/preference/Preference;

    const v3, 0x7f0d01a3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v2, p0, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->this$0:Lcom/android/services/telephony/sip/SipEditor;

    invoke-virtual {v2}, Lcom/android/services/telephony/sip/SipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v3, p0, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->mPreferences:[Landroid/preference/Preference;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
