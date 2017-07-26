.class public Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity;
.super Landroid/app/Activity;
.source "JumpToRecordedVideoActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "JumpToRecordedVideoActivity"


# instance fields
.field isMobileKeyboadrdOn:Z

.field private mDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity;->callLauncherRecordedVideo()V

    return-void
.end method

.method private callLauncherRecordedVideo()V
    .locals 5

    const-string/jumbo v3, "JumpToRecordedVideoActivity"

    const-string/jumbo v4, "callLauncherRecordedVideo"

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity;->getGameNameFromBundle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.game.gamehome.action.RecordedVideos"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "gameName"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "deeplink"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getGameNameFromBundle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "gameName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method isMobileKeyboardChanged()Z
    .locals 2

    invoke-static {p0}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->isEnabledMobileKeyboard(Landroid/content/Context;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity;->isMobileKeyboadrdOn:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity;->isMobileKeyboadrdOn:Z

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity;->isMobileKeyboadrdOn:Z

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity;->isMobileKeyboardChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity;->showLauncherEnablePopup()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity;->requestWindowFeature(I)Z

    invoke-static {p0}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->isEnabledMobileKeyboard(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity;->isMobileKeyboadrdOn:Z

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity;->showLauncherEnablePopup()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string/jumbo v0, "JumpToRecordedVideoActivity"

    const-string/jumbo v1, "finish"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity;->finish()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity;->setVisible(Z)V

    return-void
.end method

.method public showLauncherEnablePopup()V
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    :try_start_1
    sget v5, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_HEADER_ENABLE_PS:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget v8, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_HEADER_GAME_LAUNCHER_ABB:I

    invoke-virtual {p0, v8}, Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_POP_P1SS_IS_DISABLED_TAP_OK_TO_ENABLE_P2SS:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget v8, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_HEADER_GAME_LAUNCHER_ABB:I

    invoke-virtual {p0, v8}, Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget v8, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_HEADER_GAME_LAUNCHER_ABB:I

    invoke-virtual {p0, v8}, Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v5, 0x104000a

    new-instance v6, Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget v5, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_BUTTON_CANCEL_ABB3:I

    new-instance v6, Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity$2;

    invoke-direct {v6, p0}, Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity$2;-><init>(Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity$3;-><init>(Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity;->mDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v0, v1

    goto :goto_1
.end method
