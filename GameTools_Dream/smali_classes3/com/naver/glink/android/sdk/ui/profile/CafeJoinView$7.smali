.class Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$7;
.super Ljava/lang/Object;
.source "CafeJoinView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->a(Landroid/content/Context;Landroid/view/View;Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$7;->a:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$7;->a:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->f(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;)Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$7;->a:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->f(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;)Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$a;->a()V

    :cond_0
    return-void
.end method
