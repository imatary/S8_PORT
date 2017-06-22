.class public final enum Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;
.super Ljava/lang/Enum;
.source "SceneBeautifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProcessFlags"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;

.field public static final enum PROCESS_ADJUSTING:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;

.field public static final enum PROCESS_ALL:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;

.field public static final enum PROCESS_CIRCUMSCRIBING:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;

.field public static final enum PROCESS_CONNECTOR_AXIS_ADJUSTING:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;

.field public static final enum PROCESS_LINKING:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;

.field public static final enum PROCESS_SHAPE_AXIS_ADJUSTING:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;

.field public static final enum PROCESS_STANDARTIZE:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;


# instance fields
.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;

    const-string v1, "PROCESS_SHAPE_AXIS_ADJUSTING"

    invoke-static {}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->SceneBeautifier_PROCESS_SHAPE_AXIS_ADJUSTING_get()I

    move-result v2

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;->PROCESS_SHAPE_AXIS_ADJUSTING:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;

    const-string v1, "PROCESS_CONNECTOR_AXIS_ADJUSTING"

    invoke-static {}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->SceneBeautifier_PROCESS_CONNECTOR_AXIS_ADJUSTING_get()I

    move-result v2

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;->PROCESS_CONNECTOR_AXIS_ADJUSTING:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;

    const-string v1, "PROCESS_ADJUSTING"

    invoke-static {}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->SceneBeautifier_PROCESS_ADJUSTING_get()I

    move-result v2

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;->PROCESS_ADJUSTING:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;

    const-string v1, "PROCESS_STANDARTIZE"

    invoke-static {}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->SceneBeautifier_PROCESS_STANDARTIZE_get()I

    move-result v2

    invoke-direct {v0, v1, v7, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;->PROCESS_STANDARTIZE:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;

    const-string v1, "PROCESS_CIRCUMSCRIBING"

    invoke-static {}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->SceneBeautifier_PROCESS_CIRCUMSCRIBING_get()I

    move-result v2

    invoke-direct {v0, v1, v8, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;->PROCESS_CIRCUMSCRIBING:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;

    const-string v1, "PROCESS_LINKING"

    const/4 v2, 0x5

    invoke-static {}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->SceneBeautifier_PROCESS_LINKING_get()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;->PROCESS_LINKING:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;

    const-string v1, "PROCESS_ALL"

    const/4 v2, 0x6

    invoke-static {}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->SceneBeautifier_PROCESS_ALL_get()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;->PROCESS_ALL:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;

    sget-object v1, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;->PROCESS_SHAPE_AXIS_ADJUSTING:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;->PROCESS_CONNECTOR_AXIS_ADJUSTING:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;->PROCESS_ADJUSTING:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;->PROCESS_STANDARTIZE:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;->PROCESS_CIRCUMSCRIBING:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;->PROCESS_LINKING:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;->PROCESS_ALL:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;->$VALUES:[Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;->swigValue:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iget v0, p3, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;->swigValue:I

    iput v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;->swigValue:I

    return-void
.end method

.method public static swigToEnum(I)Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;
    .locals 5

    const-class v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    if-ltz p0, :cond_0

    aget-object v1, v0, p0

    iget v1, v1, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;->swigValue:I

    if-ne v1, p0, :cond_0

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    array-length v3, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    iget v4, v1, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;->swigValue:I

    if-ne v4, p0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No enum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;->$VALUES:[Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;

    return-object v0
.end method


# virtual methods
.method public final swigValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;->swigValue:I

    return v0
.end method
