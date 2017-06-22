.class public final enum Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;
.super Ljava/lang/Enum;
.source "ConnectorInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;

.field public static final enum ConnectorType_Curved:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;

.field public static final enum ConnectorType_None:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;

.field public static final enum ConnectorType_RightAngled:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;

.field public static final enum ConnectorType_Straight:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;

.field public static final enum ConnectorType_TypesCount:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;

    const-string v1, "ConnectorType_None"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;->ConnectorType_None:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;

    const-string v1, "ConnectorType_Straight"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;->ConnectorType_Straight:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;

    const-string v1, "ConnectorType_RightAngled"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;->ConnectorType_RightAngled:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;

    const-string v1, "ConnectorType_Curved"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;->ConnectorType_Curved:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;

    const-string v1, "ConnectorType_TypesCount"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;->ConnectorType_TypesCount:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;

    sget-object v1, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;->ConnectorType_None:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;->ConnectorType_Straight:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;->ConnectorType_RightAngled:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;->ConnectorType_Curved:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;->ConnectorType_TypesCount:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;->$VALUES:[Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;->$VALUES:[Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;

    return-object v0
.end method
