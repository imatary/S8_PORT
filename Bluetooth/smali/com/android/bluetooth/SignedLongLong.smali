.class public Lcom/android/bluetooth/SignedLongLong;
.super Ljava/lang/Object;
.source "SignedLongLong.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/bluetooth/SignedLongLong;",
        ">;"
    }
.end annotation


# instance fields
.field private mLeastSigBits:J

.field private mMostSigBits:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p3, p0, Lcom/android/bluetooth/SignedLongLong;->mMostSigBits:J

    iput-wide p1, p0, Lcom/android/bluetooth/SignedLongLong;->mLeastSigBits:J

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/android/bluetooth/SignedLongLong;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v8, 0x0

    const-wide/16 v0, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-nez p0, :cond_0

    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    const/16 v7, 0x20

    if-le v6, v7, :cond_2

    :cond_1
    new-instance v7, Ljava/lang/NumberFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "invalid string length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    const/16 v7, 0x10

    if-gt v6, v7, :cond_3

    move-object v2, p0

    :goto_0
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongFromString(Ljava/lang/String;)J

    move-result-wide v0

    new-instance v7, Lcom/android/bluetooth/SignedLongLong;

    invoke-direct {v7, v0, v1, v4, v5}, Lcom/android/bluetooth/SignedLongLong;-><init>(JJ)V

    return-object v7

    :cond_3
    add-int/lit8 v7, v6, -0x10

    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v7, v6, -0x10

    invoke-virtual {p0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongFromString(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/android/bluetooth/SignedLongLong;)I
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    iget-wide v0, p0, Lcom/android/bluetooth/SignedLongLong;->mMostSigBits:J

    iget-wide v2, p1, Lcom/android/bluetooth/SignedLongLong;->mMostSigBits:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/android/bluetooth/SignedLongLong;->mLeastSigBits:J

    iget-wide v2, p1, Lcom/android/bluetooth/SignedLongLong;->mLeastSigBits:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-wide v0, p0, Lcom/android/bluetooth/SignedLongLong;->mLeastSigBits:J

    iget-wide v2, p1, Lcom/android/bluetooth/SignedLongLong;->mLeastSigBits:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    return v4

    :cond_1
    return v5

    :cond_2
    iget-wide v0, p0, Lcom/android/bluetooth/SignedLongLong;->mMostSigBits:J

    iget-wide v2, p1, Lcom/android/bluetooth/SignedLongLong;->mMostSigBits:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    return v4

    :cond_3
    return v5
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/bluetooth/SignedLongLong;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/SignedLongLong;->compareTo(Lcom/android/bluetooth/SignedLongLong;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-ne p0, p1, :cond_0

    return v7

    :cond_0
    if-nez p1, :cond_1

    return v6

    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/SignedLongLong;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v6

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/android/bluetooth/SignedLongLong;

    iget-wide v2, p0, Lcom/android/bluetooth/SignedLongLong;->mLeastSigBits:J

    iget-wide v4, v0, Lcom/android/bluetooth/SignedLongLong;->mLeastSigBits:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    return v6

    :cond_3
    iget-wide v2, p0, Lcom/android/bluetooth/SignedLongLong;->mMostSigBits:J

    iget-wide v4, v0, Lcom/android/bluetooth/SignedLongLong;->mMostSigBits:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    return v6

    :cond_4
    return v7
.end method

.method public getLeastSignificantBits()J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/SignedLongLong;->mLeastSigBits:J

    return-wide v0
.end method

.method public getMostSignificantBits()J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/SignedLongLong;->mMostSigBits:J

    return-wide v0
.end method

.method public toHexString()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/android/bluetooth/SignedLongLong;->mLeastSigBits:J

    iget-wide v2, p0, Lcom/android/bluetooth/SignedLongLong;->mMostSigBits:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongLongAsString(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/SignedLongLong;->toHexString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
