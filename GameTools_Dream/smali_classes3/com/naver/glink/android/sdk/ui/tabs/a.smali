.class public abstract Lcom/naver/glink/android/sdk/ui/tabs/a;
.super Ljava/lang/Object;
.source "TabsCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/tabs/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;)Lcom/naver/glink/android/sdk/ui/tabs/Tab;
.end method

.method public abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;",
            ">;"
        }
    .end annotation
.end method

.method a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/tabs/Tab;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/tabs/a;->a(Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;)Lcom/naver/glink/android/sdk/ui/tabs/Tab;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/tabs/Tab;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/tabs/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/tabs/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
