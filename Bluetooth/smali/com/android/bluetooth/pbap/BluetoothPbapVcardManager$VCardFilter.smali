.class public Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;
.super Ljava/lang/Object;
.source "BluetoothPbapVcardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VCardFilter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;
    }
.end annotation


# static fields
.field private static final SEPARATOR:Ljava/lang/String;


# instance fields
.field private final filter:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;->SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;->filter:[B

    return-void
.end method

.method private isFilteredIn(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;Z)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v4, p1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->pos:I

    div-int/lit8 v4, v4, 0x8

    add-int/lit8 v1, v4, 0x1

    iget v4, p1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->pos:I

    rem-int/lit8 v0, v4, 0x8

    if-nez p2, :cond_0

    iget-boolean v4, p1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->onlyCheckV21:Z

    if-eqz v4, :cond_0

    return v2

    :cond_0
    if-eqz p2, :cond_1

    iget-boolean v4, p1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->excludeForV21:Z

    if-eqz v4, :cond_1

    return v3

    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;->filter:[B

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;->filter:[B

    array-length v4, v4

    if-lt v1, v4, :cond_3

    :cond_2
    return v2

    :cond_3
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;->filter:[B

    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;->filter:[B

    array-length v5, v5

    sub-int/2addr v5, v1

    aget-byte v4, v4, v5

    shr-int/2addr v4, v0

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    :goto_0
    return v2

    :cond_4
    move v2, v3

    goto :goto_0
.end method


# virtual methods
.method public apply(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 13

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;->filter:[B

    if-nez v6, :cond_0

    return-object p1

    :cond_0
    sget-object v6, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    array-length v9, v5

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_6

    aget-object v4, v5, v8

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v10, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "[;:]"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v1, v6, v7

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->values()[Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    move-result-object v10

    array-length v11, v10

    move v6, v7

    :goto_2
    if-ge v6, v11, :cond_4

    aget-object v0, v10, v6

    iget-object v12, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->prop:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-direct {p0, v0, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;->isFilteredIn(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;Z)Z

    move-result v2

    :cond_4
    const-string/jumbo v6, "X-"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v2, 0x0

    const-string/jumbo v6, "X-IRMC-CALL-DATETIME"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public isPhotoEnabled()Z
    .locals 2

    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->PHOTO:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;->isFilteredIn(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;Z)Z

    move-result v0

    return v0
.end method
