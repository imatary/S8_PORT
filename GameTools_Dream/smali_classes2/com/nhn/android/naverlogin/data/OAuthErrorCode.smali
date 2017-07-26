.class public final enum Lcom/nhn/android/naverlogin/data/OAuthErrorCode;
.super Ljava/lang/Enum;
.source "OAuthErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nhn/android/naverlogin/data/OAuthErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLIENT_ERROR_CERTIFICATION_ERROR:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

.field public static final enum CLIENT_ERROR_CONNECTION_ERROR:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

.field public static final enum CLIENT_ERROR_NO_CALLBACKURL:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

.field public static final enum CLIENT_ERROR_NO_CLIENTID:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

.field public static final enum CLIENT_ERROR_NO_CLIENTNAME:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

.field public static final enum CLIENT_ERROR_NO_CLIENTSECRET:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

.field public static final enum CLIENT_ERROR_PARSING_FAIL:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

.field public static final enum CLIENT_USER_CANCEL:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

.field private static final synthetic ENUM$VALUES:[Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

.field public static final enum ERROR_NO_CATAGORIZED:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

.field public static final enum NONE:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

.field public static final enum SERVER_ERROR_ACCESS_DENIED:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

.field public static final enum SERVER_ERROR_INVALID_REQUEST:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

.field public static final enum SERVER_ERROR_INVALID_SCOPE:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

.field public static final enum SERVER_ERROR_SERVER_ERROR:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

.field public static final enum SERVER_ERROR_TEMPORARILY_UNAVAILABLE:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

.field public static final enum SERVER_ERROR_UNAUTHORIZED_CLIENT:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

.field public static final enum SERVER_ERROR_UNSUPPORTED_RESPONSE_TYPE:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;


# instance fields
.field private mCode:Ljava/lang/String;

.field private mDesc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    const-string/jumbo v1, "NONE"

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->NONE:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    new-instance v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    const-string/jumbo v1, "SERVER_ERROR_INVALID_REQUEST"

    const-string/jumbo v2, "invalid_request"

    const-string/jumbo v3, "invalid_request"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->SERVER_ERROR_INVALID_REQUEST:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    new-instance v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    const-string/jumbo v1, "SERVER_ERROR_UNAUTHORIZED_CLIENT"

    const-string/jumbo v2, "unauthorized_client"

    const-string/jumbo v3, "unauthorized_client"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->SERVER_ERROR_UNAUTHORIZED_CLIENT:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    new-instance v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    const-string/jumbo v1, "SERVER_ERROR_ACCESS_DENIED"

    const-string/jumbo v2, "access_denied"

    const-string/jumbo v3, "access_denied"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->SERVER_ERROR_ACCESS_DENIED:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    new-instance v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    const-string/jumbo v1, "SERVER_ERROR_UNSUPPORTED_RESPONSE_TYPE"

    const-string/jumbo v2, "unsupported_response_type"

    const-string/jumbo v3, "unsupported_response_type"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->SERVER_ERROR_UNSUPPORTED_RESPONSE_TYPE:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    new-instance v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    const-string/jumbo v1, "SERVER_ERROR_INVALID_SCOPE"

    const/4 v2, 0x5

    const-string/jumbo v3, "invalid_scope"

    const-string/jumbo v4, "invalid_scope"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->SERVER_ERROR_INVALID_SCOPE:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    new-instance v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    const-string/jumbo v1, "SERVER_ERROR_SERVER_ERROR"

    const/4 v2, 0x6

    const-string/jumbo v3, "server_error"

    const-string/jumbo v4, "server_error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->SERVER_ERROR_SERVER_ERROR:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    new-instance v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    const-string/jumbo v1, "SERVER_ERROR_TEMPORARILY_UNAVAILABLE"

    const/4 v2, 0x7

    const-string/jumbo v3, "temporarily_unavailable"

    const-string/jumbo v4, "temporarily_unavailable"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->SERVER_ERROR_TEMPORARILY_UNAVAILABLE:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    new-instance v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    const-string/jumbo v1, "ERROR_NO_CATAGORIZED"

    const/16 v2, 0x8

    const-string/jumbo v3, "no_catagorized_error"

    const-string/jumbo v4, "no_catagorized_error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->ERROR_NO_CATAGORIZED:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    new-instance v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    const-string/jumbo v1, "CLIENT_ERROR_PARSING_FAIL"

    const/16 v2, 0x9

    const-string/jumbo v3, "parsing_fail"

    const-string/jumbo v4, "parsing_fail"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->CLIENT_ERROR_PARSING_FAIL:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    new-instance v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    const-string/jumbo v1, "CLIENT_ERROR_NO_CLIENTID"

    const/16 v2, 0xa

    const-string/jumbo v3, "invalid_request"

    const-string/jumbo v4, "no_clientid"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->CLIENT_ERROR_NO_CLIENTID:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    new-instance v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    const-string/jumbo v1, "CLIENT_ERROR_NO_CLIENTSECRET"

    const/16 v2, 0xb

    const-string/jumbo v3, "invalid_request"

    const-string/jumbo v4, "no_clientsecret"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->CLIENT_ERROR_NO_CLIENTSECRET:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    new-instance v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    const-string/jumbo v1, "CLIENT_ERROR_NO_CLIENTNAME"

    const/16 v2, 0xc

    const-string/jumbo v3, "invalid_request"

    const-string/jumbo v4, "no_clientname"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->CLIENT_ERROR_NO_CLIENTNAME:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    new-instance v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    const-string/jumbo v1, "CLIENT_ERROR_NO_CALLBACKURL"

    const/16 v2, 0xd

    const-string/jumbo v3, "invalid_request"

    const-string/jumbo v4, "no_callbackurl"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->CLIENT_ERROR_NO_CALLBACKURL:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    new-instance v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    const-string/jumbo v1, "CLIENT_ERROR_CONNECTION_ERROR"

    const/16 v2, 0xe

    const-string/jumbo v3, "server_error"

    const-string/jumbo v4, "connection_error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->CLIENT_ERROR_CONNECTION_ERROR:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    new-instance v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    const-string/jumbo v1, "CLIENT_ERROR_CERTIFICATION_ERROR"

    const/16 v2, 0xf

    const-string/jumbo v3, "server_error"

    const-string/jumbo v4, "certification_error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->CLIENT_ERROR_CERTIFICATION_ERROR:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    new-instance v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    const-string/jumbo v1, "CLIENT_USER_CANCEL"

    const/16 v2, 0x10

    const-string/jumbo v3, "user_cancel"

    const-string/jumbo v4, "user_cancel"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->CLIENT_USER_CANCEL:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    sget-object v1, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->NONE:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->SERVER_ERROR_INVALID_REQUEST:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->SERVER_ERROR_UNAUTHORIZED_CLIENT:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->SERVER_ERROR_ACCESS_DENIED:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->SERVER_ERROR_UNSUPPORTED_RESPONSE_TYPE:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->SERVER_ERROR_INVALID_SCOPE:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->SERVER_ERROR_SERVER_ERROR:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->SERVER_ERROR_TEMPORARILY_UNAVAILABLE:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->ERROR_NO_CATAGORIZED:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->CLIENT_ERROR_PARSING_FAIL:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->CLIENT_ERROR_NO_CLIENTID:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->CLIENT_ERROR_NO_CLIENTSECRET:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->CLIENT_ERROR_NO_CLIENTNAME:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->CLIENT_ERROR_NO_CALLBACKURL:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->CLIENT_ERROR_CONNECTION_ERROR:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->CLIENT_ERROR_CERTIFICATION_ERROR:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->CLIENT_USER_CANCEL:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->ENUM$VALUES:[Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->mCode:Ljava/lang/String;

    iput-object p4, p0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->mDesc:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/nhn/android/naverlogin/data/OAuthErrorCode;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->NONE:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->values()[Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v3, :cond_2

    sget-object v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->ERROR_NO_CATAGORIZED:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    goto :goto_0

    :cond_2
    aget-object v0, v2, v1

    iget-object v4, v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->mCode:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nhn/android/naverlogin/data/OAuthErrorCode;
    .locals 1

    const-class v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/nhn/android/naverlogin/data/OAuthErrorCode;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->ENUM$VALUES:[Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    array-length v1, v0

    new-array v2, v1, [Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->mCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->mDesc:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->mCode:Ljava/lang/String;

    return-object v0
.end method
