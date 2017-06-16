.class Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList;
.super Ljava/lang/Object;
.source "BluetoothPbapVcardList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList$CardEntryHandler;
    }
.end annotation


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mCards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vcard/VCardEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList;->mCards:Ljava/util/ArrayList;

    return-object v0
.end method

.method public constructor <init>(Landroid/accounts/Account;Ljava/io/InputStream;B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList;->mCards:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, p2, p3}, Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList;->parse(Ljava/io/InputStream;B)V

    return-void
.end method

.method private parse(Ljava/io/InputStream;B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    if-ne p2, v5, :cond_0

    new-instance v4, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {v4}, Lcom/android/vcard/VCardParser_V30;-><init>()V

    :goto_0
    new-instance v0, Lcom/android/vcard/VCardEntryConstructor;

    iget-object v5, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList;->mAccount:Landroid/accounts/Account;

    const/high16 v6, -0x40000000    # -2.0f

    invoke-direct {v0, v6, v5}, Lcom/android/vcard/VCardEntryConstructor;-><init>(ILandroid/accounts/Account;)V

    new-instance v1, Lcom/android/vcard/VCardEntryCounter;

    invoke-direct {v1}, Lcom/android/vcard/VCardEntryCounter;-><init>()V

    new-instance v3, Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList$CardEntryHandler;

    invoke-direct {v3, p0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList$CardEntryHandler;-><init>(Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList;)V

    invoke-virtual {v0, v3}, Lcom/android/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/android/vcard/VCardEntryHandler;)V

    invoke-virtual {v4, v0}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    invoke-virtual {v4, v1}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    :try_start_0
    invoke-virtual {v4, p1}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    new-instance v4, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v4}, Lcom/android/vcard/VCardParser_V21;-><init>()V

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lcom/android/vcard/exception/VCardException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFirst()Lcom/android/vcard/VCardEntry;
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList;->mCards:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry;

    return-object v0
.end method

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

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList;->mCards:Ljava/util/ArrayList;

    return-object v0
.end method
