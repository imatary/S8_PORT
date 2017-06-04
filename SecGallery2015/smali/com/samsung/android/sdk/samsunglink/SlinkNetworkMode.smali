.class public final enum Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;
.super Ljava/lang/Enum;
.source "SlinkNetworkMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$samsung$android$sdk$samsunglink$SlinkNetworkMode:[I

.field public static final enum BLUETOOTH:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

.field private static final synthetic ENUM$VALUES:[Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

.field public static final enum MOBILE_2G:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

.field public static final enum MOBILE_3G:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

.field public static final enum MOBILE_LTE:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

.field public static final enum OFF:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

.field private static final TAG:Ljava/lang/String;

.field public static final enum UNKNOWN:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

.field public static final enum WIFI:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;


# direct methods
.method static synthetic $SWITCH_TABLE$com$samsung$android$sdk$samsunglink$SlinkNetworkMode()[I
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->$SWITCH_TABLE$com$samsung$android$sdk$samsunglink$SlinkNetworkMode:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->values()[Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->BLUETOOTH:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->MOBILE_2G:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->MOBILE_3G:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->MOBILE_LTE:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->OFF:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->UNKNOWN:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->WIFI:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->$SWITCH_TABLE$com$samsung$android$sdk$samsunglink$SlinkNetworkMode:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

    const-string/jumbo v1, "OFF"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->OFF:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

    const-string/jumbo v1, "WIFI"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->WIFI:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

    const-string/jumbo v1, "MOBILE_2G"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->MOBILE_2G:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

    const-string/jumbo v1, "MOBILE_3G"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->MOBILE_3G:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

    const-string/jumbo v1, "MOBILE_LTE"

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->MOBILE_LTE:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->UNKNOWN:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

    const-string/jumbo v1, "BLUETOOTH"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->BLUETOOTH:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->OFF:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->WIFI:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->MOBILE_2G:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->MOBILE_3G:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->MOBILE_LTE:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->UNKNOWN:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->BLUETOOTH:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->ENUM$VALUES:[Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

    const-class v0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getNetworkMode(Landroid/database/Cursor;)Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;
    .locals 5

    :try_start_0
    const-string/jumbo v3, "network_mode"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->OFF:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

    :goto_0
    return-object v3

    :cond_0
    invoke-static {v2}, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Unrecognized value for network mode: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->UNKNOWN:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->ENUM$VALUES:[Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toContentValues(Landroid/content/ContentValues;)V
    .locals 2

    const-string/jumbo v0, "network_mode"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->$SWITCH_TABLE$com$samsung$android$sdk$samsunglink$SlinkNetworkMode()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "2G"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "3G"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "4G"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
