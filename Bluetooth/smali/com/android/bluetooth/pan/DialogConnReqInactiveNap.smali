.class public Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;
.super Lcom/android/internal/app/AlertActivity;
.source "DialogConnReqInactiveNap.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pan/DialogConnReqInactiveNap$1;
    }
.end annotation


# static fields
.field private static final DISMISS_TIMEOUT_DIALOG:I = 0x0

.field private static final DISMISS_TIMEOUT_DIALOG_VALUE:I = 0x7530

.field private static final EXTRA_INACTIVE_NAP_RESULT:Ljava/lang/String; = "com.samsung.bluetooth.extra.pan.inactivenap.CONFIRM_RESULT"

.field private static final INTENT_INACTIVE_NAP_CONNECTION:Ljava/lang/String; = "com.samsung.bluetooth.pan.inactivenap.ASK_CONFIRM"

.field private static final NOTIFICATION_ID:I = 0x0

.field private static final PROVISION_REQUEST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DialogConnReqInactiveNap"

.field private static final TETHER_CHOICE:Ljava/lang/String; = "TETHER_TYPE"


# instance fields
.field private mDescription:Ljava/lang/CharSequence;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mTimeout:Z

.field private final mTimeoutHandler:Landroid/os/Handler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -set0(Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->mTimeout:Z

    return p1
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->mTimeout:Z

    new-instance v0, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap$1;-><init>(Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;)V

    iput-object v0, p0, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->mTimeoutHandler:Landroid/os/Handler;

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040004

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method private isEntitlementCheckRequired(Landroid/content/Context;)Z
    .locals 3

    const-string/jumbo v1, "carrier_config"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    const-string/jumbo v2, "require_entitlement_checks_bool"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private isProvisioningNeeded(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "net.tethering.noprovisioning"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->isEntitlementCheckRequired(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private makeNotiSound(Landroid/content/Context;)V
    .locals 6

    :try_start_0
    const-string/jumbo v4, "audio"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v4, 0x2

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/media/Ringtone;->setStreamType(I)V

    invoke-virtual {v3}, Landroid/media/Ringtone;->play()V

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-static {p1}, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->makeVibrate(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static makeVibrate(Landroid/content/Context;)V
    .locals 4

    const-string/jumbo v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method private onTimeout()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->mTimeout:Z

    iget-object v0, p0, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private sendresult(Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.bluetooth.pan.inactivenap.ASK_CONFIRM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.bluetooth.extra.pan.inactivenap.CONFIRM_RESULT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->mTimeout:Z

    return-void
.end method

.method private startProvisioningIfNecessary()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p0}, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070035

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aget-object v3, v2, v5

    aget-object v4, v2, v6

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "TETHER_TYPE"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v3}, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "DialogConnReqInactiveNap"

    const-string/jumbo v4, "Activity Not Found"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private wakeScreen()V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v1, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/AlertActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_0

    if-eq p2, v1, :cond_1

    const-string/jumbo v0, "DialogConnReqInactiveNap"

    const-string/jumbo v1, "Received provisioning failed."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->sendresult(Z)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->sendresult(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    iput-object v3, p0, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->mDevice:Landroid/bluetooth/BluetoothDevice;

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    aput-object v3, v5, v6

    const v3, 0x7f0a007a

    invoke-virtual {p0, v3, v5}, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->mDescription:Ljava/lang/CharSequence;

    const-string/jumbo v3, "power"

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    const-string/jumbo v3, "DialogConnReqInactiveNap"

    const v4, 0x3000001a

    invoke-virtual {v2, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string/jumbo v3, "DialogConnReqInactiveNap"

    invoke-virtual {v2, v7, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string/jumbo v3, "DialogConnReqInactiveNap"

    const/16 v4, 0xa

    invoke-virtual {v2, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v1, p0, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v3, 0x7f0a007d

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->createView()Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v3, 0x7f0a007b

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const v3, 0x7f0a007c

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->setupAlert()V

    iget-object v3, p0, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->wakeScreen()V

    invoke-direct {p0, p0}, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->makeNotiSound(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->startProvisioningIfNecessary()V

    iget-boolean v3, p0, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->mTimeout:Z

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;->onTimeout()V

    :cond_0
    return-void

    :cond_1
    move-object v3, v4

    goto :goto_0
.end method
