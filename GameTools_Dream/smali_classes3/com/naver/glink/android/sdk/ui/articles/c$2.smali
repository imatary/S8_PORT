.class final Lcom/naver/glink/android/sdk/ui/articles/c$2;
.super Ljava/lang/Object;
.source "MenusDialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/articles/c;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/model/Menu;Lcom/naver/glink/android/sdk/ui/articles/c$a;)Landroid/support/v4/util/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/articles/c$a;

.field final synthetic b:Lcom/naver/glink/android/sdk/model/Menu;

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/articles/c$a;Lcom/naver/glink/android/sdk/model/Menu;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/articles/c$2;->a:Lcom/naver/glink/android/sdk/ui/articles/c$a;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/articles/c$2;->b:Lcom/naver/glink/android/sdk/model/Menu;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/articles/c$2;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/c$2;->a:Lcom/naver/glink/android/sdk/ui/articles/c$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/c$2;->a:Lcom/naver/glink/android/sdk/ui/articles/c$a;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/articles/c$2;->b:Lcom/naver/glink/android/sdk/model/Menu;

    invoke-interface {v0, v1}, Lcom/naver/glink/android/sdk/ui/articles/c$a;->a(Lcom/naver/glink/android/sdk/model/Menu;)V

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/c$2;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/articles/c$2;->b:Lcom/naver/glink/android/sdk/model/Menu;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/model/Menu;->getMenuId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/a/l;->b(Landroid/content/Context;I)V

    return-void
.end method
