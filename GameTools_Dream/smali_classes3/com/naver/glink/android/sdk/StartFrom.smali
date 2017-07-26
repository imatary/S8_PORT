.class public final enum Lcom/naver/glink/android/sdk/StartFrom;
.super Ljava/lang/Enum;
.source "StartFrom.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/naver/glink/android/sdk/StartFrom;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/naver/glink/android/sdk/StartFrom;

.field public static final enum GAME:Lcom/naver/glink/android/sdk/StartFrom;

.field public static final enum SAMSUNG_GAME_TOOLS:Lcom/naver/glink/android/sdk/StartFrom;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/naver/glink/android/sdk/StartFrom;

    const-string/jumbo v1, "GAME"

    invoke-direct {v0, v1, v2}, Lcom/naver/glink/android/sdk/StartFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/glink/android/sdk/StartFrom;->GAME:Lcom/naver/glink/android/sdk/StartFrom;

    new-instance v0, Lcom/naver/glink/android/sdk/StartFrom;

    const-string/jumbo v1, "SAMSUNG_GAME_TOOLS"

    invoke-direct {v0, v1, v3}, Lcom/naver/glink/android/sdk/StartFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/glink/android/sdk/StartFrom;->SAMSUNG_GAME_TOOLS:Lcom/naver/glink/android/sdk/StartFrom;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/naver/glink/android/sdk/StartFrom;

    sget-object v1, Lcom/naver/glink/android/sdk/StartFrom;->GAME:Lcom/naver/glink/android/sdk/StartFrom;

    aput-object v1, v0, v2

    sget-object v1, Lcom/naver/glink/android/sdk/StartFrom;->SAMSUNG_GAME_TOOLS:Lcom/naver/glink/android/sdk/StartFrom;

    aput-object v1, v0, v3

    sput-object v0, Lcom/naver/glink/android/sdk/StartFrom;->$VALUES:[Lcom/naver/glink/android/sdk/StartFrom;

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

.method public static valueOf(Ljava/lang/String;)Lcom/naver/glink/android/sdk/StartFrom;
    .locals 1

    const-class v0, Lcom/naver/glink/android/sdk/StartFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/StartFrom;

    return-object v0
.end method

.method public static values()[Lcom/naver/glink/android/sdk/StartFrom;
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/StartFrom;->$VALUES:[Lcom/naver/glink/android/sdk/StartFrom;

    invoke-virtual {v0}, [Lcom/naver/glink/android/sdk/StartFrom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/naver/glink/android/sdk/StartFrom;

    return-object v0
.end method
