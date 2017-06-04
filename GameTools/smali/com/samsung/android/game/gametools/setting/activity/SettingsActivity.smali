.class public Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"


# static fields
.field public static final DEEP_LINK:Ljava/lang/String; = "deeplink"

.field public static final FRAGMENT_ABOUT_GAME_TOOLS:Ljava/lang/String; = "FRAGMENT_ABOUT_GAME_TOOLS"

.field public static final FRAGMENT_ABOUT_S_GAMES:Ljava/lang/String; = "FRAGMENT_ABOUT_S_GAMES"

.field public static final FRAGMENT_GAMEHOME_ONOFF:Ljava/lang/String; = "FRAGMENT_GAMEHOME_ONOFF"

.field public static final FRAGMENT_GAME_RECORDER:Ljava/lang/String; = "FRAGMENT_GAME_RECORDER"

.field public static final FRAGMENT_GAME_TOOLS:Ljava/lang/String; = "FRAGMENT_GAME_TOOLS"

.field public static final FRAGMENT_GAME_TOOLS_FLOATING:Ljava/lang/String; = "FRAGMENT_GAME_TOOLS_FLOATING"

.field public static final FRAGMENT_HELP:Ljava/lang/String; = "FRAGMENT_HELP"

.field public static final FRAGMENT_HELP_TOOLS:Ljava/lang/String; = "FRAGMENT_HELP_TOOLS"

.field public static final FRAGMENT_OPEN_SOURCE_LICENSE:Ljava/lang/String; = "FRAGMENT_OPEN_SOURCE_LICENSE"

.field public static final FRAGMENT_OPEN_SOURCE_LICENSE_TOOLS:Ljava/lang/String; = "FRAGMENT_OPEN_SOURCE_LICENSE_TOOLS"

.field public static final FRAGMENT_PRIVACY_POLICY:Ljava/lang/String; = "FRAGMENT_PRIVACY_POLICY"

.field public static final FRAGMENT_PRIVACY_POLICY_TOOLS:Ljava/lang/String; = "FRAGMENT_PRIVACY_POLICY_TOOLS"

.field public static final FRAGMENT_SETTINGS_MAIN:Ljava/lang/String; = "FRAGMENT_SETTINGS_MAIN"

.field public static final FRAGMENT_TERMS_AND_CONDITIONS:Ljava/lang/String; = "FRAGMENT_TERMS_AND_CONDITIONS"

.field public static final FRAGMENT_TERMS_AND_CONDITIONS_TOOLS:Ljava/lang/String; = "FRAGMENT_TERMS_AND_CONDITIONS_TOOLS"

.field protected static final LOG_TAG:Ljava/lang/String; = "SettingsActivity: "


# instance fields
.field protected mDeepLinkAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;->mDeepLinkAddress:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActiveFragment()Landroid/app/Fragment;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;->getBackStackEntryCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SettingsActivity: onCreate - getBackStackEntryCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;->getBackStackEntryCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SettingsActivity: getActiveFragment:tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    goto :goto_0
.end method

