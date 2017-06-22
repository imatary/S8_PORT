.class public final enum Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;
.super Ljava/lang/Enum;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ArrowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;

.field public static final enum ArrowType_Angle:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;

.field public static final enum ArrowType_None:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;

.field public static final enum ArrowType_TypesCount:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;

    const-string v1, "ArrowType_None"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;->ArrowType_None:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;

    const-string v1, "ArrowType_Angle"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;->ArrowType_Angle:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;

    const-string v1, "ArrowType_TypesCount"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;->ArrowType_TypesCount:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;

    sget-object v1, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;->ArrowType_None:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;->ArrowType_Angle:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;->ArrowType_TypesCount:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;->$VALUES:[Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;->$VALUES:[Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;

    return-object v0
.end method
