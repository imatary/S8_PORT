.class public final enum Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;
.super Ljava/lang/Enum;
.source "SlinkDevicePhysicalType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BLURAY:Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

.field public static final enum CAMERA:Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

.field public static final enum DEVICE_PHONE:Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

.field public static final enum DEVICE_PHONE_WINDOWS:Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

.field public static final enum DEVICE_TAB:Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

.field private static final synthetic ENUM$VALUES:[Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

.field public static final enum PC:Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

.field public static final enum SPC:Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

.field private static final TAG:Ljava/lang/String;

.field public static final enum TV:Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

.field public static final enum UNKNOWN:Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

.field public static final enum WEARABLE_DEVICE:Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    const-string/jumbo v1, "DEVICE_PHONE"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;->DEVICE_PHONE:Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    const-string/jumbo v1, "DEVICE_TAB"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;->DEVICE_TAB:Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    const-string/jumbo v1, "PC"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;->PC:Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    const-string/jumbo v1, "BLURAY"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;->BLURAY:Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    const-string/jumbo v1, "CAMERA"

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;->CAMERA:Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    const-string/jumbo v1, "SPC"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;->SPC:Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    const-string/jumbo v1, "TV"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;->TV:Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    const-string/jumbo v1, "DEVICE_PHONE_WINDOWS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;->DEVICE_PHONE_WINDOWS:Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    const-string/jumbo v1, "UNKNOWN"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;->UNKNOWN:Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    const-string/jumbo v1, "WEARABLE_DEVICE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;->WEARABLE_DEVICE:Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;->DEVICE_PHONE:Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;->DEVICE_TAB:Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;->PC:Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;->BLURAY:Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;->CAMERA:Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;->SPC:Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;->TV:Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;->DEVICE_PHONE_WINDOWS:Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;->UNKNOWN:Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;->WEARABLE_DEVICE:Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;->ENUM$VALUES:[Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    const-class v0, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getDevicePhysicalType(Landroid/database/Cursor;)Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;
    .locals 7

    const-string/jumbo v4, "physical_type"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    :try_start_0
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    :try_start_1
    invoke-static {v3}, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;->valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    :goto_0
    return-object v4

    :catch_0
    move-exception v2

    :try_start_2
    sget-object v4, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Unrecognized value for devicePhysicalType: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v4, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;->UNKNOWN:Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;
    :try_end_2
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v4, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Column index: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v4, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;->UNKNOWN:Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;->ENUM$VALUES:[Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    array-length v1, v0

    new-array v2, v1, [Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toContentValues(Landroid/content/ContentValues;)V
    .locals 2

    const-string/jumbo v0, "physical_type"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
