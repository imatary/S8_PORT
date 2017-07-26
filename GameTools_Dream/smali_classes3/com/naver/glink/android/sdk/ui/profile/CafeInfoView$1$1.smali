.class Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView$1$1;
.super Ljava/lang/Object;
.source "CafeInfoView.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView$1;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView$1;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView$1;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView$1$1;->a:Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoggedIn(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView$1$1;->a:Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView$1;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView$1;->b:Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView;->a(Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView;)Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView$1$1;->a:Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView$1;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView$1;->b:Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView;->a(Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView;)Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView$a;->a()V

    :cond_0
    return-void
.end method
