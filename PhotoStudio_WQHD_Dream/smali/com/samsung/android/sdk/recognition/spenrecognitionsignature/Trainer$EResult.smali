.class public final enum Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;
.super Ljava/lang/Enum;
.source "Trainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;

.field public static final enum ERR_DECREASING_TIMESTAMPS:Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;

.field public static final enum ERR_EMPTY_STROKES_NOT_ALLOWED:Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;

.field public static final enum ERR_MAX_SIGNATURES_AMOUNT_EXCEEDED:Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;

.field public static final enum ERR_NOT_ENOUGH_POINTS_IN_SIGNATURE:Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;

.field public static final enum ERR_SIGNATURE_WOULD_INVALIDATE_MODEL:Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;

.field public static final enum RES_OK:Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;

.field public static final enum WARN_SIGNATURE_IS_SIMPLE:Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;

    const-string v1, "RES_OK"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;->RES_OK:Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;

    const-string v1, "ERR_DECREASING_TIMESTAMPS"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;->ERR_DECREASING_TIMESTAMPS:Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;

    const-string v1, "ERR_NOT_ENOUGH_POINTS_IN_SIGNATURE"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;->ERR_NOT_ENOUGH_POINTS_IN_SIGNATURE:Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;

    const-string v1, "ERR_EMPTY_STROKES_NOT_ALLOWED"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;->ERR_EMPTY_STROKES_NOT_ALLOWED:Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;

    const-string v1, "ERR_MAX_SIGNATURES_AMOUNT_EXCEEDED"

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;->ERR_MAX_SIGNATURES_AMOUNT_EXCEEDED:Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;

    const-string v1, "ERR_SIGNATURE_WOULD_INVALIDATE_MODEL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;->ERR_SIGNATURE_WOULD_INVALIDATE_MODEL:Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;

    const-string v1, "WARN_SIGNATURE_IS_SIMPLE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;->WARN_SIGNATURE_IS_SIMPLE:Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;

    sget-object v1, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;->RES_OK:Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;->ERR_DECREASING_TIMESTAMPS:Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;->ERR_NOT_ENOUGH_POINTS_IN_SIGNATURE:Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;->ERR_EMPTY_STROKES_NOT_ALLOWED:Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;->ERR_MAX_SIGNATURES_AMOUNT_EXCEEDED:Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;->ERR_SIGNATURE_WOULD_INVALIDATE_MODEL:Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;->WARN_SIGNATURE_IS_SIMPLE:Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;->$VALUES:[Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;->$VALUES:[Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;

    return-object v0
.end method
