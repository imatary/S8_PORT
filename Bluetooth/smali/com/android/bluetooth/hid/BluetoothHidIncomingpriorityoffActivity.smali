.class public Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothHidIncomingpriorityoffActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity$1;,
        Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity$2;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static final DISMISS_TIMEOUT_DIALOG:I = 0x0

.field private static final DISMISS_TIMEOUT_DIALOG_VALUE:I = 0x1f40

.field private static final PREFERENCE_USER_TIMEOUT:Ljava/lang/String; = "user_timeout"

.field private static final TAG:Ljava/lang/String; = "HidIncomingpriorityoffActivity"

.field private static final V:Z = true


# instance fields
.field private btAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private device:Landroid/bluetooth/BluetoothDevice;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPositive:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mTimeout:Z

.field private final mTimeoutHandler:Landroid/os/Handler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->mTimeout:Z

    return v0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->device:Landroid/bluetooth/BluetoothDevice;

    iput-boolean v1, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->mTimeout:Z

    iput-boolean v1, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->mPositive:Z

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity$1;-><init>(Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity$2;-><init>(Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->mTimeoutHandler:Landroid/os/Handler;

    return-void
.end method

.method private isTablet()Z
    .locals 2

    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
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

    invoke-static {p1}, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->makeVibrate(Landroid/content/Context;)V
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

    iget-object v0, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string/jumbo v0, "HidIncomingpriorityoffActivity"

    const-string/jumbo v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->mPositive:Z

    invoke-virtual {p0}, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->finish()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string/jumbo v6, "HidIncomingpriorityoffActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onCreate(): action = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0, v9}, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->setFinishOnTouchOutside(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "address"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    iput-object v6, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->device:Landroid/bluetooth/BluetoothDevice;

    const-string/jumbo v6, "power"

    invoke-virtual {p0, v6}, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    const-string/jumbo v6, "HidIncomingpriorityoffActivity"

    const v7, 0x3000001a

    invoke-virtual {v5, v7, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string/jumbo v6, "HidIncomingpriorityoffActivity"

    invoke-virtual {v5, v9, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string/jumbo v6, "HidIncomingpriorityoffActivity"

    const/16 v7, 0xa

    invoke-virtual {v5, v7, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v6, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v6, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v6, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    iget-object v6, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v4, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v6, 0x7f0a005d

    invoke-virtual {p0, v6}, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v1, v6, v10

    const v7, 0x7f0a005e

    invoke-virtual {p0, v7, v6}, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    const v6, 0x7f0a0060

    invoke-virtual {p0, v6}, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const v6, 0x7f0a005f

    invoke-virtual {p0, v6}, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->setupAlert()V

    invoke-direct {p0, p0}, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->makeNotiSound(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->onTimeout()V

    iput-boolean v9, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->mTimeout:Z

    iput-boolean v10, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->mPositive:Z

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v6, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v3}, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_1
    invoke-virtual {p0, v10}, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->setFinishOnTouchOutside(Z)V

    goto/16 :goto_0

    :cond_2
    const v6, 0x7f0a00e0

    invoke-virtual {p0, v6}, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v3, "HidIncomingpriorityoffActivity"

    const-string/jumbo v4, "onDestroy"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v3, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->mPositive:Z

    if-eqz v3, :cond_3

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.settings.DEVICE_PROFILES_SETTINGS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v3, "device"

    iget-object v4, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v3, "device"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v3, 0x14000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->startActivity(Landroid/content/Intent;)V

    :cond_3
    iput-boolean v6, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->mTimeout:Z

    iput-boolean v6, p0, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->mPositive:Z

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "HidIncomingpriorityoffActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onDestroy :: unregisterReceiver : IllegalArgumentException Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const-string/jumbo v0, "HidIncomingpriorityoffActivity"

    const-string/jumbo v1, "onKeyDown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "HidIncomingpriorityoffActivity"

    const-string/jumbo v1, "onKeyDown() called; Key: back key"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/bluetooth/hid/BluetoothHidIncomingpriorityoffActivity;->finish()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
