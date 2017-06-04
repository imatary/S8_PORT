.class public Lcom/samsung/android/common/log/LoggerCollection;
.super Lcom/samsung/android/common/log/Logger$Impl;
.source "LoggerCollection.java"

# interfaces
.implements Lcom/samsung/android/common/log/Logger$Core;
.implements Lcom/samsung/android/common/log/Logger;


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/common/log/Logger$Core;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/samsung/android/common/log/LoggerCollection;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/samsung/android/common/log/LogLineInfo;->excludeClass([Ljava/lang/Class;)V

    return-void
.end method

.method public varargs constructor <init>([Lcom/samsung/android/common/log/Logger$Core;)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/common/log/Logger$Impl;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/common/log/LoggerCollection;->list:Ljava/util/List;

    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    iget-object v3, p0, Lcom/samsung/android/common/log/LoggerCollection;->list:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public println(ILjava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/common/log/LoggerCollection;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/common/log/Logger$Core;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/common/log/Logger$Core;->println(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
