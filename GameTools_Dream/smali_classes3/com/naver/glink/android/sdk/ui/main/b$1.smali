.class final Lcom/naver/glink/android/sdk/ui/main/b$1;
.super Ljava/lang/Object;
.source "MainHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/main/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/main/b;->i()Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->e()V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/c;->d(Landroid/content/Context;)V

    const-string/jumbo v0, "GSP"

    invoke-static {v0}, Lcom/naver/glink/android/sdk/Statistics;->sendRequest(Ljava/lang/String;)V

    invoke-static {}, Lcom/naver/glink/android/sdk/b;->b()V

    new-instance v0, Lcom/naver/glink/android/sdk/c$a;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/c$a;-><init>()V

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/a;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
