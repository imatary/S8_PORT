.class public Lcom/naver/glink/android/sdk/a/m;
.super Ljava/lang/Object;
.source "ReadableDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/a/m$c;,
        Lcom/naver/glink/android/sdk/a/m$a;,
        Lcom/naver/glink/android/sdk/a/m$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/text/SimpleDateFormat;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/a/m$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ssz"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/naver/glink/android/sdk/a/m;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(JLjava/lang/String;)Lcom/naver/glink/android/sdk/a/m$a;
    .locals 2

    new-instance v0, Lcom/naver/glink/android/sdk/a/m$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/naver/glink/android/sdk/a/m$a;-><init>(JLjava/lang/String;Ljava/text/DateFormat;)V

    return-object v0
.end method

.method static a(JLjava/text/DateFormat;)Lcom/naver/glink/android/sdk/a/m$a;
    .locals 2

    new-instance v0, Lcom/naver/glink/android/sdk/a/m$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/naver/glink/android/sdk/a/m$a;-><init>(JLjava/lang/String;Ljava/text/DateFormat;)V

    return-object v0
.end method

.method static a(Ljava/util/List;)Lcom/naver/glink/android/sdk/a/m$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/a/m$a;",
            ">;)",
            "Lcom/naver/glink/android/sdk/a/m$a;"
        }
    .end annotation

    new-instance v0, Lcom/naver/glink/android/sdk/a/m$a;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/a/m$a;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static a()Lcom/naver/glink/android/sdk/a/m$b;
    .locals 8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sget v0, Lcom/naver/glink/android/sdk/R$string;->date_format_just_now:I

    invoke-static {v0}, Lcom/naver/glink/android/sdk/c;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/naver/glink/android/sdk/a/m;->a(JLjava/lang/String;)Lcom/naver/glink/android/sdk/a/m$a;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    :goto_0
    const/16 v2, 0x3c

    if-gt v0, v2, :cond_0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sget v4, Lcom/naver/glink/android/sdk/R$string;->date_format_mins:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    add-int/lit8 v7, v0, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/naver/glink/android/sdk/c;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/naver/glink/android/sdk/a/m;->a(JLjava/lang/String;)Lcom/naver/glink/android/sdk/a/m$a;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/naver/glink/android/sdk/a/m;->a(Ljava/util/List;)Lcom/naver/glink/android/sdk/a/m$a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x2

    sget-object v0, Lcom/naver/glink/android/sdk/a/m;->b:Ljava/lang/String;

    invoke-static {}, Lcom/naver/glink/android/sdk/api/request/RequestHelper;->getSystemLangCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/a/m;->c:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/naver/glink/android/sdk/api/request/RequestHelper;->getSystemLangCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/naver/glink/android/sdk/a/m;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/naver/glink/android/sdk/a/m;->c:Ljava/util/List;

    sget-object v0, Lcom/naver/glink/android/sdk/a/m;->c:Ljava/util/List;

    invoke-static {}, Lcom/naver/glink/android/sdk/a/m;->a()Lcom/naver/glink/android/sdk/a/m$b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/naver/glink/android/sdk/a/m;->c:Ljava/util/List;

    new-instance v1, Lcom/naver/glink/android/sdk/a/m$c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/naver/glink/android/sdk/a/m$c;-><init>(Lcom/naver/glink/android/sdk/a/m$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/naver/glink/android/sdk/a/m;->c:Ljava/util/List;

    invoke-static {}, Lcom/naver/glink/android/sdk/a/m;->b()Lcom/naver/glink/android/sdk/a/m$b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/naver/glink/android/sdk/a/m;->c:Ljava/util/List;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    const/4 v1, 0x3

    invoke-static {v4, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/naver/glink/android/sdk/a/m;->a(JLjava/text/DateFormat;)Lcom/naver/glink/android/sdk/a/m$a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/naver/glink/android/sdk/a/m;->c:Ljava/util/List;

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v4}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/naver/glink/android/sdk/a/m;->a(JLjava/text/DateFormat;)Lcom/naver/glink/android/sdk/a/m$a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :try_start_0
    sget-object v0, Lcom/naver/glink/android/sdk/a/m;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-object v0, Lcom/naver/glink/android/sdk/a/m;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/a/m$b;

    invoke-interface {v0, v1, v2, v3}, Lcom/naver/glink/android/sdk/a/m$b;->a(Ljava/util/Date;J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_2

    move-object p0, v0

    :cond_3
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static b()Lcom/naver/glink/android/sdk/a/m$b;
    .locals 8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x2

    :goto_0
    const/16 v2, 0x18

    if-gt v0, v2, :cond_0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sget v4, Lcom/naver/glink/android/sdk/R$string;->date_format_hrs:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    add-int/lit8 v7, v0, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/naver/glink/android/sdk/c;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/naver/glink/android/sdk/a/m;->a(JLjava/lang/String;)Lcom/naver/glink/android/sdk/a/m$a;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/naver/glink/android/sdk/a/m;->a(Ljava/util/List;)Lcom/naver/glink/android/sdk/a/m$a;

    move-result-object v0

    return-object v0
.end method
