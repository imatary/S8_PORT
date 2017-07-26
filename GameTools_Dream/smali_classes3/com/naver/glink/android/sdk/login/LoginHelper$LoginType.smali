.class public abstract enum Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;
.super Ljava/lang/Enum;
.source "LoginHelper.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/login/LoginHelper$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/login/LoginHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "LoginType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;",
        ">;",
        "Lcom/naver/glink/android/sdk/login/LoginHelper$a;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

.field public static final enum NAVER:Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

.field public static final enum NEO_ID:Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType$1;

    const-string/jumbo v1, "NAVER"

    invoke-direct {v0, v1, v2}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->NAVER:Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    new-instance v0, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType$2;

    const-string/jumbo v1, "NEO_ID"

    invoke-direct {v0, v1, v3}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->NEO_ID:Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    sget-object v1, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->NAVER:Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->NEO_ID:Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->$VALUES:[Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/naver/glink/android/sdk/login/LoginHelper$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;
    .locals 1

    const-class v0, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    return-object v0
.end method

.method public static values()[Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->$VALUES:[Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    invoke-virtual {v0}, [Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    return-object v0
.end method
