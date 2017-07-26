.class Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$4;
.super Ljava/lang/Object;
.source "CafeJoinView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;)V
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

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$4;->a:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$4;->a:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->d(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;)Landroid/widget/Button;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$4;->a:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->d(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$4;->a:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->e(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;)Lcom/naver/glink/android/sdk/api/Responses$AvailableResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$4;->a:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->d(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$4;->a:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->e(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;)Lcom/naver/glink/android/sdk/api/Responses$AvailableResponse;

    move-result-object v1

    iget-boolean v1, v1, Lcom/naver/glink/android/sdk/api/Responses$AvailableResponse;->available:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
