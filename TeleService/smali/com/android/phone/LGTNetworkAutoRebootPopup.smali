.class public Lcom/android/phone/LGTNetworkAutoRebootPopup;
.super Lcom/android/internal/app/AlertActivity;
.source "LGTNetworkAutoRebootPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/LGTNetworkAutoRebootPopup$1;
    }
.end annotation


# instance fields
.field final app:Lcom/android/phone/PhoneGlobals;

.field private isWaitRadioPowerOff:Z

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/phone/LGTNetworkAutoRebootPopup;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup;->isWaitRadioPowerOff:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/phone/LGTNetworkAutoRebootPopup;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup;->isWaitRadioPowerOff:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/LGTNetworkAutoRebootPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->setAuto()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup;->app:Lcom/android/phone/PhoneGlobals;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup;->isWaitRadioPowerOff:Z

    new-instance v0, Lcom/android/phone/LGTNetworkAutoRebootPopup$1;

    invoke-direct {v0, p0}, Lcom/android/phone/LGTNetworkAutoRebootPopup$1;-><init>(Lcom/android/phone/LGTNetworkAutoRebootPopup;)V

    iput-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LGTNetworkAutoRebootPopup "

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
    .locals 5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.phone"

    const-string/jumbo v3, "com.android.phone.LGTNetworkAutoRebootProgressDialog"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "LGTNetworkAutoRebootPopup "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startActivity() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x1

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v5, "LGTNetworkAutoRebootPopup "

    const-string/jumbo v6, " show LGTNetworkAutoRebootPopup !! "

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v5, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-static {v5, v8}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->isLteModeOn()Z

    move-result v1

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->getSimType()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1a

    invoke-direct {p0, v5, v8}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->requestSystemKeyEvent(IZ)Z

    const/4 v5, 0x3

    invoke-direct {p0, v5, v8}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->requestSystemKeyEvent(IZ)Z

    const/16 v5, 0xbb

    invoke-direct {p0, v5, v8}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->requestSystemKeyEvent(IZ)Z

    iget-object v2, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v5, "LGTNetworkAutoRebootPopup "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isLteOn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " simtype="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "mobile_newtork_style_for_kor"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v1, :cond_0

    const-string/jumbo v5, "3"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "LGTNetworkAutoRebootPopup "

    const-string/jumbo v6, "isLteOn FALSE"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "lte_mode_on"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    const v5, 0x7f0d07c7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const v5, 0x7f0d07da

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    const v5, 0x7f0d07d3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    new-instance v5, Lcom/android/phone/LGTNetworkAutoRebootPopup$2;

    invoke-direct {v5, p0}, Lcom/android/phone/LGTNetworkAutoRebootPopup$2;-><init>(Lcom/android/phone/LGTNetworkAutoRebootPopup;)V

    iput-object v5, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->setupAlert()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "LGTNetworkAutoRebootPopup "

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
    const-string/jumbo v0, "LGTNetworkAutoRebootPopup "

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

    const-string/jumbo v0, "LGTNetworkAutoRebootPopup "

    const-string/jumbo v1, " onPause!! "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    return-void
.end method
