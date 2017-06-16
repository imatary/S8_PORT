.class public Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;
.super Ljava/lang/Object;
.source "BluetoothMapbMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapbMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "vCard"
.end annotation


# instance fields
.field private mBtUcis:[Ljava/lang/String;

.field private mBtUids:[Ljava/lang/String;

.field private mEmailAddresses:[Ljava/lang/String;

.field private mEnvLevel:I

.field private mFormattedName:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPhoneNumbers:[Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mFormattedName:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mPhoneNumbers:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEmailAddresses:[Ljava/lang/String;

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEnvLevel:I

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mBtUcis:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mBtUids:[Ljava/lang/String;

    iput p5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEnvLevel:I

    const-string/jumbo v0, "3.0"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mVersion:Ljava/lang/String;

    if-eqz p1, :cond_1

    :goto_0
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mName:Ljava/lang/String;

    if-eqz p2, :cond_2

    :goto_1
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mFormattedName:Ljava/lang/String;

    invoke-direct {p0, p3}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->setPhoneNumbers([Ljava/lang/String;)V

    if-eqz p4, :cond_0

    iput-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEmailAddresses:[Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    const-string/jumbo p1, ""

    goto :goto_0

    :cond_2
    const-string/jumbo p2, ""

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mFormattedName:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mPhoneNumbers:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEmailAddresses:[Ljava/lang/String;

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEnvLevel:I

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mBtUcis:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mBtUids:[Ljava/lang/String;

    const-string/jumbo v0, "3.0"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mVersion:Ljava/lang/String;

    if-eqz p1, :cond_2

    :goto_0
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mName:Ljava/lang/String;

    if-eqz p2, :cond_3

    :goto_1
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mFormattedName:Ljava/lang/String;

    invoke-direct {p0, p3}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->setPhoneNumbers([Ljava/lang/String;)V

    if-eqz p4, :cond_0

    iput-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEmailAddresses:[Ljava/lang/String;

    :cond_0
    if-eqz p6, :cond_1

    iput-object p6, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mBtUcis:[Ljava/lang/String;

    :cond_1
    return-void

    :cond_2
    const-string/jumbo p1, ""

    goto :goto_0

    :cond_3
    const-string/jumbo p2, ""

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mFormattedName:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mPhoneNumbers:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEmailAddresses:[Ljava/lang/String;

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEnvLevel:I

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mBtUcis:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mBtUids:[Ljava/lang/String;

    const-string/jumbo v0, "2.1"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mVersion:Ljava/lang/String;

    if-eqz p1, :cond_1

    :goto_0
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mName:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->setPhoneNumbers([Ljava/lang/String;)V

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEmailAddresses:[Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    const-string/jumbo p1, ""

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mFormattedName:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mPhoneNumbers:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEmailAddresses:[Ljava/lang/String;

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEnvLevel:I

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mBtUcis:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mBtUids:[Ljava/lang/String;

    iput p4, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEnvLevel:I

    const-string/jumbo v0, "2.1"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mVersion:Ljava/lang/String;

    if-eqz p1, :cond_1

    :goto_0
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mName:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->setPhoneNumbers([Ljava/lang/String;)V

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEmailAddresses:[Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    const-string/jumbo p1, ""

    goto :goto_0
.end method

.method public static parseVcard(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;I)Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;
    .locals 14

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v10

    :goto_0
    const-string/jumbo v0, "END:VCARD"

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v0, "N:"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "[^\\\\]:"

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v0, v11

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    aget-object v1, v11, v0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_1
    const-string/jumbo v1, ""

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "FN:"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "[^\\\\]:"

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v0, v11

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    aget-object v2, v11, v0

    goto :goto_1

    :cond_3
    const-string/jumbo v2, ""

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "TEL:"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "[^\\\\]:"

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v0, v11

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    aget-object v0, v11, v0

    const-string/jumbo v3, "[^\\\\];"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    if-nez v12, :cond_5

    new-instance v12, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    :cond_5
    array-length v0, v13

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v13, v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    const-string/jumbo v0, "EMAIL:"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "[^\\\\]:"

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v0, v11

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    aget-object v0, v11, v0

    const-string/jumbo v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    if-nez v8, :cond_7

    new-instance v8, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    :cond_7
    const/4 v9, 0x0

    :goto_2
    array-length v0, v13

    if-ge v9, v0, :cond_0

    aget-object v0, v13, v9

    const-string/jumbo v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    aget-object v0, v13, v9

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->D:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "subParts["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v13, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_9
    const-string/jumbo v0, "X-BT-UCI:"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "[^\\\\]:"

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v0, v11

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    aget-object v0, v11, v0

    const-string/jumbo v3, "[^\\\\];"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    if-nez v6, :cond_a

    new-instance v6, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    :cond_a
    array-length v0, v13

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v13, v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v0, "X-BT-UID:"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[^\\\\]:"

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v0, v11

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    aget-object v0, v11, v0

    const-string/jumbo v3, "[^\\\\];"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    if-nez v7, :cond_c

    new-instance v7, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    :cond_c
    array-length v0, v13

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v13, v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_d
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    if-nez v12, :cond_e

    const/4 v3, 0x0

    :goto_3
    if-nez v8, :cond_f

    const/4 v4, 0x0

    :goto_4
    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    return-object v0

    :cond_e
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    goto :goto_3

    :cond_f
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    goto :goto_4
.end method

.method private setPhoneNumbers([Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    if-eqz p1, :cond_3

    array-length v5, p1

    if-lez v5, :cond_3

    array-length v5, p1

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mPhoneNumbers:[Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v5, p1, v1

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aget-object v5, p1, v1

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v4, :cond_0

    const-string/jumbo v5, "[0-9]*[a-zA-Z]+[0-9]*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mPhoneNumbers:[Ljava/lang/String;

    aget-object v6, p1, v1

    aput-object v6, v5, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mPhoneNumbers:[Ljava/lang/String;

    aput-object v3, v5, v1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/StringBuilder;)V
    .locals 10

    const/4 v4, 0x0

    const-string/jumbo v5, "BEGIN:VCARD"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "VERSION:"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mVersion:Ljava/lang/String;

    const-string/jumbo v6, "3.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mFormattedName:Ljava/lang/String;

    if-eqz v5, :cond_0

    const-string/jumbo v5, "FN:"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mFormattedName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mName:Ljava/lang/String;

    if-eqz v5, :cond_1

    const-string/jumbo v5, "N:"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mPhoneNumbers:[Ljava/lang/String;

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v3, v6, v5

    const-string/jumbo v8, "TEL:"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEmailAddresses:[Ljava/lang/String;

    array-length v7, v6

    move v5, v4

    :goto_1
    if-ge v5, v7, :cond_3

    aget-object v2, v6, v5

    const-string/jumbo v8, "EMAIL:"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mBtUids:[Ljava/lang/String;

    array-length v7, v6

    move v5, v4

    :goto_2
    if-ge v5, v7, :cond_4

    aget-object v1, v6, v5

    const-string/jumbo v8, "X-BT-UID:"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mBtUcis:[Ljava/lang/String;

    array-length v6, v5

    :goto_3
    if-ge v4, v6, :cond_5

    aget-object v0, v5, v4

    const-string/jumbo v7, "X-BT-UCI:"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    const-string/jumbo v4, "END:VCARD"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getEmailRecipients()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEmailAddresses:[Ljava/lang/String;

    return-object v0
.end method

.method public getEnvLevel()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEnvLevel:I

    return v0
.end method

.method public getFirstBtUci()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mBtUcis:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mBtUcis:[Ljava/lang/String;

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFirstBtUid()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mBtUids:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mBtUids:[Ljava/lang/String;

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFirstEmail()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEmailAddresses:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEmailAddresses:[Ljava/lang/String;

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFirstPhoneNumber()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mPhoneNumbers:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mPhoneNumbers:[Ljava/lang/String;

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mName:Ljava/lang/String;

    return-object v0
.end method
