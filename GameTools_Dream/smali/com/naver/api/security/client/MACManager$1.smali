.class final Lcom/naver/api/security/client/MACManager$1;
.super Ljava/lang/Object;
.source "MACManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/api/security/client/MACManager;->calcuateCorrectionTimeOnAnotherThread()Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Long;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v12, 0x0

    :try_start_0
    new-instance v9, Ljava/net/URL;

    invoke-static {}, Lcom/naver/api/security/client/MACManager;->access$000()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    invoke-static {}, Lcom/naver/api/security/client/MACManager;->access$100()I

    move-result v10

    invoke-virtual {v3, v10}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-static {}, Lcom/naver/api/security/client/MACManager;->access$200()I

    move-result v10

    invoke-virtual {v3, v10}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const-string/jumbo v10, "UTF-8"

    invoke-static {v2, v10}, Lcom/naver/api/security/client/MACManager;->toStringFromInputStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v6, v4

    invoke-static {}, Lcom/naver/api/security/client/MACManager;->access$300()J

    move-result-wide v10

    cmp-long v10, v0, v10

    if-lez v10, :cond_0

    sput-wide v0, Lcom/naver/api/security/client/MACManager;->correctionMillis:J

    :goto_0
    sget-wide v10, Lcom/naver/api/security/client/MACManager;->correctionMillis:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    invoke-static {v12}, Lcom/naver/api/security/client/MACManager;->access$402(Z)Z

    return-object v10

    :cond_0
    const-wide/16 v10, 0x0

    :try_start_1
    sput-wide v10, Lcom/naver/api/security/client/MACManager;->correctionMillis:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v10

    invoke-static {v12}, Lcom/naver/api/security/client/MACManager;->access$402(Z)Z

    throw v10
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/naver/api/security/client/MACManager$1;->call()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
