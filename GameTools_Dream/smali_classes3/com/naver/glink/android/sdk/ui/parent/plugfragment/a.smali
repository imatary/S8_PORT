.class public Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;
.super Ljava/lang/Object;
.source "FragmentViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$c;,
        Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$a;,
        Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;
    }
.end annotation


# static fields
.field private static b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;


# instance fields
.field private a:Landroid/os/Handler;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;-><init>()V

    sput-object v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->c:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->e:Ljava/util/Vector;

    return-void
.end method

.method public static a()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;-><init>()V

    sput-object v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    :cond_0
    sget-object v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    return-object v0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->e:Ljava/util/Vector;

    return-object v0
.end method

.method private declared-synchronized a(ILcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-lt v1, p1, :cond_5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->e:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$a;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$a;->b:Ljava/util/Vector;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;

    if-nez p2, :cond_0

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->c(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p2}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_1

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->c(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    if-eqz v0, :cond_4

    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->e:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$a;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$a;->a()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->e:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$c;

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$c;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_5
    monitor-exit p0

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;ILcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a(ILcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->c(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;)V

    return-void
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic c(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->c:Ljava/util/List;

    return-object v0
.end method

.method private c(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->c_()V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a:Landroid/os/Handler;

    return-object v0
.end method

.method private d(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->d:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;

    return-object v0
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->d(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$c;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;
    .locals 1

    new-instance v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;-><init>(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$a;

    iget-object v3, v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$a;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public b(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$3;

    invoke-direct {v1, p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$3;-><init>(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$c;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$a;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$a;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$2;

    invoke-direct {v1, p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$2;-><init>(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$1;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$1;-><init>(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public f()V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->k()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public g()V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->k()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->b()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public h()V
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->d:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;

    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->c_()V

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-void
.end method
