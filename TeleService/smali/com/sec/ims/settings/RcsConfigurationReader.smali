.class public Lcom/sec/ims/settings/RcsConfigurationReader;
.super Ljava/lang/Object;
.source "RcsConfigurationReader.java"


# static fields
.field public static final AUTO_CONFIGURATION_URI:Landroid/net/Uri;

.field public static CHAT_AUTH:Ljava/lang/String;

.field public static CHAT_ENABLED:Ljava/lang/String;

.field public static FT_ENABLED:Ljava/lang/String;

.field public static GROUP_CHAT_ENABLED:Ljava/lang/String;

.field public static IS_ENABLED:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field public static VS_ENABLED:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/sec/ims/settings/RcsConfigurationReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/settings/RcsConfigurationReader;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "content://com.samsung.rcs.autoconfigurationprovider/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/settings/RcsConfigurationReader;->AUTO_CONFIGURATION_URI:Landroid/net/Uri;

    const-string/jumbo v0, "ChatAuth"

    sput-object v0, Lcom/sec/ims/settings/RcsConfigurationReader;->CHAT_AUTH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "root/application/1/services/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/settings/RcsConfigurationReader;->CHAT_AUTH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/settings/RcsConfigurationReader;->CHAT_ENABLED:Ljava/lang/String;

    const-string/jumbo v0, "root/application/1/services/GroupChatAuth"

    sput-object v0, Lcom/sec/ims/settings/RcsConfigurationReader;->GROUP_CHAT_ENABLED:Ljava/lang/String;

    const-string/jumbo v0, "root/application/1/services/ftAuth"

    sput-object v0, Lcom/sec/ims/settings/RcsConfigurationReader;->FT_ENABLED:Ljava/lang/String;

    const-string/jumbo v0, "root/application/1/services/vsAuth"

    sput-object v0, Lcom/sec/ims/settings/RcsConfigurationReader;->VS_ENABLED:Ljava/lang/String;

    const-string/jumbo v0, "root/application/1/services/isAuth"

    sput-object v0, Lcom/sec/ims/settings/RcsConfigurationReader;->IS_ENABLED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/ims/settings/RcsConfigurationReader;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v2, 0x0

    sget-object v0, Lcom/sec/ims/settings/RcsConfigurationReader;->AUTO_CONFIGURATION_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/sec/ims/settings/RcsConfigurationReader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const/4 v0, -0x1

    if-eq v7, v0, :cond_0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v8
.end method


# virtual methods
.method public getInt(Ljava/lang/String;)I
    .locals 5

    const/4 v4, -0x1

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/RcsConfigurationReader;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    sget-object v2, Lcom/sec/ims/settings/RcsConfigurationReader;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error while parsing integer in getIntValue() - NumberFormatException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    sget-object v2, Lcom/sec/ims/settings/RcsConfigurationReader;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getIntValue: String value used as integer is null. Returning -1 instead."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/RcsConfigurationReader;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
