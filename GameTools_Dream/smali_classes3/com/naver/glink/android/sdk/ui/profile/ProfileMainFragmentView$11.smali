.class Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$11;
.super Lcom/naver/glink/android/sdk/a/o;
.source "ProfileMainFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$11;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/a/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$11;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->b(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$11;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->b(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;

    move-result-object v1

    iget-object v1, v1, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;->profileImage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "https://ssl.pstatic.net/static/m/cafe/plug/default/gl_desktop_profile_dimg.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/viewer/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$11;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->b(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;

    move-result-object v1

    iget-object v1, v1, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;->profileImage:Ljava/lang/String;

    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$11;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->b(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;

    move-result-object v1

    iget-object v1, v1, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;->profileImage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$11;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->b(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;

    move-result-object v1

    iget-object v1, v1, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;->profileImage:Ljava/lang/String;

    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$11;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->b(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;

    move-result-object v2

    iget-object v2, v2, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;->profileImage:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "type=ff960_960_q50"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