.method public getBackStackEntryCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;->getActiveFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const v5, 0x7f0b000b

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    :cond_0
    const v3, 0x7f030005

    invoke-virtual {p0, v3}, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v3, "deeplink"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iput-object v2, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;->mDeepLinkAddress:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    if-eqz v3, :cond_3

    if-nez p1, :cond_3

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;->mDeepLinkAddress:Ljava/lang/String;

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;

    invoke-direct {v3}, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;-><init>()V

    const-string/jumbo v4, "FRAGMENT_SETTINGS_MAIN"

    invoke-virtual {v1, v5, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;->mDeepLinkAddress:Ljava/lang/String;

    const-string/jumbo v4, "FRAGMENT_ABOUT_S_GAMES"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutSGames;

    invoke-direct {v3}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutSGames;-><init>()V

    const-string/jumbo v4, "FRAGMENT_ABOUT_S_GAMES"

    invoke-virtual {v1, v5, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;->mDeepLinkAddress:Ljava/lang/String;

    const-string/jumbo v4, "FRAGMENT_GAMEHOME_ONOFF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;

    invoke-direct {v3}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;-><init>()V

    const-string/jumbo v4, "FRAGMENT_GAMEHOME_ONOFF"

    invoke-virtual {v1, v5, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;->mDeepLinkAddress:Ljava/lang/String;

    const-string/jumbo v4, "FRAGMENT_GAME_TOOLS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;

    invoke-direct {v3}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;-><init>()V

    const-string/jumbo v4, "FRAGMENT_GAME_TOOLS"

    invoke-virtual {v1, v5, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    new-instance v3, Landroid/app/ActivityManager$TaskDescription;

    const v4, 0x7f060298

    invoke-virtual {p0, v4}, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/game/gametools/setting/SettingFocusManager;->getInstance()Lcom/samsung/android/game/gametools/setting/SettingFocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/setting/SettingFocusManager;->clear()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;->onBackPressed()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->registerSuicideAlarm(Landroid/content/Context;Z)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "deeplink"

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;->mDeepLinkAddress:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public replaceFragment(Ljava/lang/String;)V
    .locals 7

    const/4 v4, 0x1

    const v6, 0x7f0b000b

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    :goto_1
    return-void

    :sswitch_0
    const-string/jumbo v5, "FRAGMENT_GAME_RECORDER"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "FRAGMENT_GAME_TOOLS"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_0

    :sswitch_2
    const-string/jumbo v5, "FRAGMENT_GAMEHOME_ONOFF"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v5, "FRAGMENT_ABOUT_S_GAMES"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v5, "FRAGMENT_ABOUT_GAME_TOOLS"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v5, "FRAGMENT_TERMS_AND_CONDITIONS"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v5, "FRAGMENT_PRIVACY_POLICY"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v5, "FRAGMENT_OPEN_SOURCE_LICENSE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v5, "FRAGMENT_HELP"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :sswitch_9
    const-string/jumbo v5, "FRAGMENT_HELP_TOOLS"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0x9

    goto :goto_0

    :sswitch_a
    const-string/jumbo v5, "FRAGMENT_TERMS_AND_CONDITIONS_TOOLS"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0xa

    goto :goto_0

    :sswitch_b
    const-string/jumbo v5, "FRAGMENT_PRIVACY_POLICY_TOOLS"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v5, "FRAGMENT_OPEN_SOURCE_LICENSE_TOOLS"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0xc

    goto/16 :goto_0

    :pswitch_0
    new-instance v3, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    invoke-direct {v3}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;-><init>()V

    invoke-virtual {v1, v6, v3, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    :goto_2
    invoke-virtual {v1, p1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    const/16 v3, 0x1003

    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_1

    :pswitch_1
    new-instance v3, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;

    invoke-direct {v3}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;-><init>()V

    invoke-virtual {v1, v6, v3, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_2

    :pswitch_2
    new-instance v3, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;

    invoke-direct {v3}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;-><init>()V

    invoke-virtual {v1, v6, v3, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_2

    :pswitch_3
    new-instance v3, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutSGames;

    invoke-direct {v3}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutSGames;-><init>()V

    invoke-virtual {v1, v6, v3, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_2

    :pswitch_4
    new-instance v3, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;

    invoke-direct {v3}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;-><init>()V

    invoke-virtual {v1, v6, v3, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_2

    :pswitch_5
    new-instance v3, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingTermsAndConditions;

    invoke-direct {v3}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingTermsAndConditions;-><init>()V

    invoke-virtual {v1, v6, v3, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_2

    :pswitch_6
    new-instance v3, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingPrivacyPolicy;

    invoke-direct {v3}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingPrivacyPolicy;-><init>()V

    invoke-virtual {v1, v6, v3, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_2

    :pswitch_7
    new-instance v3, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingOpenSourceLicense;

    invoke-direct {v3}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingOpenSourceLicense;-><init>()V

    invoke-virtual {v1, v6, v3, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_2

    :pswitch_8
    new-instance v3, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;

    invoke-direct {v3}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;-><init>()V

    invoke-virtual {v1, v6, v3, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_2

    :pswitch_9
    new-instance v2, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;

    invoke-direct {v2}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "isTools"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v2, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v1, v6, v2, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_2

    :pswitch_a
    new-instance v2, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingTermsAndConditions;

    invoke-direct {v2}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingTermsAndConditions;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "isTools"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v2, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v1, v6, v2, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto/16 :goto_2

    :pswitch_b
    new-instance v2, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingPrivacyPolicy;

    invoke-direct {v2}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingPrivacyPolicy;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "isTools"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v2, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v1, v6, v2, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto/16 :goto_2

    :pswitch_c
    new-instance v2, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingOpenSourceLicense;

    invoke-direct {v2}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingOpenSourceLicense;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "isTools"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v2, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v1, v6, v2, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        -0x77b56030 -> :sswitch_8
        -0x581c6ddd -> :sswitch_7
        -0x3003f5dd -> :sswitch_a
        -0x2441fd0f -> :sswitch_2
        -0x153a0c48 -> :sswitch_6
        -0xa5b5159 -> :sswitch_5
        -0x10c96b1 -> :sswitch_4
        0x21c9609f -> :sswitch_c
        0x262a2c7d -> :sswitch_1
        0x2b244134 -> :sswitch_3
        0x399f7e74 -> :sswitch_b
        0x4988b88c -> :sswitch_9
        0x50bf2ebc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
