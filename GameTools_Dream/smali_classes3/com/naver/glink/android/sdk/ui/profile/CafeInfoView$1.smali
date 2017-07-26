.class Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView$1;
.super Lcom/naver/glink/android/sdk/a/o;
.source "CafeInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView$1;->b:Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/a/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/naver/glink/android/sdk/login/LoginHelper;->a()Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView$1;->a:Landroid/content/Context;

    new-instance v2, Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView$1$1;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView$1$1;-><init>(Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->builder(Landroid/content/Context;Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)Lcom/naver/glink/android/sdk/login/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/login/a$b;->a()V

    return-void
.end method
