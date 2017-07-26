.class public Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;
.super Ljava/lang/Object;
.source "SettingUpdateManager.java"


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private isNetworkAvailable:Z

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/sec/game/gamecast/common/stub/StubListener;

.field private mNoNetworkConnectionDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private mNotEnoughStorageDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private mShowTurnOnMobileDataDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private mTurnOffAirplaneModeDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private mUpdateDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private mUseDataRoamingDialogBuilder:Landroid/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/game/gamecast/common/stub/StubListener;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->LOG_TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mUpdateDialogBuilder:Landroid/app/AlertDialog$Builder;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mNotEnoughStorageDialogBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->isNetworkAvailable:Z

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mListener:Lcom/sec/game/gamecast/common/stub/StubListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public checkNetworkFailCase()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/NetworkUtil;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->showTurnOffAirplaneModeDialog()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/NetworkUtil;->isDataEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->showTurnOnMobileDataDialog()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/NetworkUtil;->isRoamingArea(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/NetworkUtil;->isRoamingOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->showUseDataRoamingDialog()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->showNoNetworkConnectionDialog(Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->showNoNetworkConnectionDialog(Z)V

    goto :goto_0
.end method

.method public doUpdate(Lcom/sec/game/gamecast/common/stub/StubData;)V
    .locals 8

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "doUpdate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/game/gamecast/common/stub/StubData;->getContentSize()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/game/gamecast/common/stub/StubData;->getDeltaContentSize()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mUpdateDialogBuilder:Landroid/app/AlertDialog$Builder;

    if-nez v3, :cond_0

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mUpdateDialogBuilder:Landroid/app/AlertDialog$Builder;

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mContext:Landroid/content/Context;

    const v4, 0x7f060321

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mContext:Landroid/content/Context;

    const v7, 0x7f06001b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mContext:Landroid/content/Context;

    const v4, 0x7f060001

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mUpdateDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mUpdateDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mUpdateDialogBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mContext:Landroid/content/Context;

    const v5, 0x7f0602eb

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager$9;

    invoke-direct {v5, p0, p1}, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager$9;-><init>(Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;Lcom/sec/game/gamecast/common/stub/StubData;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mUpdateDialogBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mContext:Landroid/content/Context;

    const v5, 0x7f0602c9

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager$10;

    invoke-direct {v5, p0}, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager$10;-><init>(Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mUpdateDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public downloadAPK(Lcom/sec/game/gamecast/common/stub/StubData;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "downloadAPK: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/game/gamecast/common/stub/StubData;->getDownloadURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/game/gamecast/common/stub/StubData;->getDownloadURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/game/gamecast/common/stub/StubData;->getSignature()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mListener:Lcom/sec/game/gamecast/common/stub/StubListener;

    invoke-static {v0, v1, v2, v3}, Lcom/sec/game/gamecast/common/stub/StubUtil;->downloadAPK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sec/game/gamecast/common/stub/StubListener;)V

    return-void
.end method

.method public getDownloadUrl()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "getDownloadUrl: "

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mListener:Lcom/sec/game/gamecast/common/stub/StubListener;

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/stub/StubUtil;->getDownloadUrl(Landroid/content/Context;Lcom/sec/game/gamecast/common/stub/StubListener;)V

    return-void
.end method

.method public isNetworkAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->isNetworkAvailable:Z

    return v0
.end method

.method public setNetworkAvailable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->isNetworkAvailable:Z

    return-void
.end method

.method public showNoNetworkConnectionDialog(Z)V
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mNoNetworkConnectionDialogBuilder:Landroid/app/AlertDialog$Builder;

    if-nez v2, :cond_0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mNoNetworkConnectionDialogBuilder:Landroid/app/AlertDialog$Builder;

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showNoNetworkConnectionDialog is called!: isRoaming - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mContext:Landroid/content/Context;

    const v3, 0x7f06012c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mContext:Landroid/content/Context;

    const v3, 0x7f060131

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mNoNetworkConnectionDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mContext:Landroid/content/Context;

    const v4, 0x7f06006e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager$7;

    invoke-direct {v4, p0}, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager$7;-><init>(Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mContext:Landroid/content/Context;

    const v3, 0x7f060133

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public showNotEnoughStorageDialog()V
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mNotEnoughStorageDialogBuilder:Landroid/app/AlertDialog$Builder;

    if-nez v2, :cond_0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mNotEnoughStorageDialogBuilder:Landroid/app/AlertDialog$Builder;

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "showNotEnoughStorageDialog is called!"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mContext:Landroid/content/Context;

    const v3, 0x7f06014d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mContext:Landroid/content/Context;

    const v3, 0x7f060134

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mNotEnoughStorageDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mContext:Landroid/content/Context;

    const v4, 0x7f06006e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager$8;

    invoke-direct {v4, p0}, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager$8;-><init>(Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public showTurnOffAirplaneModeDialog()V
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mTurnOffAirplaneModeDialogBuilder:Landroid/app/AlertDialog$Builder;

    if-nez v2, :cond_0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mTurnOffAirplaneModeDialogBuilder:Landroid/app/AlertDialog$Builder;

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "showTurnOffAirplaneModeDialog is called!"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mContext:Landroid/content/Context;

    const v3, 0x7f06012d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mContext:Landroid/content/Context;

    const v3, 0x7f060136

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mTurnOffAirplaneModeDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mContext:Landroid/content/Context;

    const v4, 0x7f060075

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager$4;-><init>(Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mContext:Landroid/content/Context;

    const v4, 0x7f060467

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager$3;-><init>(Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public showTurnOnMobileDataDialog()V
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mShowTurnOnMobileDataDialogBuilder:Landroid/app/AlertDialog$Builder;

    if-nez v2, :cond_0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mShowTurnOnMobileDataDialogBuilder:Landroid/app/AlertDialog$Builder;

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "showTurnOnMobileDataDialog is called!"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mContext:Landroid/content/Context;

    const v3, 0x7f06012e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mContext:Landroid/content/Context;

    const v3, 0x7f060132

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mShowTurnOnMobileDataDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0602bf

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager$2;-><init>(Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mContext:Landroid/content/Context;

    const v4, 0x7f060467

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager$1;-><init>(Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public showUseDataRoamingDialog()V
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mUseDataRoamingDialogBuilder:Landroid/app/AlertDialog$Builder;

    if-nez v2, :cond_0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mUseDataRoamingDialogBuilder:Landroid/app/AlertDialog$Builder;

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "showUseDataRoamingDialog is called!"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mContext:Landroid/content/Context;

    const v3, 0x7f06012f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mContext:Landroid/content/Context;

    const v3, 0x7f060135

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mUseDataRoamingDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mContext:Landroid/content/Context;

    const v4, 0x7f06006e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager$6;

    invoke-direct {v4, p0}, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager$6;-><init>(Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->mContext:Landroid/content/Context;

    const v4, 0x7f060467

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager$5;

    invoke-direct {v4, p0}, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager$5;-><init>(Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
