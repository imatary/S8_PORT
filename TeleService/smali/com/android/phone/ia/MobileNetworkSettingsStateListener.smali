.class public Lcom/android/phone/ia/MobileNetworkSettingsStateListener;
.super Ljava/lang/Object;
.source "MobileNetworkSettingsStateListener.java"

# interfaces
.implements Lcom/android/phone/ia/IAInterimListener;


# instance fields
.field mPreferenceActivity:Landroid/preference/PreferenceActivity;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/ia/MobileNetworkSettingsStateListener;->mPreferenceActivity:Landroid/preference/PreferenceActivity;

    return-void
.end method

.method private getPreference(Landroid/preference/PreferenceActivity;Ljava/lang/String;)Landroid/preference/Preference;
    .locals 7

    const/4 v6, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v6

    :cond_0
    const-string/jumbo v3, "MobileNetworkSettingsStateListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPreference - key : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const-string/jumbo v3, "MobileNetworkSettingsStateListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPreference - adapter : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    return-object v6

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "MobileNetworkSettingsStateListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPreference - list["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/Preference;

    return-object v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v6
.end method

.method private setEnable(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/android/phone/ia/MobileNetworkSettingsStateListener;->mPreferenceActivity:Landroid/preference/PreferenceActivity;

    const-string/jumbo v2, "button_roaming_key"

    invoke-direct {p0, v1, v2}, Lcom/android/phone/ia/MobileNetworkSettingsStateListener;->getPreference(Landroid/preference/PreferenceActivity;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/ia/MobileNetworkSettingsStateListener;->mPreferenceActivity:Landroid/preference/PreferenceActivity;

    const-string/jumbo v2, "button_roaming_key"

    invoke-direct {p0, v1, v2}, Lcom/android/phone/ia/MobileNetworkSettingsStateListener;->simulatePreferenceClick(Landroid/preference/PreferenceActivity;Ljava/lang/String;)V

    const-string/jumbo v1, "MobileNetworks"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v3, "no"

    invoke-static {v1, p2, v2, v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v1}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_0
    const-string/jumbo v1, "MobileNetworks"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v3, "yes"

    invoke-static {v1, p2, v2, v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v1}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "MobileNetworks"

    const-string/jumbo v2, "Available"

    const-string/jumbo v3, "no"

    invoke-static {v1, p2, v2, v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v1}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    goto :goto_0
.end method

.method private simulatePreferenceClick(Landroid/preference/PreferenceActivity;Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "MobileNetworkSettingsStateListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "simulatePreferenceClick - key : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    const-string/jumbo v0, "MobileNetworkSettingsStateListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "simulatePreferenceClick - adapter : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v6, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_2

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v0, "MobileNetworkSettingsStateListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "simulatePreferenceClick - list["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "] : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/ia/MobileNetworkSettingsStateListener;->mPreferenceActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/ia/MobileNetworkSettingsStateListener;->mPreferenceActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/ia/MobileNetworkSettingsStateListener;->mPreferenceActivity:Landroid/preference/PreferenceActivity;

    return-void
.end method

.method public onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onRuleCanceled(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/android/phone/ia/IAUtil;->cancelIAExecutingState(Ljava/lang/String;)V

    return-void
.end method

.method public onScreenStatesRequested()Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    const-string/jumbo v1, "MobileNetworks"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParameters()Ljava/util/List;

    move-result-object v4

    invoke-static {p1}, Lcom/android/phone/ia/IAUtil;->setIAExecutingState(Lcom/samsung/android/sdk/bixby/data/State;)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    const-string/jumbo v6, "MobileNetworkSettingsStateListener"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onStateReceived, stateId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string/jumbo v6, "AccesspointName"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "android.settings.APN_SETTINGS"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, ":settings:show_fragment_as_subsetting"

    invoke-virtual {v2, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    iget-object v6, p0, Lcom/android/phone/ia/MobileNetworkSettingsStateListener;->mPreferenceActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v6, v2}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    const-string/jumbo v6, "AccesspointName"

    invoke-static {v6}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    sget-object v6, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v6}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v6, "DataRoamingOn"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v3, "DataRoamingOn"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {p0, v6, v3}, Lcom/android/phone/ia/MobileNetworkSettingsStateListener;->setEnable(Ljava/lang/Boolean;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v6, "DataRoamingOff"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v3, "DataRoamingOff"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {p0, v6, v3}, Lcom/android/phone/ia/MobileNetworkSettingsStateListener;->setEnable(Ljava/lang/Boolean;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "StatusbarIndicator"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/phone/ia/MobileNetworkSettingsStateListener;->mPreferenceActivity:Landroid/preference/PreferenceActivity;

    const-string/jumbo v7, "button_network_status_key"

    invoke-static {v6, v7}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Landroid/preference/PreferenceActivity;Ljava/lang/String;)I

    move-result v6

    if-ne v6, v10, :cond_4

    const-string/jumbo v6, "StatusbarIndicator"

    invoke-static {v6}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    sget-object v6, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v6}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v6, "MobileNetworkSettingsStateListener"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startActivity() failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-static {v9}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    goto :goto_0

    :cond_5
    sget-object v6, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v6}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0
.end method
