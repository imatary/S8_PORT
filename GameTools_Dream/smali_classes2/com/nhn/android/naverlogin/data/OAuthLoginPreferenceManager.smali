.class public Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;
.super Ljava/lang/Object;
.source "OAuthLoginPreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;
    }
.end annotation


# static fields
.field private static final OAUTH_LOGIN_PREF_NAME_PER_APP:Ljava/lang/String; = "NaverOAuthLoginPreferenceData"

.field private static final TAG:Ljava/lang/String; = "NaverLoginOAuth|OAuthLoginPreferenceManager"

.field private static mContext:Landroid/content/Context;

.field private static mPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->mContext:Landroid/content/Context;

    sput-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->mPref:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->mPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    sget-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "NaverOAuthLoginPreferenceData"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->mPref:Landroid/content/SharedPreferences;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "NaverLoginOAuth|OAuthLoginPreferenceManager"

    const-string/jumbo v1, "context is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$0()Landroid/content/SharedPreferences;
    .locals 1

    sget-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->mPref:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    sget-object v2, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->ACCESS_TOKEN:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    invoke-virtual {v2}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {p0}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->getExpiresAt()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    const-string/jumbo v2, "NaverLoginOAuth|OAuthLoginPreferenceManager"

    const-string/jumbo v3, "access token is expired."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0
.end method

.method public getCallbackUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->CALLBACK_URL:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    invoke-virtual {v0}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->CLIENT_ID:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    invoke-virtual {v0}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getClientName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->CLIENT_NAME:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    invoke-virtual {v0}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getClientSecret()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->CLIENT_SECRET:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    invoke-virtual {v0}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresAt()J
    .locals 4

    sget-object v1, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->EXPIRES_AT:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    invoke-virtual {v1}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method public getLastErrorCode()Lcom/nhn/android/naverlogin/data/OAuthErrorCode;
    .locals 2

    sget-object v1, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->LAST_ERROR_CODE:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    invoke-virtual {v1}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->fromString(Ljava/lang/String;)Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    move-result-object v1

    return-object v1
.end method

.method public getLastErrorDesc()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->LAST_ERROR_DESC:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    invoke-virtual {v0}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->REFRESH_TOKEN:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    invoke-virtual {v0}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTokenType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->TOKEN_TYPE:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    invoke-virtual {v0}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->ACCESS_TOKEN:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    invoke-virtual {v0, p1}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCallbackUrl(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->CALLBACK_URL:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    invoke-virtual {v0, p1}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->CLIENT_ID:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    invoke-virtual {v0, p1}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method public setClientName(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->CLIENT_NAME:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    invoke-virtual {v0, p1}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method public setClientSecret(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->CLIENT_SECRET:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    invoke-virtual {v0, p1}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method public setExpiresAt(J)V
    .locals 3

    sget-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->EXPIRES_AT:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method public setLastErrorCode(Lcom/nhn/android/naverlogin/data/OAuthErrorCode;)V
    .locals 2

    sget-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->LAST_ERROR_CODE:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    invoke-virtual {p1}, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method public setLastErrorDesc(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->LAST_ERROR_DESC:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    invoke-virtual {v0, p1}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->REFRESH_TOKEN:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    invoke-virtual {v0, p1}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method public setTokenType(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->TOKEN_TYPE:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    invoke-virtual {v0, p1}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->set(Ljava/lang/Object;)Z

    return-void
.end method
