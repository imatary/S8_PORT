.class public Lcom/android/bluetooth/pbap/BluetoothPbapSearch;
.super Ljava/lang/Object;
.source "BluetoothPbapSearch.java"


# static fields
.field public static final SEARCH_TYPE_NAME:I = 0x2

.field public static final SEARCH_TYPE_NUMBER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PbapSearch"


# instance fields
.field private mSearchCriteria:Ljava/lang/String;

.field private mSearchType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compileSearchCriteria(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iput p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSearch;->mSearchType:I

    iput-object p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSearch;->mSearchCriteria:Ljava/lang/String;

    iget v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSearch;->mSearchType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSearch;->mSearchCriteria:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSearch;->mSearchCriteria:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSearch;->mSearchCriteria:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 3

    iget v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSearch;->mSearchType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapSearch;->matchesByName(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSearch;->mSearchType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapSearch;->matchesByNumber(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    const-string/jumbo v0, "PbapSearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid search type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSearch;->mSearchType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public matchesByName(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSearch;->mSearchCriteria:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSearch;->mSearchCriteria:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return v2

    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSearch;->mSearchCriteria:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public matchesByNumber(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSearch;->mSearchCriteria:Ljava/lang/String;

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSearch;->mSearchCriteria:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
