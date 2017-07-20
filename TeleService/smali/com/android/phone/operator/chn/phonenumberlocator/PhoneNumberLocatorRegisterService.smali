.class public Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;
.super Landroid/app/Service;
.source "PhoneNumberLocatorRegisterService.java"


# static fields
.field public static PNL_AUTO_UPDATE:Ljava/lang/String;

.field public static isServiceStarted:Z


# instance fields
.field private mReceiver:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "pnlAutoUpdate"

    sput-object v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sput-boolean v3, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;->isServiceStarted:Z

    const-string/jumbo v1, "PhoneNumberLocatorRegisterService"

    const-string/jumbo v2, "onCreate()"

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    new-instance v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;

    invoke-direct {v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;-><init>()V

    iput-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;->mReceiver:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;->mReceiver:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const-string/jumbo v0, "PhoneNumberLocatorRegisterService"

    const-string/jumbo v1, "Destroying PhoneNumberLocatorRegisterService"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;->mReceiver:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;->isServiceStarted:Z

    return-void
.end method
