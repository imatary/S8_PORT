.class final Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath;
.super Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;
.source "BluetoothPbapRequestSetPath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-bluetooth-pbapclient-BluetoothPbapRequestSetPath$SetPathDirSwitchesValues:[I = null

.field private static final TAG:Ljava/lang/String; = "BluetoothPbapRequestSetPath"


# instance fields
.field private mDir:Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;


# direct methods
.method private static synthetic -getcom-android-bluetooth-pbapclient-BluetoothPbapRequestSetPath$SetPathDirSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath;->-com-android-bluetooth-pbapclient-BluetoothPbapRequestSetPath$SetPathDirSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath;->-com-android-bluetooth-pbapclient-BluetoothPbapRequestSetPath$SetPathDirSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;->values()[Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;->DOWN:Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;

    invoke-virtual {v1}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;->ROOT:Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;

    invoke-virtual {v1}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;->UP:Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;

    invoke-virtual {v1}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath;->-com-android-bluetooth-pbapclient-BluetoothPbapRequestSetPath$SetPathDirSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;-><init>()V

    sget-object v0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;->DOWN:Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath;->mDir:Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath;->mHeaderSet:Ljavax/obex/HeaderSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;-><init>()V

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath;->mHeaderSet:Ljavax/obex/HeaderSet;

    invoke-virtual {v0}, Ljavax/obex/HeaderSet;->setEmptyNameHeader()V

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;->UP:Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath;->mDir:Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;->ROOT:Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath;->mDir:Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljavax/obex/ClientSession;)V
    .locals 5

    const-string/jumbo v2, "BluetoothPbapRequestSetPath"

    const-string/jumbo v3, "execute"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath;->-getcom-android-bluetooth-pbapclient-BluetoothPbapRequestSetPath$SetPathDirSwitchesValues()[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath;->mDir:Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;

    invoke-virtual {v3}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    invoke-virtual {v1}, Ljavax/obex/HeaderSet;->getResponseCode()I

    move-result v2

    iput v2, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath;->mResponseCode:I

    :goto_1
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath;->mHeaderSet:Ljavax/obex/HeaderSet;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Ljavax/obex/ClientSession;->setPath(Ljavax/obex/HeaderSet;ZZ)Ljavax/obex/HeaderSet;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath;->mHeaderSet:Ljavax/obex/HeaderSet;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Ljavax/obex/ClientSession;->setPath(Ljavax/obex/HeaderSet;ZZ)Ljavax/obex/HeaderSet;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v2, 0xd0

    iput v2, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath;->mResponseCode:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
