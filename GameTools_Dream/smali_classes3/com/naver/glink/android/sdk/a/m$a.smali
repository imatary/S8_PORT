.class Lcom/naver/glink/android/sdk/a/m$a;
.super Ljava/lang/Object;
.source "ReadableDateFormat.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/a/m$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:J

.field final b:Ljava/lang/String;

.field final c:Ljava/text/DateFormat;

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/a/m$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JLjava/lang/String;Ljava/text/DateFormat;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/naver/glink/android/sdk/a/m$a;->a:J

    iput-object p3, p0, Lcom/naver/glink/android/sdk/a/m$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/naver/glink/android/sdk/a/m$a;->c:Ljava/text/DateFormat;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/a/m$a;->d:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/a/m$a;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/a/m$a;

    iget-wide v0, v0, Lcom/naver/glink/android/sdk/a/m$a;->a:J

    iput-wide v0, p0, Lcom/naver/glink/android/sdk/a/m$a;->a:J

    iput-object v2, p0, Lcom/naver/glink/android/sdk/a/m$a;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/naver/glink/android/sdk/a/m$a;->c:Ljava/text/DateFormat;

    iput-object p1, p0, Lcom/naver/glink/android/sdk/a/m$a;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Date;J)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/naver/glink/android/sdk/a/m$a;->a:J

    cmp-long v0, p2, v2

    if-ltz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/a/m$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/a/m$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/a/m$a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/a/m$a;->c:Ljava/text/DateFormat;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/naver/glink/android/sdk/a/m$a;->c:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/naver/glink/android/sdk/a/m$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/a/m$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/naver/glink/android/sdk/a/m$a;->a(Ljava/util/Date;J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method
