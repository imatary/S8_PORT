.class public Lcom/naver/glink/android/sdk/ui/articles/c;
.super Ljava/lang/Object;
.source "MenusDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/articles/c$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/naver/glink/android/sdk/model/Menu;Lcom/naver/glink/android/sdk/ui/articles/c$a;)Landroid/support/v4/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/naver/glink/android/sdk/model/Menu;",
            "Lcom/naver/glink/android/sdk/ui/articles/c$a;",
            ")",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/model/Menu;->getMenuName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/articles/c$2;

    invoke-direct {v1, p2, p1, p0}, Lcom/naver/glink/android/sdk/ui/articles/c$2;-><init>(Lcom/naver/glink/android/sdk/ui/articles/c$a;Lcom/naver/glink/android/sdk/model/Menu;Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/support/v4/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/support/v4/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;ILcom/naver/glink/android/sdk/ui/articles/c$a;)V
    .locals 2

    sget-object v0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->menusRequest:Lcom/naver/glink/android/sdk/api/requests/CacheRequest;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/articles/c$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/articles/c$1;-><init>(Landroid/content/Context;ILcom/naver/glink/android/sdk/ui/articles/c$a;)V

    invoke-virtual {v0, p0, v1}, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/naver/glink/android/sdk/ui/articles/c;->c(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;ILcom/naver/glink/android/sdk/ui/articles/c$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/model/Menu;",
            ">;I",
            "Lcom/naver/glink/android/sdk/ui/articles/c$a;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1}, Lcom/naver/glink/android/sdk/ui/articles/c;->b(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const-string/jumbo v1, "Recent"

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/support/v4/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/support/v4/util/Pair;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/model/Menu;

    invoke-static {p0, v0, p3}, Lcom/naver/glink/android/sdk/ui/articles/c;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/model/Menu;Lcom/naver/glink/android/sdk/ui/articles/c$a;)Landroid/support/v4/util/Pair;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "All"

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Landroid/support/v4/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/support/v4/util/Pair;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, -0x1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/model/Menu;

    invoke-static {p0, v0, p3}, Lcom/naver/glink/android/sdk/ui/articles/c;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/model/Menu;Lcom/naver/glink/android/sdk/ui/articles/c$a;)Landroid/support/v4/util/Pair;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/model/Menu;->getMenuId()I

    move-result v0

    if-ne v0, p2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_1
    invoke-static {p0, v5, v2, v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;I)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private static b(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/model/Menu;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/model/Menu;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/naver/glink/android/sdk/a/l;->j(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/model/Menu;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/model/Menu;->getMenuId()I

    move-result v5

    if-ne v3, v5, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_0

    :cond_3
    return-object v1
.end method

.method private static c(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/model/Menu;",
            ">;)V"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/naver/glink/android/sdk/a/l;->j(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v1, 0x1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/model/Menu;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/model/Menu;->getMenuId()I

    move-result v0

    if-ne v4, v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {p0, v2}, Lcom/naver/glink/android/sdk/a/l;->a(Landroid/content/Context;Ljava/util/List;)V

    return-void

    :cond_3
    move v0, v1

    goto :goto_1
.end method
