.class public Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;
.super Landroid/telecom/ConnectionService;
.source "HfpClientConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$1;,
        Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$2;
    }
.end annotation


# static fields
.field public static final HFP_SCHEME:Ljava/lang/String; = "hfpc"

.field private static final TAG:Ljava/lang/String; = "HfpClientConnService"


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

.field private mConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDevicePhoneAccount:Landroid/telecom/PhoneAccount;

.field private mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

.field private mPendingAcceptCall:Z

.field mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mTelecomManager:Landroid/telecom/TelecomManager;


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mConnections:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Landroid/telecom/PhoneAccount;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mDevicePhoneAccount:Landroid/telecom/PhoneAccount;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Landroid/bluetooth/BluetoothHeadsetClient;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mPendingAcceptCall:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Landroid/telecom/TelecomManager;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;Landroid/telecom/PhoneAccount;)Landroid/telecom/PhoneAccount;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mDevicePhoneAccount:Landroid/telecom/PhoneAccount;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mPendingAcceptCall:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->disconnectAll()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;Landroid/bluetooth/BluetoothHeadsetClientCall;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->handleCall(Landroid/bluetooth/BluetoothHeadsetClientCall;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/telecom/ConnectionService;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mConnections:Ljava/util/Map;

    new-instance v0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$1;-><init>(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$2;-><init>(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-void
.end method

.method private buildConnection(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHeadsetClientCall;Landroid/net/Uri;)Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;
    .locals 6

    const-string/jumbo v1, "HfpClientConnService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Creating connection on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHeadsetClient;Landroid/bluetooth/BluetoothHeadsetClientCall;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mConnections:Ljava/util/Map;

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private disconnectAll()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mConnections:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->onHfpDisconnected()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    invoke-virtual {v2}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->destroy()V

    iput-object v3, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    :cond_1
    return-void
.end method

.method public static getAccount(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Landroid/telecom/PhoneAccount;
    .locals 7

    const-string/jumbo v3, "hfpc"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/telecom/PhoneAccountHandle;

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    new-instance v3, Landroid/telecom/PhoneAccount$Builder;

    const-string/jumbo v4, "HFP"

    invoke-direct {v3, v2, v4}, Landroid/telecom/PhoneAccount$Builder;-><init>(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v1}, Landroid/telecom/PhoneAccount$Builder;->setAddress(Landroid/net/Uri;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "tel"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/telecom/PhoneAccount$Builder;->setSupportedUriSchemes(Ljava/util/List;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/telecom/PhoneAccount$Builder;->setCapabilities(I)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/PhoneAccount$Builder;->build()Landroid/telecom/PhoneAccount;

    move-result-object v0

    const-string/jumbo v3, "HfpClientConnService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "phoneaccount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getDevice(Landroid/telecom/PhoneAccountHandle;)Landroid/bluetooth/BluetoothDevice;
    .locals 3

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v2, p1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAddress()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    return-object v2
.end method

.method private handleCall(Landroid/bluetooth/BluetoothHeadsetClientCall;)V
    .locals 9

    const/4 v8, 0x0

    const-string/jumbo v5, "HfpClientConnService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Got call "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "tel"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mConnections:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->handleCallChanged(Landroid/bluetooth/BluetoothHeadsetClientCall;)V

    :cond_0
    if-nez v1, :cond_4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-direct {p0, v5, p1, v4}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->buildConnection(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHeadsetClientCall;Landroid/net/Uri;)Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->getHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    const-string/jumbo v5, "telecom"

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/TelecomManager;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    :cond_1
    const-string/jumbo v5, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    invoke-virtual {v0, v5, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v3, v2, v0}, Landroid/telecom/TelecomManager;->addNewUnknownCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->updateConferenceableConnections()V

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    const-string/jumbo v5, "android.telecom.extra.INCOMING_CALL_EXTRAS"

    invoke-virtual {v0, v5, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v3, v2, v0}, Landroid/telecom/TelecomManager;->addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_2

    const-string/jumbo v5, "HfpClientConnService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Removing number "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mConnections:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static hasHfpClientEcc(Landroid/bluetooth/BluetoothHeadsetClient;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const-string/jumbo v2, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ECC"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method private updateConferenceableConnections()V
    .locals 13

    iget-object v10, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mConnections:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;

    invoke-virtual {v3}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->getState()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    :goto_1
    invoke-virtual {v3}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->inConference()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Connection;

    invoke-virtual {v2, v0}, Landroid/telecom/Connection;->setConferenceableConnections(Ljava/util/List;)V

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Connection;

    invoke-virtual {v2, v7}, Landroid/telecom/Connection;->setConferenceableConnections(Ljava/util/List;)V

    goto :goto_3

    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_6

    iget-object v10, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    if-nez v10, :cond_6

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->getHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->getDevice(Landroid/telecom/PhoneAccountHandle;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    new-instance v10, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->getHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v11

    iget-object v12, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-direct {v10, v11, v5, v12}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHeadsetClient;)V

    iput-object v10, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    const/4 v10, 0x0

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telecom/Connection;

    invoke-virtual {v10}, Landroid/telecom/Connection;->getState()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_4

    iget-object v10, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    invoke-virtual {v10}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->setActive()V

    :goto_4
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Connection;

    iget-object v10, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    invoke-virtual {v10, v2}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->addConnection(Landroid/telecom/Connection;)Z

    goto :goto_5

    :cond_4
    iget-object v10, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    invoke-virtual {v10}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->setOnHold()V

    goto :goto_4

    :cond_5
    iget-object v10, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    invoke-virtual {p0, v10}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->addConference(Landroid/telecom/Conference;)V

    :cond_6
    iget-object v10, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    if-eqz v10, :cond_a

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    invoke-virtual {v10}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->getConnections()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Connection;

    move-object v10, v2

    check-cast v10, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;

    invoke-virtual {v10}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->inConference()Z

    move-result v10

    if-nez v10, :cond_7

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Connection;

    iget-object v10, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    invoke-virtual {v10, v2}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->removeConnection(Landroid/telecom/Connection;)V

    goto :goto_7

    :cond_9
    iget-object v10, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    invoke-virtual {v10}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->getConnections()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-gt v10, v11, :cond_b

    iget-object v10, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    invoke-virtual {v10}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->destroy()V

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    :cond_a
    :goto_8
    return-void

    :cond_b
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;

    invoke-virtual {v2}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    move-result-object v10

    if-nez v10, :cond_c

    invoke-virtual {v2}, Landroid/telecom/Connection;->getState()I

    move-result v10

    const/4 v11, 0x5

    if-eq v10, v11, :cond_d

    invoke-virtual {v2}, Landroid/telecom/Connection;->getState()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_c

    :cond_d
    move-object v10, v2

    check-cast v10, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;

    invoke-virtual {v10}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->inConference()Z

    move-result v10

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    invoke-virtual {v10, v2}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->addConnection(Landroid/telecom/Connection;)Z

    goto :goto_9

    :cond_e
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_f
    iget-object v10, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    invoke-virtual {v10, v8}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->setConferenceableConnections(Ljava/util/List;)V

    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized getHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mDevicePhoneAccount:Landroid/telecom/PhoneAccount;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Handle null??"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mDevicePhoneAccount:Landroid/telecom/PhoneAccount;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public onConference(Landroid/telecom/Connection;Landroid/telecom/Connection;)V
    .locals 4

    const-string/jumbo v1, "HfpClientConnService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onConference "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->getHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->getDevice(Landroid/telecom/PhoneAccountHandle;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    new-instance v1, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->getHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-direct {v1, v2, v0, v3}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHeadsetClient;)V

    iput-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->addConference(Landroid/telecom/Conference;)V

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->setActive()V

    invoke-virtual {p1}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->addConnection(Landroid/telecom/Connection;)Z

    :cond_1
    invoke-virtual {p2}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->addConnection(Landroid/telecom/Connection;)Z

    :cond_2
    return-void
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/telecom/ConnectionService;->onCreate()V

    const-string/jumbo v0, "HfpClientConnService"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string/jumbo v0, "telecom"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mTelecomManager:Landroid/telecom/TelecomManager;

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v2, 0x10

    invoke-virtual {v0, p0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method

.method public onCreateIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v3, "HfpClientConnService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreateIncomingConnection "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " req: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->getHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/telecom/PhoneAccountHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "android.telecom.extra.INCOMING_CALL_EXTRAS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    const-string/jumbo v3, "tel"

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mConnections:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->onAdded()V

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->updateConferenceableConnections()V

    return-object v1

    :cond_1
    const-string/jumbo v3, "HfpClientConnService"

    const-string/jumbo v4, "HfpClient does not support having a connection manager"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_2
    const-string/jumbo v3, "HfpClientConnService"

    const-string/jumbo v4, "Connection should exist in our db, if it doesn\'t we dont know how to handle this call."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6
.end method

.method public onCreateOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "HfpClientConnService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreateOutgoingConnection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->getHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telecom/PhoneAccountHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->getDevice(Landroid/telecom/PhoneAccountHandle;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAddress()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v1, v4, v2}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->buildConnection(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHeadsetClientCall;Landroid/net/Uri;)Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->onAdded()V

    return-object v0

    :cond_1
    const-string/jumbo v1, "HfpClientConnService"

    const-string/jumbo v2, "HfpClient does not support having a connection manager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public onCreateUnknownConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v3, "HfpClientConnService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreateUnknownConnection "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->getHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/telecom/PhoneAccountHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    const-string/jumbo v3, "tel"

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mConnections:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->onAdded()V

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->updateConferenceableConnections()V

    return-object v1

    :cond_1
    const-string/jumbo v3, "HfpClientConnService"

    const-string/jumbo v4, "HfpClient does not support having a connection manager"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_2
    const-string/jumbo v3, "HfpClientConnService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Connection should exist in our db, if it doesn\'t we dont know how to handle this call "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6
.end method

.method public onDestroy()V
    .locals 4

    const-string/jumbo v1, "HfpClientConnService"

    const-string/jumbo v2, "onDestroy called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    const/16 v3, 0x10

    invoke-virtual {v1, v3, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mDevicePhoneAccount:Landroid/telecom/PhoneAccount;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mTelecomManager:Landroid/telecom/TelecomManager;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mDevicePhoneAccount:Landroid/telecom/PhoneAccount;

    invoke-virtual {v2}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telecom/TelecomManager;->unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mDevicePhoneAccount:Landroid/telecom/PhoneAccount;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "HfpClientConnService"

    const-string/jumbo v2, "Receiver was not registered."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "HfpClientConnService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStartCommand "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->HFP_CLIENT_STOP_TAG:Ljava/lang/String;

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->stopSelf()V

    return v4

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.bluetooth.headsetclient.profile.action.AG_CALL_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    return v1
.end method
