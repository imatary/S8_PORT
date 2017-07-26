.class public Lcom/nhn/android/naverlogin/util/OAuthLoginUiUtil;
.super Ljava/lang/Object;
.source "OAuthLoginUiUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFixActivityPortrait(Ljava/lang/String;)Z
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v9, :cond_2

    const-string/jumbo v7, "\\."

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v7, v4

    if-ge v8, v7, :cond_2

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v7, 0x2

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ge v9, v1, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    if-ne v9, v1, :cond_2

    if-lt v6, v2, :cond_0

    if-ne v6, v2, :cond_2

    if-lt v8, v3, :cond_0

    :cond_2
    :goto_1
    move v5, v6

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
