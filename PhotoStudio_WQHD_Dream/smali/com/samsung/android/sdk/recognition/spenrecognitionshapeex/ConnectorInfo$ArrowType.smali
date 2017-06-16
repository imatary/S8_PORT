.class public final enum Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;
.super Ljava/lang/Enum;
.source "ConnectorInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ArrowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;

.field public static final enum ArrowType_Angle:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;

.field public static final enum ArrowType_None:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;

.field public static final enum ArrowType_Triangle:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;

.field public static final enum ArrowType_TypesCount:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;

    const-string v1, "ArrowType_None"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;->ArrowType_None:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;

    const-string v1, "ArrowType_Angle"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;->ArrowType_Angle:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;

    const-string v1, "ArrowType_Triangle"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;->ArrowType_Triangle:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;

    const-string v1, "ArrowType_TypesCount"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;->ArrowType_TypesCount:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;

    sget-object v1, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;->ArrowType_None:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;->ArrowType_Angle:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;->ArrowType_Triangle:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;->ArrowType_TypesCount:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;->$VALUES:[Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;->$VALUES:[Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;

    return-object v0
.end method
