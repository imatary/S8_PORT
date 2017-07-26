.class Lcom/naver/glink/android/sdk/ui/viewer/b/c$10;
.super Ljava/lang/Object;
.source "VideoViewHolder.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/ui/viewer/b/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/viewer/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/naver/glink/android/sdk/ui/viewer/b/c;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/viewer/b/c;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c$10;->c:Lcom/naver/glink/android/sdk/ui/viewer/b/c;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c$10;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c$10;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c$10;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c$10;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c$10;->a:Landroid/content/Context;

    sget v2, Lcom/naver/glink/android/sdk/R$string;->internet_not_connected_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c$10;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/i;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c$10;->c:Lcom/naver/glink/android/sdk/ui/viewer/b/c;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->b(Lcom/naver/glink/android/sdk/ui/viewer/b/c;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c$10;->c:Lcom/naver/glink/android/sdk/ui/viewer/b/c;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c$10;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c$10;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->a(Lcom/naver/glink/android/sdk/ui/viewer/b/c;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
