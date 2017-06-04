.class public Lcom/sec/samsung/gallery/access/cmh/CMHAutoItemInterface;
.super Ljava/lang/Object;
.source "CMHAutoItemInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/access/cmh/CMHAutoItemInterface$Status;,
        Lcom/sec/samsung/gallery/access/cmh/CMHAutoItemInterface$IAutoItemStatusColumns;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CMHAutoItemInterface"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;II)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/sec/samsung/gallery/access/cmh/CMHAutoItemInterface;->updateAutoItemStatus(Landroid/content/Context;II)Z

    move-result v0

    return v0
.end method

.method public static updateAutoItem(Landroid/content/Context;II)V
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/access/cmh/CMHAutoItemInterface$1;

    const-string/jumbo v1, "UpdateAutoItemThread"

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/sec/samsung/gallery/access/cmh/CMHAutoItemInterface$1;-><init>(Ljava/lang/String;Landroid/content/Context;II)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/access/cmh/CMHAutoItemInterface$1;->start()V

    return-void
.end method

.method private static updateAutoItemStatus(Landroid/content/Context;II)Z
    .locals 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v7, "status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v7, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v4, "type = ?"

    new-array v3, v5, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    :try_start_0
    sget-object v7, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->AUTOITEM_STATUS_TABLE_URI:Landroid/net/Uri;

    invoke-static {p0, v7, v0, v4, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v5

    :catch_0
    move-exception v1

    const-string/jumbo v5, "CMHAutoItemInterface"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v6

    goto :goto_0
.end method
