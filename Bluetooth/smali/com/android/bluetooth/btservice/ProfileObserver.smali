.class public Lcom/android/bluetooth/btservice/ProfileObserver;
.super Landroid/database/ContentObserver;
.source "ProfileObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/btservice/ProfileObserver$AdapterStateObserver;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/android/bluetooth/btservice/AdapterService;

.field private mStateObserver:Lcom/android/bluetooth/btservice/ProfileObserver$AdapterStateObserver;


# direct methods
.method static synthetic -wrap0(Lcom/android/bluetooth/btservice/ProfileObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileObserver;->onBluetoothOff()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/bluetooth/btservice/AdapterService;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/bluetooth/btservice/ProfileObserver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/bluetooth/btservice/ProfileObserver;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    new-instance v0, Lcom/android/bluetooth/btservice/ProfileObserver$AdapterStateObserver;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/ProfileObserver$AdapterStateObserver;-><init>(Lcom/android/bluetooth/btservice/ProfileObserver;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/ProfileObserver;->mStateObserver:Lcom/android/bluetooth/btservice/ProfileObserver$AdapterStateObserver;

    return-void
.end method

.method private onBluetoothOff()V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/ProfileObserver;->mStateObserver:Lcom/android/bluetooth/btservice/ProfileObserver$AdapterStateObserver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/Config;->init(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileObserver;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->enable()Z

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileObserver;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/ProfileObserver;->mStateObserver:Lcom/android/bluetooth/btservice/ProfileObserver$AdapterStateObserver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileObserver;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->disable()Z

    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "bluetooth_disabled_profiles"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
