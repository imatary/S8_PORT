.class public final enum Lcom/nhn/android/naverlogin/data/OAuthLoginState;
.super Ljava/lang/Enum;
.source "OAuthLoginState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nhn/android/naverlogin/data/OAuthLoginState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/nhn/android/naverlogin/data/OAuthLoginState;

.field public static final enum NEED_INIT:Lcom/nhn/android/naverlogin/data/OAuthLoginState;

.field public static final enum NEED_LOGIN:Lcom/nhn/android/naverlogin/data/OAuthLoginState;

.field public static final enum NEED_REFRESH_TOKEN:Lcom/nhn/android/naverlogin/data/OAuthLoginState;

.field public static final enum OK:Lcom/nhn/android/naverlogin/data/OAuthLoginState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nhn/android/naverlogin/data/OAuthLoginState;

    const-string/jumbo v1, "NEED_INIT"

    invoke-direct {v0, v1, v2}, Lcom/nhn/android/naverlogin/data/OAuthLoginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginState;->NEED_INIT:Lcom/nhn/android/naverlogin/data/OAuthLoginState;

    new-instance v0, Lcom/nhn/android/naverlogin/data/OAuthLoginState;

    const-string/jumbo v1, "NEED_LOGIN"

    invoke-direct {v0, v1, v3}, Lcom/nhn/android/naverlogin/data/OAuthLoginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginState;->NEED_LOGIN:Lcom/nhn/android/naverlogin/data/OAuthLoginState;

    new-instance v0, Lcom/nhn/android/naverlogin/data/OAuthLoginState;

    const-string/jumbo v1, "NEED_REFRESH_TOKEN"

    invoke-direct {v0, v1, v4}, Lcom/nhn/android/naverlogin/data/OAuthLoginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginState;->NEED_REFRESH_TOKEN:Lcom/nhn/android/naverlogin/data/OAuthLoginState;

    new-instance v0, Lcom/nhn/android/naverlogin/data/OAuthLoginState;

    const-string/jumbo v1, "OK"

    invoke-direct {v0, v1, v5}, Lcom/nhn/android/naverlogin/data/OAuthLoginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginState;->OK:Lcom/nhn/android/naverlogin/data/OAuthLoginState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nhn/android/naverlogin/data/OAuthLoginState;

    sget-object v1, Lcom/nhn/android/naverlogin/data/OAuthLoginState;->NEED_INIT:Lcom/nhn/android/naverlogin/data/OAuthLoginState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nhn/android/naverlogin/data/OAuthLoginState;->NEED_LOGIN:Lcom/nhn/android/naverlogin/data/OAuthLoginState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nhn/android/naverlogin/data/OAuthLoginState;->NEED_REFRESH_TOKEN:Lcom/nhn/android/naverlogin/data/OAuthLoginState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nhn/android/naverlogin/data/OAuthLoginState;->OK:Lcom/nhn/android/naverlogin/data/OAuthLoginState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginState;->ENUM$VALUES:[Lcom/nhn/android/naverlogin/data/OAuthLoginState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nhn/android/naverlogin/data/OAuthLoginState;
    .locals 1

    const-class v0, Lcom/nhn/android/naverlogin/data/OAuthLoginState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nhn/android/naverlogin/data/OAuthLoginState;

    return-object v0
.end method

.method public static values()[Lcom/nhn/android/naverlogin/data/OAuthLoginState;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginState;->ENUM$VALUES:[Lcom/nhn/android/naverlogin/data/OAuthLoginState;

    array-length v1, v0

    new-array v2, v1, [Lcom/nhn/android/naverlogin/data/OAuthLoginState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
