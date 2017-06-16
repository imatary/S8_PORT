.class final Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullVcardEntry;
.super Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;
.source "BluetoothPbapRequestPullVcardEntry.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothPbapRequestPullVcardEntry"

.field private static final TYPE:Ljava/lang/String; = "x-bt/vcard"


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mFormat:B

.field private mResponse:Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/accounts/Account;JB)V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;-><init>()V

    iput-object p2, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullVcardEntry;->mAccount:Landroid/accounts/Account;

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullVcardEntry;->mHeaderSet:Ljavax/obex/HeaderSet;

    invoke-virtual {v1, v4, p1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullVcardEntry;->mHeaderSet:Ljavax/obex/HeaderSet;

    const-string/jumbo v2, "x-bt/vcard"

    const/16 v3, 0x42

    invoke-virtual {v1, v3, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    if-eqz p5, :cond_0

    if-eq p5, v4, :cond_0

    const/4 p5, 0x0

    :cond_0
    new-instance v0, Lcom/android/bluetooth/pbapclient/utils/ObexAppParameters;

    invoke-direct {v0}, Lcom/android/bluetooth/pbapclient/utils/ObexAppParameters;-><init>()V

    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/bluetooth/pbapclient/utils/ObexAppParameters;->add(BJ)V

    :cond_1
    const/4 v1, 0x7

    invoke-virtual {v0, v1, p5}, Lcom/android/bluetooth/pbapclient/utils/ObexAppParameters;->add(BB)V

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullVcardEntry;->mHeaderSet:Ljavax/obex/HeaderSet;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbapclient/utils/ObexAppParameters;->addToHeaderSet(Ljavax/obex/HeaderSet;)V

    iput-byte p5, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullVcardEntry;->mFormat:B

    return-void
.end method


# virtual methods
.method protected checkResponseCode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "BluetoothPbapRequestPullVcardEntry"

    const-string/jumbo v1, "checkResponseCode"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullVcardEntry;->mResponse:Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList;

    invoke-virtual {v0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xc4

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc6

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Invalid response received"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string/jumbo v0, "BluetoothPbapRequestPullVcardEntry"

    const-string/jumbo v1, "Vcard Entry not found"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public getVcard()Lcom/android/vcard/VCardEntry;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullVcardEntry;->mResponse:Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList;

    invoke-virtual {v0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList;->getFirst()Lcom/android/vcard/VCardEntry;

    move-result-object v0

    return-object v0
.end method

.method protected readResponse(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "BluetoothPbapRequestPullVcardEntry"

    const-string/jumbo v1, "readResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList;

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullVcardEntry;->mAccount:Landroid/accounts/Account;

    iget-byte v2, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullVcardEntry;->mFormat:B

    invoke-direct {v0, v1, p1, v2}, Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList;-><init>(Landroid/accounts/Account;Ljava/io/InputStream;B)V

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullVcardEntry;->mResponse:Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList;

    return-void
.end method
