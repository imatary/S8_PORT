.class public interface abstract Lcom/sec/samsung/gallery/access/cmh/CMHProviderTimeInterface;
.super Ljava/lang/Object;
.source "CMHProviderTimeInterface.java"

# interfaces
.implements Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/access/cmh/CMHProviderTimeInterface$IMonthClusterColumns;,
        Lcom/sec/samsung/gallery/access/cmh/CMHProviderTimeInterface$IDayClusterColumns;,
        Lcom/sec/samsung/gallery/access/cmh/CMHProviderTimeInterface$IMomentClusterColumns;,
        Lcom/sec/samsung/gallery/access/cmh/CMHProviderTimeInterface$ITimeLineViewColumns;
    }
.end annotation


# static fields
.field public static final TABLE_NAME__DAY_CLUSTER:Ljava/lang/String; = "daycluster"

.field public static final TABLE_NAME__DAY_MONTH_CLUSTER:Ljava/lang/String; = "dayMonth"

.field public static final TABLE_NAME__MOMENT_CLUSTER:Ljava/lang/String; = "cluster"

.field public static final TABLE_NAME__TIME_LINE_VIEW:Ljava/lang/String; = "timelineview"

.field public static final TABLE_URI__DAY_CLUSTER:Landroid/net/Uri;

.field public static final TABLE_URI__DAY_MONTH_CLUSTER:Landroid/net/Uri;

.field public static final TABLE_URI__MOMENT_CLUSTER:Landroid/net/Uri;

.field public static final VIEW_URI__TIMELINE:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderTimeInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "cluster"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderTimeInterface;->TABLE_URI__MOMENT_CLUSTER:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderTimeInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "daycluster"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderTimeInterface;->TABLE_URI__DAY_CLUSTER:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderTimeInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "dayMonth"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderTimeInterface;->TABLE_URI__DAY_MONTH_CLUSTER:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderTimeInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "timelineview"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderTimeInterface;->VIEW_URI__TIMELINE:Landroid/net/Uri;

    return-void
.end method
