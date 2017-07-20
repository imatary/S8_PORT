.class public Lcom/android/phone/callsettings/AuCallRejection;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "AuCallRejection.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/AuCallRejection$1;
    }
.end annotation


# instance fields
.field private actionBar:Landroid/app/ActionBar;

.field private mCBarringKddi:Lcom/android/phone/callsettings/KddiCBarring;

.field public mCBarringListener:Lcom/android/phone/callsettings/CBarringMessageListener;

.field private mNetworkBlackList:Landroid/preference/PreferenceScreen;

.field private mRequestNubmerService:Landroid/preference/SwitchPreference;

.field private prefSet:Landroid/preference/PreferenceScreen;


# direct methods
.method static synthetic -get0(Lcom/android/phone/callsettings/AuCallRejection;)Lcom/android/phone/callsettings/KddiCBarring;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/AuCallRejection;->mCBarringKddi:Lcom/android/phone/callsettings/KddiCBarring;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/callsettings/AuCallRejection;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/AuCallRejection;->mRequestNubmerService:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/callsettings/AuCallRejection;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/AuCallRejection;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/phone/callsettings/AuCallRejection$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/AuCallRejection$1;-><init>(Lcom/android/phone/callsettings/AuCallRejection;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/AuCallRejection;->mCBarringListener:Lcom/android/phone/callsettings/CBarringMessageListener;

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "AuCallRejection"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/AuCallRejection;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AuCallRejection;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/AuCallRejection;->prefSet:Landroid/preference/PreferenceScreen;

    const-string/jumbo v0, "network_black_list_kddi_preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/AuCallRejection;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/callsettings/AuCallRejection;->mNetworkBlackList:Landroid/preference/PreferenceScreen;

    const-string/jumbo v0, "request_nubmer_service_kddi_preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/AuCallRejection;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/phone/callsettings/AuCallRejection;->mRequestNubmerService:Landroid/preference/SwitchPreference;

    new-instance v0, Lcom/android/phone/callsettings/KddiCBarring;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AuCallRejection;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/KddiCBarring;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/AuCallRejection;->mCBarringKddi:Lcom/android/phone/callsettings/KddiCBarring;

    iget-object v0, p0, Lcom/android/phone/callsettings/AuCallRejection;->mCBarringKddi:Lcom/android/phone/callsettings/KddiCBarring;

    iget-object v1, p0, Lcom/android/phone/callsettings/AuCallRejection;->mCBarringListener:Lcom/android/phone/callsettings/CBarringMessageListener;

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/KddiCBarring;->registerCBarringMessageListener(Lcom/android/phone/callsettings/CBarringMessageListener;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/AuCallRejection;->mRequestNubmerService:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneGlobals;->setNeedDataFromNetwork(Z)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AuCallRejection;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/AuCallRejection;->actionBar:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/android/phone/callsettings/AuCallRejection;->actionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/AuCallRejection;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/phone/callsettings/AuCallRejection;->mCBarringKddi:Lcom/android/phone/callsettings/KddiCBarring;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/AuCallRejection;->mCBarringKddi:Lcom/android/phone/callsettings/KddiCBarring;

    iget-object v1, p0, Lcom/android/phone/callsettings/AuCallRejection;->mCBarringListener:Lcom/android/phone/callsettings/CBarringMessageListener;

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/KddiCBarring;->deregisterCBarringMessageListener(Lcom/android/phone/callsettings/CBarringMessageListener;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/phone/callsettings/AuCallRejection;->mRequestNubmerService:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_0

    const-string/jumbo v2, "AuCallRejection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "toma_msg onPreferenceChange newValue : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/callsettings/AuCallRejection;->mCBarringKddi:Lcom/android/phone/callsettings/KddiCBarring;

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/phone/callsettings/AuCallRejection;->mCBarringKddi:Lcom/android/phone/callsettings/KddiCBarring;

    if-eqz v1, :cond_1

    move v2, v3

    :goto_0
    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v6}, Lcom/android/phone/callsettings/KddiCBarring;->setCommad(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return v3

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, " illegal transition from NETWORK_ERROR"

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/AuCallRejection;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 6

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getNeedDataFromNetwork()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "needDataFromNetwork : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/AuCallRejection;->log(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/callsettings/AuCallRejection;->mCBarringKddi:Lcom/android/phone/callsettings/KddiCBarring;

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/phone/callsettings/KddiCBarring;->setCommad(IILjava/lang/String;)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneGlobals;->setNeedDataFromNetwork(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "illegal transition from NETWORK_ERROR"

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/AuCallRejection;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
