.class Lcom/naver/glink/android/sdk/ui/floating/c$3$1;
.super Ljava/lang/Object;
.source "WidgetControlHelper.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/ui/record/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/floating/c$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/floating/c$3;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/floating/c$3;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/floating/c$3$1;->a:Lcom/naver/glink/android/sdk/ui/floating/c$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/ui/record/c;)V
    .locals 3

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->a()V

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/floating/b;->a(Lcom/naver/glink/android/sdk/ui/record/c;)Lcom/naver/glink/android/sdk/ui/floating/b;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/c$3$1;->a:Lcom/naver/glink/android/sdk/ui/floating/c$3;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/ui/floating/c$3;->d:Lcom/naver/glink/android/sdk/ui/floating/c;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/c$3$1;->a:Lcom/naver/glink/android/sdk/ui/floating/c$3;

    iget-object v2, v2, Lcom/naver/glink/android/sdk/ui/floating/c$3;->b:Landroid/app/Activity;

    invoke-static {v1, v2, v0}, Lcom/naver/glink/android/sdk/ui/floating/c;->a(Lcom/naver/glink/android/sdk/ui/floating/c;Landroid/app/Activity;Lcom/naver/glink/android/sdk/ui/floating/b;)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/c$3$1;->a:Lcom/naver/glink/android/sdk/ui/floating/c$3;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/ui/floating/c$3;->c:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string/jumbo v2, "R_T"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method
