.class Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBookSize;
.super Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;
.source "BluetoothPbapRequestPullPhoneBookSize.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothPbapRequestPullPhoneBookSize"

.field private static final TYPE:Ljava/lang/String; = "x-bt/phonebook"


# instance fields
.field private mSize:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;-><init>()V

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBookSize;->mHeaderSet:Ljavax/obex/HeaderSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBookSize;->mHeaderSet:Ljavax/obex/HeaderSet;

    const-string/jumbo v2, "x-bt/phonebook"

    const/16 v3, 0x42

    invoke-virtual {v1, v3, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    new-instance v0, Lcom/android/bluetooth/pbapclient/utils/ObexAppParameters;

    invoke-direct {v0}, Lcom/android/bluetooth/pbapclient/utils/ObexAppParameters;-><init>()V

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/pbapclient/utils/ObexAppParameters;->add(BS)V

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBookSize;->mHeaderSet:Ljavax/obex/HeaderSet;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbapclient/utils/ObexAppParameters;->addToHeaderSet(Ljavax/obex/HeaderSet;)V

    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBookSize;->mSize:I

    return v0
.end method

.method protected readResponseHeaders(Ljavax/obex/HeaderSet;)V
    .locals 3

    const-string/jumbo v1, "BluetoothPbapRequestPullPhoneBookSize"

    const-string/jumbo v2, "readResponseHeaders"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/bluetooth/pbapclient/utils/ObexAppParameters;->fromHeaderSet(Ljavax/obex/HeaderSet;)Lcom/android/bluetooth/pbapclient/utils/ObexAppParameters;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbapclient/utils/ObexAppParameters;->getShort(B)S

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBookSize;->mSize:I

    return-void
.end method
