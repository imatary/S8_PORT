.class public Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;
.super Landroid/app/Activity;
.source "LauncherDialogActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LauncherDialogActivity"


# instance fields
.field isMobileKeyboadrdOn:Z

.field private mDialog:Landroid/app/AlertDialog;

.field private mLauncherOffDialogBuilder:Landroid/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;->mLauncherOffDialogBuilder:Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;->mLauncherOffDialogBuilder:Landroid/app/AlertDialog$Builder;

    return-object p1
.end method


# virtual methods
.method isMobileKeyboardChanged()Z
    .locals 2

    invoke-static {p0}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->isEnabledMobileKeyboard(Landroid/content/Context;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;->isMobileKeyboadrdOn:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;->isMobileKeyboadrdOn:Z

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;->isMobileKeyboadrdOn:Z

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;->isMobileKeyboardChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LauncherDialogActivity"

    const-string/jumbo v1, "onConfigurationChanged: mDialog!=null && isMobileKeyboardChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;->updateLauncherDisablePopup()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getGameHomeAppStatus(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "LauncherDialogActivity"

    const-string/jumbo v2, "onCreate: Game Launcher is uninstalled!!: setResult(RESULT_CANCELED)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;->requestWindowFeature(I)Z

    invoke-static {p0}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->isEnabledMobileKeyboard(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;->isMobileKeyboadrdOn:Z

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;->updateLauncherDisablePopup()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "LauncherDialogActivity"

    const-string/jumbo v1, "onPause: setResult(RESULT_CANCELED)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;->finish()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;->setVisible(Z)V

    return-void
.end method

.method public updateLauncherDisablePopup()V
    .locals 7

    const v6, 0x7f0602fd

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;->mLauncherOffDialogBuilder:Landroid/app/AlertDialog$Builder;

    if-nez v1, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;->mLauncherOffDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0603d9

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v6}, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0603f5

    invoke-virtual {p0, v2}, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v6}, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;->mLauncherOffDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;->mLauncherOffDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0602d2

    new-instance v3, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity$1;-><init>(Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;->mLauncherOffDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0602b3

    new-instance v3, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity$2;-><init>(Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;->mLauncherOffDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity$3;-><init>(Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;->mLauncherOffDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method
