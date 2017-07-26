.class public final enum Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;
.super Ljava/lang/Enum;
.source "SdkBuildPhase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;

.field public static final enum DEV:Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;

.field public static final enum REAL:Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;

.field public static final enum STAGE:Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;

    const-string/jumbo v1, "DEV"

    invoke-direct {v0, v1, v2}, Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;->DEV:Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;

    new-instance v0, Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;

    const-string/jumbo v1, "STAGE"

    invoke-direct {v0, v1, v3}, Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;->STAGE:Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;

    new-instance v0, Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;

    const-string/jumbo v1, "REAL"

    invoke-direct {v0, v1, v4}, Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;->REAL:Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;

    sget-object v1, Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;->DEV:Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;

    aput-object v1, v0, v2

    sget-object v1, Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;->STAGE:Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;

    aput-object v1, v0, v3

    sget-object v1, Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;->REAL:Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;

    aput-object v1, v0, v4

    sput-object v0, Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;->$VALUES:[Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;

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

.method public static from(Landroid/content/Context;)Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;
    .locals 1

    sget v0, Lcom/naver/glink/android/sdk/R$string;->flavor_name:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;->from(Ljava/lang/String;)Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;

    move-result-object v0

    return-object v0
.end method

.method private static from(Ljava/lang/String;)Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;
    .locals 5

    invoke-static {}, Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;->values()[Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\uc5d0 \ud574\ub2f9\ud558\ub294 BuildPhase\ub97c \ucc3e\uc9c0 \ubabb\ud588\uc2b5\ub2c8\ub2e4."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;
    .locals 1

    const-class v0, Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;

    return-object v0
.end method

.method public static values()[Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;->$VALUES:[Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;

    invoke-virtual {v0}, [Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;

    return-object v0
.end method
