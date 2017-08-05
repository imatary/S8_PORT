.class public Lcom/android/phone/nwservice/RoamingGuidanceSetting;
.super Landroid/preference/PreferenceActivity;
.source "RoamingGuidanceSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/nwservice/RoamingGuidanceSetting$1;
    }
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreference:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceScreen;",
            ">;"
        }
    .end annotation
.end field

.field private mRoamingGuidance1Pref:Landroid/preference/PreferenceScreen;

.field private mRoamingGuidance2Pref:Landroid/preference/PreferenceScreen;

.field private mRoamingGuidance3Pref:Landroid/preference/PreferenceScreen;

.field private mTelMan:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/nwservice/RoamingGuidanceSetting;->mPreference:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/phone/nwservice/RoamingGuidanceSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/nwservice/RoamingGuidanceSetting$1;-><init>(Lcom/android/phone/nwservice/RoamingGuidanceSetting;)V

    iput-object v0, p0, Lcom/android/phone/nwservice/RoamingGuidanceSetting;->handler:Landroid/os/Handler;

    return-void
.end method

.method private getRoamingGuidanceSettingList()V
    .locals 4

    const-string/jumbo v2, "roaming_guidance_active_pref"

    invoke-virtual {p0, v2}, Lcom/android/phone/nwservice/RoamingGuidanceSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/nwservice/RoamingGuidanceSetting;->mRoamingGuidance1Pref:Landroid/preference/PreferenceScreen;

    const-string/jumbo v2, "roaming_guidance_deactive_pref"

    invoke-virtual {p0, v2}, Lcom/android/phone/nwservice/RoamingGuidanceSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/nwservice/RoamingGuidanceSetting;->mRoamingGuidance2Pref:Landroid/preference/PreferenceScreen;

    const-string/jumbo v2, "roaming_guidance_check_pref"

    invoke-virtual {p0, v2}, Lcom/android/phone/nwservice/RoamingGuidanceSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/nwservice/RoamingGuidanceSetting;->mRoamingGuidance3Pref:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/phone/nwservice/RoamingGuidanceSetting;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/nwservice/RoamingGuidanceSetting;->mRoamingGuidance1Pref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/phone/nwservice/RoamingGuidanceSetting;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/nwservice/RoamingGuidanceSetting;->mRoamingGuidance2Pref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/phone/nwservice/RoamingGuidanceSetting;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/nwservice/RoamingGuidanceSetting;->mRoamingGuidance3Pref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/phone/nwservice/RoamingGuidanceSetting;->mPreference:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private procUSSDCommand(Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x3ed

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/phone/nwservice/RoamingGuidanceSetting;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/nwservice/RoamingGuidanceSetting;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/phone/nwservice/RoamingGuidanceSetting;->showDialog(I)V

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsJpn;->setCheckCurrentSetting(Z)V

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsJpn;->setChangeCurrentSetting(Z)V

    const-string/jumbo v1, "RoamingGuidanceSetting"

    const-string/jumbo v2, "skip USSD request"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/nwservice/RoamingGuidanceSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x3e9

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/RoamingGuidanceSetting;->showDialog(I)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v4}, Lcom/android/phone/nwservice/RoamingGuidanceSetting;->showDialog(I)V

    const-string/jumbo v1, "RoamingGuidanceSetting"

    const-string/jumbo v2, "CallStateException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f070034

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/RoamingGuidanceSetting;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/nwservice/RoamingGuidanceSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/nwservice/RoamingGuidanceSetting;->mTelMan:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/nwservice/RoamingGuidanceSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/nwservice/RoamingGuidanceSetting;->handler:Landroid/os/Handler;

    const/16 v3, 0x34

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/phone/nwservice/RoamingGuidanceSetting;->getRoamingGuidanceSettingList()V

    invoke-virtual {p0}, Lcom/android/phone/nwservice/RoamingGuidanceSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    const/4 v5, 0x0

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v4

    return-object v4

    :sswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const v4, 0x7f0d0b0b

    invoke-virtual {p0, v4}, Lcom/android/phone/nwservice/RoamingGuidanceSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-object v0

    :sswitch_1
    const v3, 0x7f0d0392

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v3}, Lcom/android/phone/nwservice/RoamingGuidanceSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0d056c

    invoke-virtual {p0, v4}, Lcom/android/phone/nwservice/RoamingGuidanceSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_0
        0x3ed -> :sswitch_1
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/nwservice/RoamingGuidanceSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/nwservice/RoamingGuidanceSetting;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/nwservice/RoamingGuidanceSetting;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v3

    if-gtz v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.phone.nwservice.NetworkServiceRoamingSettings"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "com.android.phone.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/RoamingGuidanceSetting;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/nwservice/RoamingGuidanceSetting;->finish()V

    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "RoamingGuidanceSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startActivity() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getOrder()I

    move-result v0

    const-string/jumbo v1, "RoamingGuidanceSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPreferenceClick: position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const-string/jumbo v1, "*126#"

    invoke-direct {p0, v1}, Lcom/android/phone/nwservice/RoamingGuidanceSetting;->procUSSDCommand(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsJpn;->setChangeCurrentSetting(Z)V

    :goto_0
    return v4

    :cond_0
    if-ne v0, v4, :cond_1

    const-string/jumbo v1, "#126#"

    invoke-direct {p0, v1}, Lcom/android/phone/nwservice/RoamingGuidanceSetting;->procUSSDCommand(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsJpn;->setChangeCurrentSetting(Z)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "*#126#"

    invoke-direct {p0, v1}, Lcom/android/phone/nwservice/RoamingGuidanceSetting;->procUSSDCommand(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsJpn;->setCheckCurrentSetting(Z)V

    goto :goto_0
.end method
