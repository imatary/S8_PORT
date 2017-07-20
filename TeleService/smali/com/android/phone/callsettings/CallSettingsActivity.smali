.class public Lcom/android/phone/callsettings/CallSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "CallSettingsActivity.java"


# instance fields
.field private actionBar:Landroid/app/ActionBar;

.field protected mCurrentFragment:Landroid/app/Fragment;

.field private mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mFragmentClass:Ljava/lang/String;

.field protected mHeaderIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mParentHeader:Landroid/preference/PreferenceActivity$Header;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mHeaderIndexMap:Ljava/util/HashMap;

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "CallSettingsActivity"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;

    invoke-virtual {v0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "fragment consume this key event"

    invoke-static {v0}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;

    invoke-virtual {v0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "fragment consume this touch event"

    invoke-static {v0}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 7

    const-string/jumbo v5, "CallSettingsActivity : getIntent"

    invoke-static {v5}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/CallSettingsActivity;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    if-eqz v3, :cond_2

    const-string/jumbo v5, ":android:show_fragment"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v0, v1

    :goto_0
    const-string/jumbo v5, "intent"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v5, ":android:show_fragment_args"

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    :goto_1
    const-string/jumbo v5, ":android:no_headers"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v2

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_2
    const-string/jumbo v5, ":android:show_fragment"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    const-string/jumbo v5, ":android:show_fragment"

    const-class v6, Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method protected getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v1, "getStartingFragmentClass..."

    invoke-static {v1}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mFragmentClass:Ljava/lang/String;

    return-object v1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v2

    :cond_2
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v0, "feature_multisim_dsda_cdma_gsm"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->setPickContactsActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 2

    const-string/jumbo v1, "onBuildStartFragmentIntent..."

    invoke-static {v1}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "config_hide_status_bar"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->setHideLandscapeIndicatorBar(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x5

    const/4 v1, 0x4

    const-string/jumbo v0, "CallSettingsActivity : onCreate"

    invoke-static {v0}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    const-string/jumbo v0, "feature_kdi"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0e0095

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallSettingsActivity;->setTheme(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    const-string/jumbo v0, "com.android.phone.CURRENT_HEADER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    const-string/jumbo v0, "com.android.phone.PARENT_HEADER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->actionBar:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->actionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->actionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_2
    const-string/jumbo v0, "config_hide_status_bar"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->setHideLandscapeIndicatorBar(Landroid/app/Activity;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    return-void
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 8

    const-string/jumbo v6, "onGetInitialHeader..."

    invoke-static {v6}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/CallSettingsActivity;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onGetInitialHeader fragmentClass : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mHeaders:Ljava/util/List;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mHeaders:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onGetInitialHeader h.fragment : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    iget-object v6, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    return-object v3

    :cond_1
    new-instance v5, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v5}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v2, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v5, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    iput-object v6, v5, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    return-object v5

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onGetInitialHeader action : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    const-string/jumbo v6, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const v6, 0x7f0d02f0

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/CallSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onGetInitialHeader fragTitle : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mHeaders:Ljava/util/List;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mHeaders:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onGetInitialHeader h.title : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/CallSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    iget v6, v3, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/CallSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    return-object v3

    :cond_4
    const-string/jumbo v6, "onGetInitialHeader default header"

    invoke-static {v6}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v6

    return-object v6
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 3

    const-string/jumbo v2, "onHeaderClick..."

    invoke-static {v2}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallSettingsActivity;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallSettingsActivity;->setIntent(Landroid/content/Intent;)V

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const-string/jumbo v0, "onKeyDown..."

    invoke-static {v0}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v1, "onKeyUp..."

    invoke-static {v1}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;

    invoke-virtual {v1, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/phone/ADNList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/android/phone/ADNList;

    invoke-virtual {v1, p1, p2}, Lcom/android/phone/ADNList;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string/jumbo v3, "onOptionsItemSelected..."

    invoke-static {v3}, Lcom/android/phone/callsettings/CallSettingsActivity;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v3, v3, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    check-cast v3, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;

    invoke-virtual {v3, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v5

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    :pswitch_0
    const-string/jumbo v3, "activity"

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/utils/SALogging;->sendSAUpEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->popBackStack()V

    :goto_0
    return v5

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.android.phone.CURRENT_HEADER"

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "com.android.phone.PARENT_HEADER"

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    return-void
.end method

.method public setCurrentFragment(Landroid/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/CallSettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    return-void
.end method
