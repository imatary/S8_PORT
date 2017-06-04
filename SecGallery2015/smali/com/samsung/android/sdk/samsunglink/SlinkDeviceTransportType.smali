.class public final enum Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;
.super Ljava/lang/Enum;
.source "SlinkDeviceTransportType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;

.field public static final enum LOCAL:Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;

.field public static final enum SLINK:Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;

.field private static final TAG:Ljava/lang/String;

.field public static final enum UNKNOWN:Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;

.field public static final enum UNREGISTERED:Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;

.field public static final enum WEARABLE:Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;

.field public static final enum WEB_STORAGE:Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;

    const-string/jumbo v1, "LOCAL"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;->LOCAL:Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;

    const-string/jumbo v1, "SLINK"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;->SLINK:Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;

    const-string/jumbo v1, "WEB_STORAGE"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;->WEB_STORAGE:Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;

    const-string/jumbo v1, "UNREGISTERED"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;->UNREGISTERED:Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;->UNKNOWN:Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;

    const-string/jumbo v1, "WEARABLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;->WEARABLE:Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;->LOCAL:Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;->SLINK:Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;->WEB_STORAGE:Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;->UNREGISTERED:Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;->UNKNOWN:Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;->WEARABLE:Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;->ENUM$VALUES:[Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;

    const-class v0, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getDeviceTransportType(Landroid/database/Cursor;)Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;
    .locals 6

    const-string/jumbo v3, "transport_type"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;->valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unrecognized value for deviceTransportType: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;->UNKNOWN:Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;->ENUM$VALUES:[Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;

    array-length v1, v0

    new-array v2, v1, [Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toContentValues(Landroid/content/ContentValues;)V
    .locals 2

    const-string/jumbo v0, "transport_type"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
