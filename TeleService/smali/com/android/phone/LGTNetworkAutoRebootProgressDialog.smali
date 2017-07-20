.class public Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "LGTNetworkAutoRebootProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$1;,
        Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$2;,
        Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$3;,
        Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;
    }
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field private isDisableRoamingMultiIMSI:Z

.field private mAlertDialg:Landroid/app/AlertDialog;

.field mClickListener:Landroid/content/DialogInterface$OnClickListener;

.field mDialogHandler:Landroid/os/Handler;

.field private mDialogType:I

.field private mIsInRoamingArea:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRebootProgress:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;

.field private mSetAutoSequence:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mSetDefaultHandler:Landroid/os/Handler;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->isDisableRoamingMultiIMSI:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mAlertDialg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mDialogType:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mAlertDialg:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->checkInitState()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->DoSetAutoSequence()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->doActivityFinish()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->makeToastWithCenterArrangedText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->reboot()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    iput-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mRebootProgress:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;

    iput-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    iput-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mAlertDialg:Landroid/app/AlertDialog;

    iput-boolean v1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mIsInRoamingArea:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const-string/jumbo v0, "support_volte_during_roaming"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->isDisableRoamingMultiIMSI:Z

    iput v1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mDialogType:I

    new-instance v0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$1;

    invoke-direct {v0, p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$1;-><init>(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)V

    iput-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$2;

    invoke-direct {v0, p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$2;-><init>(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)V

    iput-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mDialogHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$3;

    invoke-direct {v0, p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$3;-><init>(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)V

    iput-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private DoSetAutoSequence()V
    .locals 5

    iget-object v3, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->doInit()V

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setDefaultFplmn(Landroid/os/Handler;I)V

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setDefaultLoci(Landroid/os/Handler;I)V

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setDefaultPsloci(Landroid/os/Handler;I)V

    goto :goto_0

    :pswitch_4
    iget-object v3, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setDefaultEpsloci(Landroid/os/Handler;I)V

    goto :goto_0

    :pswitch_5
    iget-object v3, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setDefaultLociAll(Landroid/os/Handler;I)V

    goto :goto_0

    :pswitch_6
    iget-object v3, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setDefaultEfRoaming(Landroid/os/Handler;I)V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->setNetworkSelectionModeAutomatic()V

    goto :goto_0

    :pswitch_8
    iget-object v3, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setBandModeAuto(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_9
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->setPreferredNetworkType()V

    goto :goto_0

    :pswitch_a
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->reboot()V

    goto :goto_0

    :pswitch_b
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->doProgressDialogFinish()V

    goto :goto_0

    :pswitch_c
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->setRadioPowerOn()V

    goto :goto_0

    :pswitch_d
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->doActivityFinish()V

    goto :goto_0

    :pswitch_e
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->showDomesticIncomePopup()V

    goto :goto_0

    :pswitch_f
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->showMccChangePopup()V

    goto :goto_0

    :pswitch_10
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->setLteModeOn()V

    goto :goto_0

    :pswitch_11
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->imsiStatusChangeNotiForResetAll()V

    goto :goto_0

    :pswitch_12
    iget-object v3, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getSelectedBandMode(Landroid/os/Message;)V

    goto :goto_0

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
        :pswitch_c
        :pswitch_b
        :pswitch_e
        :pswitch_f
        :pswitch_d
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method private checkInitState()Z
    .locals 5

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    const-string/jumbo v2, "LGTProgressDialog "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", simState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private doActivityFinish()V
    .locals 2

    const-string/jumbo v0, "LGTProgressDialog "

    const-string/jumbo v1, "doActivityFinish"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->finish()V

    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->DoSetAutoSequence()V

    return-void
.end method

.method private doInit()V
    .locals 5

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setRadioPower(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    const/16 v4, 0xd

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private doProgressDialogFinish()V
    .locals 2

    const-string/jumbo v0, "LGTProgressDialog "

    const-string/jumbo v1, "doProgressDialogFinish"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mRebootProgress:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;

    invoke-virtual {v0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->finish()V

    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->DoSetAutoSequence()V

    return-void
.end method

.method private imsiStatusChangeNotiForResetAll()V
    .locals 0

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->sendImsiStatusChangeNotiForResetAll()V

    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->DoSetAutoSequence()V

    return-void
.end method

.method private makeToastWithCenterArrangedText(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x102000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    :cond_0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private reboot()V
    .locals 4

    const-string/jumbo v0, "LGTProgressDialog "

    const-string/jumbo v1, "reboot"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setroamingAutoSetting()V

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1770

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->DoSetAutoSequence()V

    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LGTProgressDialog "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestSystemKeyEvent - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method private setAuto()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->DoSetAutoSequence()V

    return-void
.end method

.method private setAutoDisableMultiImsi()V
    .locals 7

    const/16 v6, 0xc

    const/16 v5, 0x9

    const/16 v4, 0x8

    const/4 v3, 0x7

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mDialogType:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->DoSetAutoSequence()V

    return-void

    :cond_1
    iget v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mDialogType:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mDialogType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->isDisableRoamingMultiIMSI:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lcom/android/phone/TeleServiceSystemDB;->setRoamingAutoSetting(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetAutoSequence:Ljava/util/ArrayList;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private setLteModeOn()V
    .locals 4

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->isLteModeOn()Z

    move-result v0

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->getSimType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mobile_newtork_style_for_kor"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->DoSetAutoSequence()V

    return-void

    :cond_1
    const-string/jumbo v2, "3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "LGTProgressDialog "

    const-string/jumbo v3, "isLteOn FALSE"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setLTEModeOn(Z)V

    goto :goto_0
.end method

.method private setNetworkSelectionModeAutomatic()V
    .locals 3

    const-string/jumbo v1, "LGTProgressDialog "

    const-string/jumbo v2, " networkSelectAuto !! "

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->sendImsiStatusChangeNotiForNoWait()V

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    return-void
.end method

.method private setPreferredNetworkType()V
    .locals 4

    const-string/jumbo v2, "LGTProgressDialog "

    const-string/jumbo v3, "setPreferredNetworkType"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mSetDefaultHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    sget v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    iget v2, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mDialogType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    sget v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    :goto_0
    invoke-static {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setPreferredNetworkType(ILandroid/os/Message;)V

    return-void

    :cond_0
    const-string/jumbo v2, "support_volte_roaming"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mIsInRoamingArea:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    goto :goto_0
.end method

.method private setRadioPowerOn()V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string/jumbo v2, "LGTProgressDialog "

    const-string/jumbo v3, "setRadioPowerOn"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "airplane_mode_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    :goto_0
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->DoSetAutoSequence()V

    return-void

    :cond_1
    const-string/jumbo v1, "LGTProgressDialog "

    const-string/jumbo v2, "Not set radio power on in Air plane mode on!"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showDomesticIncomePopup()V
    .locals 2

    const-string/jumbo v0, "LGTProgressDialog "

    const-string/jumbo v1, "showDomesticIncomePopup"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mDialogHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->DoSetAutoSequence()V

    return-void
.end method

.method private showMccChangePopup()V
    .locals 2

    const-string/jumbo v0, "LGTProgressDialog "

    const-string/jumbo v1, "showMccChangePopup"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mDialogHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->DoSetAutoSequence()V

    return-void
.end method

.method private transDialgoTypeStringToInt(Ljava/lang/String;)I
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    const-string/jumbo v0, "RESET"

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const-string/jumbo v0, "MCC"

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const-string/jumbo v0, "DOMESTIC"

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    return v0

    :cond_3
    return v2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->context:Landroid/content/Context;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string/jumbo v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "DialogType"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "DialogType"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->transDialgoTypeStringToInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mDialogType:I

    :goto_0
    const-string/jumbo v4, "LGTProgressDialog "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DialogType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mDialogType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x1a

    invoke-direct {p0, v4, v7}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->requestSystemKeyEvent(IZ)Z

    const/4 v4, 0x3

    invoke-direct {p0, v4, v7}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->requestSystemKeyEvent(IZ)Z

    const/16 v4, 0xbb

    invoke-direct {p0, v4, v7}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->requestSystemKeyEvent(IZ)Z

    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->setupAlert()V

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->getCurrentPlmn()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->isNetworkRoaming()Z

    move-result v3

    const-string/jumbo v4, "oversea"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v3, :cond_0

    iget v4, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mDialogType:I

    if-ne v4, v7, :cond_1

    :cond_0
    const-string/jumbo v4, "LGTProgressDialog "

    const-string/jumbo v5, "We\'er in roaming area"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mIsInRoamingArea:Z

    :cond_1
    iget-boolean v4, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->isDisableRoamingMultiIMSI:Z

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->setAutoDisableMultiImsi()V

    :goto_1
    iget-boolean v4, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->isDisableRoamingMultiIMSI:Z

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mDialogType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    new-instance v4, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;

    invoke-direct {v4, p0, v9}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;-><init>(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;)V

    iput-object v4, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mRebootProgress:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;

    iget-object v4, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mRebootProgress:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;

    new-array v5, v8, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_2
    return-void

    :cond_2
    iput v8, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mDialogType:I

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->setAuto()V

    goto :goto_1

    :cond_4
    const-string/jumbo v4, "LGTProgressDialog "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Don\'t draw progress with DialogType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mDialogType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    new-instance v4, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;

    invoke-direct {v4, p0, v9}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;-><init>(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;)V

    iput-object v4, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mRebootProgress:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;

    iget-object v4, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mRebootProgress:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;

    new-array v5, v8, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "LGTProgressDialog "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ignore back key keyCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "LGTProgressDialog "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ignore camera key keyCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_0
        0x50 -> :sswitch_0
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_0
        0x40a -> :sswitch_0
        0x40e -> :sswitch_0
        0x40f -> :sswitch_0
        0x410 -> :sswitch_0
        0x411 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    const-string/jumbo v0, "LGTProgressDialog "

    const-string/jumbo v1, " onPause!! "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    return-void
.end method
