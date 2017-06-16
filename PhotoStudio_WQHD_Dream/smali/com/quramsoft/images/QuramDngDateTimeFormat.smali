.class public final enum Lcom/quramsoft/images/QuramDngDateTimeFormat;
.super Ljava/lang/Enum;
.source "QuramDngDateTimeFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/quramsoft/images/QuramDngDateTimeFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/quramsoft/images/QuramDngDateTimeFormat;

.field public static final enum QuramDngDateTimeFormatExif:Lcom/quramsoft/images/QuramDngDateTimeFormat;

.field public static final enum QuramDngDateTimeFormatUnixBigEndian:Lcom/quramsoft/images/QuramDngDateTimeFormat;

.field public static final enum QuramDngDateTimeFormatUnixLittleEndian:Lcom/quramsoft/images/QuramDngDateTimeFormat;

.field public static final enum QuramDngDateTimeFormatUnknown:Lcom/quramsoft/images/QuramDngDateTimeFormat;


# instance fields
.field public date:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/quramsoft/images/QuramDngDateTimeFormat;

    const-string v1, "QuramDngDateTimeFormatUnknown"

    invoke-direct {v0, v1, v2, v2}, Lcom/quramsoft/images/QuramDngDateTimeFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/quramsoft/images/QuramDngDateTimeFormat;->QuramDngDateTimeFormatUnknown:Lcom/quramsoft/images/QuramDngDateTimeFormat;

    new-instance v0, Lcom/quramsoft/images/QuramDngDateTimeFormat;

    const-string v1, "QuramDngDateTimeFormatExif"

    invoke-direct {v0, v1, v3, v3}, Lcom/quramsoft/images/QuramDngDateTimeFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/quramsoft/images/QuramDngDateTimeFormat;->QuramDngDateTimeFormatExif:Lcom/quramsoft/images/QuramDngDateTimeFormat;

    new-instance v0, Lcom/quramsoft/images/QuramDngDateTimeFormat;

    const-string v1, "QuramDngDateTimeFormatUnixLittleEndian"

    invoke-direct {v0, v1, v4, v4}, Lcom/quramsoft/images/QuramDngDateTimeFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/quramsoft/images/QuramDngDateTimeFormat;->QuramDngDateTimeFormatUnixLittleEndian:Lcom/quramsoft/images/QuramDngDateTimeFormat;

    new-instance v0, Lcom/quramsoft/images/QuramDngDateTimeFormat;

    const-string v1, "QuramDngDateTimeFormatUnixBigEndian"

    invoke-direct {v0, v1, v5, v5}, Lcom/quramsoft/images/QuramDngDateTimeFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/quramsoft/images/QuramDngDateTimeFormat;->QuramDngDateTimeFormatUnixBigEndian:Lcom/quramsoft/images/QuramDngDateTimeFormat;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/quramsoft/images/QuramDngDateTimeFormat;

    sget-object v1, Lcom/quramsoft/images/QuramDngDateTimeFormat;->QuramDngDateTimeFormatUnknown:Lcom/quramsoft/images/QuramDngDateTimeFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/quramsoft/images/QuramDngDateTimeFormat;->QuramDngDateTimeFormatExif:Lcom/quramsoft/images/QuramDngDateTimeFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/quramsoft/images/QuramDngDateTimeFormat;->QuramDngDateTimeFormatUnixLittleEndian:Lcom/quramsoft/images/QuramDngDateTimeFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/quramsoft/images/QuramDngDateTimeFormat;->QuramDngDateTimeFormatUnixBigEndian:Lcom/quramsoft/images/QuramDngDateTimeFormat;

    aput-object v1, v0, v5

    sput-object v0, Lcom/quramsoft/images/QuramDngDateTimeFormat;->ENUM$VALUES:[Lcom/quramsoft/images/QuramDngDateTimeFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/quramsoft/images/QuramDngDateTimeFormat;->date:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/quramsoft/images/QuramDngDateTimeFormat;
    .locals 1

    const-class v0, Lcom/quramsoft/images/QuramDngDateTimeFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/quramsoft/images/QuramDngDateTimeFormat;

    return-object v0
.end method

.method public static values()[Lcom/quramsoft/images/QuramDngDateTimeFormat;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/quramsoft/images/QuramDngDateTimeFormat;->ENUM$VALUES:[Lcom/quramsoft/images/QuramDngDateTimeFormat;

    array-length v1, v0

    new-array v2, v1, [Lcom/quramsoft/images/QuramDngDateTimeFormat;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getData()I
    .locals 1

    iget v0, p0, Lcom/quramsoft/images/QuramDngDateTimeFormat;->date:I

    return v0
.end method
