.class public Lcom/samsung/android/game/gametools/setting/activity/LauncherSearchResultActivity;
.super Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;
.source "LauncherSearchResultActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/LauncherSearchResultActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0b000b

    new-instance v2, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;

    invoke-direct {v2}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;-><init>()V

    const-string/jumbo v3, "FRAGMENT_GAMEHOME_ONOFF"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
