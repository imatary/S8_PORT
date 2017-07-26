.class public Lcom/android/phone/operator/usa/UsCdmaCallForwarding;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "UsCdmaCallForwarding.java"


# instance fields
.field mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field mStateListener:Lcom/android/phone/ia/IAInterimListener;


# direct methods
.method static synthetic -wrap0(Lcom/android/phone/operator/usa/UsCdmaCallForwarding;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/operator/usa/UsCdmaCallForwarding;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/operator/usa/UsCdmaCallForwarding;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/phone/operator/usa/UsCdmaCallForwarding;->showDialog(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/usa/UsCdmaCallForwarding;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string/jumbo v0, "UsCdmaCallForwarding"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v3, "onCreate"

    invoke-direct {p0, v3, v4}, Lcom/android/phone/operator/usa/UsCdmaCallForwarding;->log(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f070064

    invoke-virtual {p0, v3}, Lcom/android/phone/operator/usa/UsCdmaCallForwarding;->addPreferencesFromResource(I)V

    const-string/jumbo v3, "us_cdma_call_forwarding_activate_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/operator/usa/UsCdmaCallForwarding;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    const-string/jumbo v3, "us_cdma_call_forwarding_deactivate_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/operator/usa/UsCdmaCallForwarding;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    new-instance v3, Lcom/android/phone/operator/usa/UsCdmaCallForwarding$1;

    invoke-direct {v3, p0}, Lcom/android/phone/operator/usa/UsCdmaCallForwarding$1;-><init>(Lcom/android/phone/operator/usa/UsCdmaCallForwarding;)V

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    new-instance v3, Lcom/android/phone/operator/usa/UsCdmaCallForwarding$2;

    invoke-direct {v3, p0}, Lcom/android/phone/operator/usa/UsCdmaCallForwarding$2;-><init>(Lcom/android/phone/operator/usa/UsCdmaCallForwarding;)V

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/UsCdmaCallForwarding;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9

    const/4 v8, 0x0

    const/high16 v7, 0x1040000

    const/4 v6, 0x1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/UsCdmaCallForwarding;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/UsCdmaCallForwarding;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d0844

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/UsCdmaCallForwarding;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d0845

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v6

    const v3, 0x7f0d0846

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreateDialog id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v6}, Lcom/android/phone/operator/usa/UsCdmaCallForwarding;->log(Ljava/lang/String;Z)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/phone/operator/usa/UsCdmaCallForwarding;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_0
    const v3, 0x7f0d0843

    new-instance v4, Lcom/android/phone/operator/usa/UsCdmaCallForwarding$3;

    invoke-direct {v4, p0}, Lcom/android/phone/operator/usa/UsCdmaCallForwarding$3;-><init>(Lcom/android/phone/operator/usa/UsCdmaCallForwarding;)V

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :pswitch_1
    const v3, 0x7f0d0843

    new-instance v4, Lcom/android/phone/operator/usa/UsCdmaCallForwarding$4;

    invoke-direct {v4, p0}, Lcom/android/phone/operator/usa/UsCdmaCallForwarding$4;-><init>(Lcom/android/phone/operator/usa/UsCdmaCallForwarding;)V

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/usa/UsCdmaCallForwarding;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    iget-object v0, p0, Lcom/android/phone/operator/usa/UsCdmaCallForwarding;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "CallForwarding"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/UsCdmaCallForwarding;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-interface {v0}, Lcom/android/phone/ia/IAInterimListener;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/operator/usa/UsCdmaCallForwarding;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/phone/ia/UsCdmaCallForwardingStateListener;

    invoke-direct {v0, p0}, Lcom/android/phone/ia/UsCdmaCallForwardingStateListener;-><init>(Lcom/android/phone/operator/usa/UsCdmaCallForwarding;)V

    iput-object v0, p0, Lcom/android/phone/operator/usa/UsCdmaCallForwarding;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    iget-object v0, p0, Lcom/android/phone/operator/usa/UsCdmaCallForwarding;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p0, Lcom/android/phone/operator/usa/UsCdmaCallForwarding;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CallForwarding"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/operator/usa/UsCdmaCallForwarding;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "CallForwarding"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
