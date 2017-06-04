.class public final Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$Global;
.super Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$NameValueTable;
.source "RSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Global"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static sNameValueCache:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$NameValueCache;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string/jumbo v0, "content://com.samsung.android.coreapps.rshare.setting/global"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$Global;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$NameValueCache;

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$Global;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "GET_global"

    const-string/jumbo v3, "PUT_global"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$NameValueCache;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$Global;->sNameValueCache:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$NameValueCache;

    return-void
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 2

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    :cond_0
    :goto_0
    return p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 4

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    move-wide v2, p2

    goto :goto_0

    :catch_0
    move-exception v0

    move-wide v2, p2

    goto :goto_0
.end method

.method public static final getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$Global;->sNameValueCache:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$NameValueCache;

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$NameValueCache;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$NameValueCache;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$NameValueCache;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
