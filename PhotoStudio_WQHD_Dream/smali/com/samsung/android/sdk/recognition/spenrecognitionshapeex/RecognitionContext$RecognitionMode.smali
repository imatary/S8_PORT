.class public final enum Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext$RecognitionMode;
.super Ljava/lang/Enum;
.source "RecognitionContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecognitionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext$RecognitionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext$RecognitionMode;

.field public static final enum RecognitionMode_Batch:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext$RecognitionMode;

.field public static final enum RecognitionMode_SingleShape:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext$RecognitionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext$RecognitionMode;

    const-string v1, "RecognitionMode_SingleShape"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext$RecognitionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext$RecognitionMode;->RecognitionMode_SingleShape:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext$RecognitionMode;

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext$RecognitionMode;

    const-string v1, "RecognitionMode_Batch"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext$RecognitionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext$RecognitionMode;->RecognitionMode_Batch:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext$RecognitionMode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext$RecognitionMode;

    sget-object v1, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext$RecognitionMode;->RecognitionMode_SingleShape:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext$RecognitionMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext$RecognitionMode;->RecognitionMode_Batch:Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext$RecognitionMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext$RecognitionMode;->$VALUES:[Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext$RecognitionMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext$RecognitionMode;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext$RecognitionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext$RecognitionMode;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext$RecognitionMode;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext$RecognitionMode;->$VALUES:[Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext$RecognitionMode;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext$RecognitionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext$RecognitionMode;

    return-object v0
.end method
