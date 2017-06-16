.class final Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;
.super Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;
.source "BluetoothPbapRequestPullPhoneBook.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothPbapRequestPullPhoneBook"

.field private static final TYPE:Ljava/lang/String; = "x-bt/phonebook"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private final mFormat:B

.field private mNewMissedCalls:I

.field private mResponse:Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/accounts/Account;JBII)V
    .locals 7

    const v1, 0xffff

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, -0x1

    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;-><init>()V

    iput v4, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;->mNewMissedCalls:I

    iput-object p2, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;->mAccount:Landroid/accounts/Account;

    if-ltz p6, :cond_0

    if-le p6, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "maxListCount should be [0..65535]"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-ltz p7, :cond_2

    if-le p7, v1, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "listStartOffset should be [0..65535]"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;->mHeaderSet:Ljavax/obex/HeaderSet;

    invoke-virtual {v1, v5, p1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;->mHeaderSet:Ljavax/obex/HeaderSet;

    const-string/jumbo v2, "x-bt/phonebook"

    const/16 v3, 0x42

    invoke-virtual {v1, v3, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    new-instance v0, Lcom/android/bluetooth/pbapclient/utils/ObexAppParameters;

    invoke-direct {v0}, Lcom/android/bluetooth/pbapclient/utils/ObexAppParameters;-><init>()V

    if-eqz p5, :cond_4

    if-eq p5, v5, :cond_4

    const/4 p5, 0x0

    :cond_4
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/bluetooth/pbapclient/utils/ObexAppParameters;->add(BJ)V

    :cond_5
    const/4 v1, 0x7

    invoke-virtual {v0, v1, p5}, Lcom/android/bluetooth/pbapclient/utils/ObexAppParameters;->add(BB)V

    if-lez p6, :cond_7

    int-to-short v1, p6

    invoke-virtual {v0, v6, v1}, Lcom/android/bluetooth/pbapclient/utils/ObexAppParameters;->add(BS)V

    :goto_0
    if-lez p7, :cond_6

    int-to-short v1, p7

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lcom/android/bluetooth/pbapclient/utils/ObexAppParameters;->add(BS)V

    :cond_6
    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;->mHeaderSet:Ljavax/obex/HeaderSet;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbapclient/utils/ObexAppParameters;->addToHeaderSet(Ljavax/obex/HeaderSet;)V

    iput-byte p5, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;->mFormat:B

    return-void

    :cond_7
    invoke-virtual {v0, v6, v4}, Lcom/android/bluetooth/pbapclient/utils/ObexAppParameters;->add(BS)V

    goto :goto_0
.end method


# virtual methods
.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vcard/VCardEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;->mResponse:Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList;

    invoke-virtual {v0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList;->getList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getNewMissedCalls()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;->mNewMissedCalls:I

    return v0
.end method

.method protected readResponse(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "BluetoothPbapRequestPullPhoneBook"

    const-string/jumbo v1, "readResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList;

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;->mAccount:Landroid/accounts/Account;

    iget-byte v2, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;->mFormat:B

    invoke-direct {v0, v1, p1, v2}, Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList;-><init>(Landroid/accounts/Account;Ljava/io/InputStream;B)V

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;->mResponse:Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList;

    const-string/jumbo v0, "BluetoothPbapRequestPullPhoneBook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;->mResponse:Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList;

    invoke-virtual {v2}, Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " entries."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected readResponseHeaders(Ljavax/obex/HeaderSet;)V
    .locals 4

    const/16 v3, 0x9

    const-string/jumbo v1, "BluetoothPbapRequestPullPhoneBook"

    const-string/jumbo v2, "readResponseHeaders"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/bluetooth/pbapclient/utils/ObexAppParameters;->fromHeaderSet(Ljavax/obex/HeaderSet;)Lcom/android/bluetooth/pbapclient/utils/ObexAppParameters;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/pbapclient/utils/ObexAppParameters;->exists(B)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/pbapclient/utils/ObexAppParameters;->getByte(B)B

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;->mNewMissedCalls:I

    :cond_0
    return-void
.end method
