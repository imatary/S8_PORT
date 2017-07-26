.class final Lcom/naver/glink/android/sdk/samsung/SPlug$1;
.super Ljava/lang/Object;
.source "SPlug.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/samsung/SPlug$OnLifeCycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/samsung/SPlug;->createLifeCycleListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/samsung/SPlug$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 3

    const-string/jumbo v0, "plug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "plug OnLifeCycleListener onPause "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/d;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/samsung/SPlug$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/samsung/SPlug;->stop(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    const-string/jumbo v0, "plug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "plug OnLifeCycleListener onResume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/d;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/main/b;->b()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/d;->a(Z)V

    :cond_0
    return-void
.end method
