.class public final enum Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;
.super Ljava/lang/Enum;
.source "OAuthLoginPreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "PREF_KEY"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACCESS_TOKEN:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

.field public static final enum CALLBACK_URL:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

.field public static final enum CLIENT_ID:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

.field public static final enum CLIENT_NAME:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

.field public static final enum CLIENT_SECRET:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

.field private static final synthetic ENUM$VALUES:[Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

.field public static final enum EXPIRES_AT:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

.field public static final enum LAST_ERROR_CODE:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

.field public static final enum LAST_ERROR_DESC:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

.field public static final enum REFRESH_TOKEN:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

.field public static final enum TOKEN_TYPE:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;


# instance fields
.field private mKey:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    const-string/jumbo v1, "ACCESS_TOKEN"

    const-string/jumbo v2, "ACCESS_TOKEN"

    const-class v3, Ljava/lang/String;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->ACCESS_TOKEN:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    new-instance v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    const-string/jumbo v1, "REFRESH_TOKEN"

    const-string/jumbo v2, "REFRESH_TOKEN"

    const-class v3, Ljava/lang/String;

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->REFRESH_TOKEN:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    new-instance v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    const-string/jumbo v1, "EXPIRES_AT"

    const-string/jumbo v2, "EXPIRES_AT"

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->EXPIRES_AT:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    new-instance v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    const-string/jumbo v1, "TOKEN_TYPE"

    const-string/jumbo v2, "TOKEN_TYPE"

    const-class v3, Ljava/lang/String;

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->TOKEN_TYPE:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    new-instance v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    const-string/jumbo v1, "CLIENT_ID"

    const-string/jumbo v2, "CLIENT_ID"

    const-class v3, Ljava/lang/String;

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->CLIENT_ID:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    new-instance v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    const-string/jumbo v1, "CLIENT_SECRET"

    const/4 v2, 0x5

    const-string/jumbo v3, "CLIENT_SECRET"

    const-class v4, Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->CLIENT_SECRET:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    new-instance v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    const-string/jumbo v1, "CLIENT_NAME"

    const/4 v2, 0x6

    const-string/jumbo v3, "CLIENT_NAME"

    const-class v4, Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->CLIENT_NAME:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    new-instance v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    const-string/jumbo v1, "CALLBACK_URL"

    const/4 v2, 0x7

    const-string/jumbo v3, "CALLBACK_URL"

    const-class v4, Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->CALLBACK_URL:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    new-instance v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    const-string/jumbo v1, "LAST_ERROR_CODE"

    const/16 v2, 0x8

    const-string/jumbo v3, "LAST_ERROR_CODE"

    const-class v4, Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->LAST_ERROR_CODE:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    new-instance v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    const-string/jumbo v1, "LAST_ERROR_DESC"

    const/16 v2, 0x9

    const-string/jumbo v3, "LAST_ERROR_DESC"

    const-class v4, Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->LAST_ERROR_DESC:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    sget-object v1, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->ACCESS_TOKEN:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->REFRESH_TOKEN:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->EXPIRES_AT:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->TOKEN_TYPE:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    aput-object v1, v0, v8

    sget-object v1, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->CLIENT_ID:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->CLIENT_SECRET:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->CLIENT_NAME:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->CALLBACK_URL:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->LAST_ERROR_CODE:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->LAST_ERROR_DESC:Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->ENUM$VALUES:[Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->mKey:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->mType:Ljava/lang/String;

    return-void
.end method

.method private delSub(Landroid/content/SharedPreferences;)Z
    .locals 6

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->mKey:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v3, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->DEVELOPER_VERSION:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "NaverLoginOAuth|OAuthLoginPreferenceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Prefernce del() fail, key:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->mKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSub(Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->mType:Ljava/lang/String;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->mKey:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->mType:Ljava/lang/String;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->mKey:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-interface {p1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->mType:Ljava/lang/String;

    const-class v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->mKey:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->mType:Ljava/lang/String;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->mKey:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->DEVELOPER_VERSION:Z

    if-eqz v2, :cond_0

    const-string/jumbo v3, "NaverLoginOAuth|OAuthLoginPreferenceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "get(), key:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", pref:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p1, :cond_4

    const-string/jumbo v2, "null"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "ok"

    goto :goto_1
.end method

.method private setSub(Landroid/content/SharedPreferences;Ljava/lang/Object;)Z
    .locals 6

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->mType:Ljava/lang/String;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->mKey:Ljava/lang/String;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_2
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->mType:Ljava/lang/String;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->mKey:Ljava/lang/String;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v3, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->DEVELOPER_VERSION:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "NaverLoginOAuth|OAuthLoginPreferenceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Prefernce Set() fail, key:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->mKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->mType:Ljava/lang/String;

    const-class v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->mKey:Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-interface {v1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->mType:Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->mKey:Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;
    .locals 1

    const-class v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    return-object v0
.end method

.method public static values()[Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->ENUM$VALUES:[Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    array-length v1, v0

    new-array v2, v1, [Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public del()Z
    .locals 1

    invoke-static {}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->access$0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->delSub(Landroid/content/SharedPreferences;)Z

    move-result v0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->access$0()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->getSub(Landroid/content/SharedPreferences;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->DEVELOPER_VERSION:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "NaverLoginOAuth|OAuthLoginPreferenceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "get() fail, e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public set(Ljava/lang/Object;)Z
    .locals 7

    invoke-static {}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->access$0()Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    if-nez v3, :cond_0

    const/4 v4, 0x3

    if-lt v0, v4, :cond_1

    :cond_0
    return v3

    :cond_1
    if-lez v0, :cond_2

    const-string/jumbo v4, "NaverLoginOAuth|OAuthLoginPreferenceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "preference set() fail (cnt:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x32

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    invoke-direct {p0, v2, p1}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager$PREF_KEY;->setSub(Landroid/content/SharedPreferences;Ljava/lang/Object;)Z

    move-result v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
