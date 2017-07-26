.class Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$6;
.super Ljava/lang/Object;
.source "FragmentViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$6;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$6;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    iget-boolean v0, v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->c:Z

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$6;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$6;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->a:Ljava/util/Vector;

    return-void
.end method
