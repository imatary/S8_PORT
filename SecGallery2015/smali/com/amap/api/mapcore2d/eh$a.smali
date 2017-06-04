.class Lcom/amap/api/mapcore2d/eh$a;
.super Ljava/lang/Object;
.source "CrashLogWriter.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/es;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/eh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/eh;

.field private b:Lcom/amap/api/mapcore2d/dp;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/eh;Lcom/amap/api/mapcore2d/dp;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore2d/eh$a;->a:Lcom/amap/api/mapcore2d/eh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/amap/api/mapcore2d/eh$a;->b:Lcom/amap/api/mapcore2d/dp;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/eh$a;->b:Lcom/amap/api/mapcore2d/dp;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/eh$a;->a:Lcom/amap/api/mapcore2d/eh;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/eh;->a()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/amap/api/mapcore2d/dp;->b(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
